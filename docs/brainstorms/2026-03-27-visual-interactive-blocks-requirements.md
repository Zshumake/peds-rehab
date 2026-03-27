---
date: 2026-03-27
topic: visual-interactive-blocks
---

# Visual & Interactive Content Blocks

## Problem Frame
The app currently has 11 content block types that are almost entirely text-based. Modules feel like reading a textbook chapter — walls of text with only color variation and small icons for visual relief. This is the #1 reason residents stop using study apps. The user wants visual breaks, interactive elements, and a learning experience that feels nothing like a textbook.

## Requirements

- R1. **ImageBlock** — Render inline medical illustrations from `assets/images/` within module content. Support optional caption text. Images should be rounded corners, full-width with constrained max height, and load with a subtle fade-in animation. Use `ResizeImage` to cap decoded pixel size for GPU memory efficiency.

- R2. **DiagramBlock** — Interactive tappable diagrams rendered as a grid of labeled regions. When a user taps a region, a bottom sheet slides up with detailed information about that region. Use cases: spinal levels → functional outcomes (spina bifida), body regions → burn TBSA percentages (Lund-Browder), skeleton → bone tumor locations, brachial plexus roots → innervation patterns.

- R3. **FlowchartBlock** — Step-by-step decision trees and management algorithms rendered as a vertical node-and-connector layout. Each node is tappable to expand details. Use cases: spasticity management ladder, DDH workup algorithm, CP early detection pathway, JIA treatment escalation, concussion return-to-play protocol.

- R4. **TimelineBlock** — Horizontal scrollable timeline with nodes at specific time points. Each node shows a milestone, event, or transition. Supports domain color-coding (gross motor = coral, fine motor = teal, language = purple, social = yellow). Use cases: developmental milestones 0-5 years, primitive reflex emergence/integration, DMD disease progression, SMA type comparison by onset age.

## Scope Boundaries
- No backend or server-side changes — all data is local/static
- No spaced repetition or progress tracking in this pass (Tier 3)
- No inline quizzes or active recall blocks in this pass (Tier 2)
- Images must be pre-generated assets, not loaded from network
- Diagrams use a data-driven grid layout, not actual SVG files
- Flowcharts are vertical node layouts, not full graph rendering libraries

## Success Criteria
- Each module has at least 2-3 visual blocks breaking up text sections
- A resident scrolling through a module sees images, diagrams, or timelines every ~3-4 scroll screens
- Visual blocks are interactive where appropriate (tappable regions, expandable nodes)
- Zero additional dependencies added (pure Flutter widgets)
- App compiles and runs cleanly on macOS/iOS/Android/web

## Key Decisions
- **Pure Flutter implementation**: No external packages for diagrams/flowcharts — custom widgets using standard Flutter layout (Column, Row, Stack, GestureDetector). Keeps dependencies minimal and bundle small.
- **Data-driven blocks**: All visual blocks are defined in Dart content files using the same TopicData/TopicTab/ContentBlock pattern. No special rendering pipelines.
- **Bottom sheet for details**: Tapping interactive elements shows a `showModalBottomSheet` with rich content, not inline expansion (keeps scroll position stable).

## Deferred to Planning
- [Affects R2] How many diagram variants are needed? (body diagram, skeleton, spine, plexus)
- [Affects R3] How many flowcharts to build for the initial pass?
- [Affects R4] Should timeline support pinch-to-zoom or just horizontal scroll?

## Next Steps
→ `/ce:plan` for structured implementation planning
