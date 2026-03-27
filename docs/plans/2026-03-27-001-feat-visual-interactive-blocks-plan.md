---
title: "feat: Visual & Interactive Content Blocks"
type: feat
status: active
date: 2026-03-27
origin: docs/brainstorms/2026-03-27-visual-interactive-blocks-requirements.md
---

# Visual & Interactive Content Blocks

## Overview

Add 4 new visual content block types to break up text walls and create an interactive learning experience. Currently all 11 block types are text-based — modules feel like reading a textbook. These new blocks add images, tappable diagrams, decision-tree flowcharts, and scrollable timelines directly into module content.

## Problem Statement

The app has ~96K words of board-verified medical content across 14 modules, but it's presented as dense scrolling text with only color variation for visual relief. Residents disengage quickly. Visual breaks every 3-4 scroll screens and interactive elements are needed to maximize retention.

## Proposed Solution

Add 4 new `ContentBlock` subclasses to the existing polymorphic block system, with corresponding renderers in `topic_content_view.dart`. All blocks are data-driven using the same `TopicData` → `TopicTab` → `ContentBlock` pattern. Zero new dependencies.

(see origin: `docs/brainstorms/2026-03-27-visual-interactive-blocks-requirements.md`)

## Implementation Phases

### Phase 1: Data Model + ImageBlock (~30 min)

**Files to modify:**
- `lib/data/models/topic_content_model.dart` — add 4 new block classes
- `lib/features/learning/topic_content_view.dart` — add 4 new renderer methods + dispatcher entries

**New block classes:**

```dart
// topic_content_model.dart — add after MedicationCardBlock

class ImageBlock extends ContentBlock {
  final String assetPath;      // e.g., 'assets/images/module-02-development/milestones-0-12mo.png'
  final String? caption;       // Optional caption text below image
  final double? maxHeight;     // Optional max height constraint (default: 300)
  ImageBlock(this.assetPath, {this.caption, this.maxHeight});
}

class DiagramBlock extends ContentBlock {
  final String title;
  final Color themeColor;
  final List<DiagramRegion> regions;  // Tappable regions
  final int crossAxisCount;           // Grid columns (default: 2)
  DiagramBlock({
    required this.title,
    required this.themeColor,
    required this.regions,
    this.crossAxisCount = 2,
  });
}

class DiagramRegion {
  final String label;           // Short label shown on the tile
  final String detail;          // Full text shown in bottom sheet
  final IconData? icon;         // Optional icon
  final Color? color;           // Optional custom color
  DiagramRegion({
    required this.label,
    required this.detail,
    this.icon,
    this.color,
  });
}

class FlowchartBlock extends ContentBlock {
  final String title;
  final Color themeColor;
  final List<FlowchartNode> nodes;    // Ordered top-to-bottom
  FlowchartBlock({
    required this.title,
    required this.themeColor,
    required this.nodes,
  });
}

class FlowchartNode {
  final String label;           // Node title
  final String? detail;         // Expandable detail text
  final bool isDecision;        // Diamond shape vs rectangle
  final List<String>? branches; // For decision nodes: ["Yes", "No"]
  FlowchartNode({
    required this.label,
    this.detail,
    this.isDecision = false,
    this.branches,
  });
}

class TimelineBlock extends ContentBlock {
  final String title;
  final List<TimelineEvent> events;   // Ordered by time
  TimelineBlock({required this.title, required this.events});
}

class TimelineEvent {
  final String time;            // e.g., "4 mo", "12 mo", "2 yr"
  final String label;           // e.g., "Sits independently"
  final String? detail;         // Optional expanded description
  final Color? color;           // Domain color coding
  final IconData? icon;
  TimelineEvent({
    required this.time,
    required this.label,
    this.detail,
    this.color,
    this.icon,
  });
}
```

**Renderer methods to add in `topic_content_view.dart`:**

```
_buildImage(ImageBlock block)        → Image.asset with rounded corners, caption, fade-in
_buildDiagram(DiagramBlock block)    → GridView of tappable tiles, onTap → showModalBottomSheet
_buildFlowchart(FlowchartBlock block) → Column of connected nodes with vertical lines
_buildTimeline(TimelineBlock block)  → SingleChildScrollView horizontal with positioned nodes
```

**Dispatcher additions (add to `_buildBlock`):**
```dart
if (block is ImageBlock) return _buildImage(block);
if (block is DiagramBlock) return _buildDiagram(block);
if (block is FlowchartBlock) return _buildFlowchart(block);
if (block is TimelineBlock) return _buildTimeline(block);
```

### Phase 2: Render Implementations (~1.5 hr)

#### ImageBlock Renderer
- `ClipRRect` with `borderRadius: 16`
- `Image.asset(block.assetPath, fit: BoxFit.contain)`
- `ConstrainedBox` with `maxHeight: block.maxHeight ?? 300`
- Optional `Text` caption below in `GoogleFonts.dmSans(fontSize: 12, color: textMuted, fontStyle: italic)`
- Wrap in `FadeInImage` pattern or `AnimatedOpacity` for subtle load animation

#### DiagramBlock Renderer
- Title header bar (same style as TableBlock header — coral background, white text)
- `GridView.count(crossAxisCount: block.crossAxisCount)` of tappable tiles
- Each tile: `GestureDetector` → `Container` with rounded corners, label centered, subtle border
- On tap: `showModalBottomSheet` with region label as title, detail as body, optional icon
- Tile colors cycle through pastel tints or use `region.color`

#### FlowchartBlock Renderer
- Title header bar
- `Column` of `FlowchartNodeWidget` connected by vertical `Container(width: 3, height: 24, color: themeColor)`
- Regular nodes: rounded rectangle with label, tappable to expand detail
- Decision nodes: rotated `Container` (diamond shape via `Transform.rotate` or `CustomPaint`)
- Branch labels ("Yes"/"No") shown as small chips on connector lines
- Expanded detail slides down with `AnimatedCrossFade`

#### TimelineBlock Renderer
- Title header
- `SingleChildScrollView(scrollDirection: Axis.horizontal)` containing a `Row`
- Each event: vertical column with circle node + connecting horizontal line
- Circle: 16px diameter with domain color fill
- Below circle: time label (bold) + event label (regular)
- Tappable circles → `showModalBottomSheet` for detail view
- Horizontal line connects circles, dashed between nodes

### Phase 3: Wire Into Content Data (~2 hr)

Add visual blocks into existing content files. Priority modules (highest visual impact):

| Module | Blocks to Add | What |
|--------|--------------|------|
| `development_growth_content.dart` | 2× ImageBlock, 1× TimelineBlock | Existing milestone images + milestone timeline |
| `cerebral_palsy_content.dart` | 1× FlowchartBlock, 1× DiagramBlock | Spasticity management ladder + GMFCS level diagram |
| `spina_bifida_content.dart` | 1× DiagramBlock, 1× FlowchartBlock | Spinal level → function diagram + shunt workup flowchart |
| `bones_joints_content.dart` | 1× FlowchartBlock | DDH workup algorithm |
| `pediatric_burns_content.dart` | 1× DiagramBlock | Lund-Browder body regions |
| `neuromuscular_diseases_content.dart` | 1× TimelineBlock | DMD disease progression timeline |
| `connective_tissue_content.dart` | 1× FlowchartBlock | JIA treatment escalation |
| `pediatric_neurotrauma_content.dart` | 1× FlowchartBlock | Concussion return-to-play protocol |

**Target: 14 visual blocks across 8 modules** — ensures every heavily-used module has 1-2 visual breaks.

### Phase 4: Verify & Polish (~30 min)

- `flutter analyze lib/` — zero errors
- Run app on macOS and spot-check each module with new visual blocks
- Verify interactive elements (diagram taps → bottom sheet, flowchart expand/collapse, timeline scroll)
- Check that images render at correct size without GPU memory issues

## Acceptance Criteria

- [ ] 4 new block types compile and render correctly
- [ ] ImageBlock renders existing milestone images with captions
- [ ] DiagramBlock tiles are tappable with bottom sheet detail view
- [ ] FlowchartBlock shows connected nodes with expand/collapse
- [ ] TimelineBlock scrolls horizontally with domain-colored nodes
- [ ] At least 8 modules have visual blocks wired into content
- [ ] Zero new dependencies added
- [ ] `flutter analyze lib/` passes with no errors
- [ ] App runs cleanly on macOS

## Scope Boundaries

- No inline quizzes or active recall (Tier 2 — future)
- No spaced repetition or progress tracking (Tier 3 — future)
- No network-loaded images — assets only
- No SVG rendering — grid-based diagrams using Flutter widgets
- No graph layout library — simple vertical flowcharts

## Dependencies & Risks

- **Low risk:** Pure additive change — new block types don't affect existing blocks
- **Image assets:** Only 2 images exist currently. More can be generated later with `scripts/generate_images.py`
- **Diagram data:** Each diagram needs manually authored region data in Dart content files

## Sources & References

- **Origin document:** [docs/brainstorms/2026-03-27-visual-interactive-blocks-requirements.md](docs/brainstorms/2026-03-27-visual-interactive-blocks-requirements.md) — Key decisions: pure Flutter, data-driven blocks, bottom sheet for details
- **Existing pattern:** `lib/data/models/topic_content_model.dart` — ContentBlock abstract class
- **Existing renderer:** `lib/features/learning/topic_content_view.dart` — `_buildBlock` dispatcher
- **Existing images:** `assets/images/module-02-development/milestones-0-12mo.png`, `primitive-reflexes.png`
