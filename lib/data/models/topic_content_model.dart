import 'package:flutter/material.dart';

// --- Generic Block Types ---

abstract class ContentBlock {}

class HeaderBlock extends ContentBlock {
  final String title;
  HeaderBlock(this.title);
}

class TextBlock extends ContentBlock {
  final String text;
  final bool isIntro;
  TextBlock(this.text, {this.isIntro = false});
}

class PearlBlock extends ContentBlock {
  final String title;
  final String text;
  PearlBlock(this.title, this.text);
}

class BulletCardBlock extends ContentBlock {
  final String title;
  final Color themeColor;
  final Color backgroundColor;
  final List<String> points;
  BulletCardBlock({
    required this.title,
    required this.themeColor,
    required this.backgroundColor,
    required this.points,
  });
}

class NumberedListBlock extends ContentBlock {
  final List<MapEntry<String, String>> items;
  NumberedListBlock(this.items);
}

class TableBlock extends ContentBlock {
  final String title;
  final List<String> columns;
  final List<List<String>> rows;
  final Color? headerColor;
  TableBlock({
    required this.title,
    required this.columns,
    required this.rows,
    this.headerColor,
  });
}

class ComparisonCardBlock extends ContentBlock {
  final String title;
  final Color themeColor;
  final Color backgroundColor;
  final IconData icon;
  final String description;
  final List<String> keyPoints;

  ComparisonCardBlock({
    required this.title,
    required this.themeColor,
    required this.backgroundColor,
    required this.icon,
    required this.description,
    required this.keyPoints,
  });
}

class MnemonicBlock extends ContentBlock {
  final String mnemonic;
  final String explanation;
  MnemonicBlock(this.mnemonic, this.explanation);
}

class ScaleBlock extends ContentBlock {
  final String scaleName;
  final String description;
  final List<String> columns;
  final List<List<String>> rows;
  final String? boardPearl;
  ScaleBlock({
    required this.scaleName,
    required this.description,
    required this.columns,
    required this.rows,
    this.boardPearl,
  });
}

class MedicationCardBlock extends ContentBlock {
  final String name;
  final String drugClass;
  final String mechanism;
  final String indication;
  final String dosing;
  final String sideEffects;
  final String boardPearl;
  final bool isAvoid;

  MedicationCardBlock({
    required this.name,
    required this.drugClass,
    required this.mechanism,
    required this.indication,
    this.dosing = '',
    this.sideEffects = '',
    this.boardPearl = '',
    this.isAvoid = false,
  });
}

// --- Visual & Interactive Block Types ---

class ImageBlock extends ContentBlock {
  final String assetPath;
  final String? caption;
  final double? maxHeight;
  ImageBlock(this.assetPath, {this.caption, this.maxHeight});
}

class DiagramRegion {
  final String label;
  final String detail;
  final IconData? icon;
  final Color? color;
  DiagramRegion({
    required this.label,
    required this.detail,
    this.icon,
    this.color,
  });
}

class DiagramBlock extends ContentBlock {
  final String title;
  final Color themeColor;
  final List<DiagramRegion> regions;
  final int crossAxisCount;
  DiagramBlock({
    required this.title,
    required this.themeColor,
    required this.regions,
    this.crossAxisCount = 2,
  });
}

class FlowchartNode {
  final String label;
  final String? detail;
  final bool isDecision;
  final List<String>? branches;
  FlowchartNode({
    required this.label,
    this.detail,
    this.isDecision = false,
    this.branches,
  });
}

class FlowchartBlock extends ContentBlock {
  final String title;
  final Color themeColor;
  final List<FlowchartNode> nodes;
  FlowchartBlock({
    required this.title,
    required this.themeColor,
    required this.nodes,
  });
}

class TimelineEvent {
  final String time;
  final String label;
  final String? detail;
  final Color? color;
  final IconData? icon;
  TimelineEvent({
    required this.time,
    required this.label,
    this.detail,
    this.color,
    this.icon,
  });
}

class TimelineBlock extends ContentBlock {
  final String title;
  final List<TimelineEvent> events;
  TimelineBlock({required this.title, required this.events});
}

// Enum for bespoke custom widgets
enum CustomWidgetType {
  chromosomalSyndromesComparison,
  developmentalMilestonesTimeline,
  primitiveReflexTracker,
  limbDeficiencyClassification,
  hipExamManeuvers,
  scoliosisAssessment,
  nontraumaticHipDifferential,
  jiaSubtypeComparison,
  jiaManagementPyramid,
  sleCriteriaChecker,
  pediatricBurnCalculator,
  burnPositioningGuide,
  boneTumorLocationMap,
  pediatricGcsCalculator,
  gmfcsLevelGuide,
  cpClassificationTool,
  spasticityManagementLadder,
  functionalLevelByMotorLevel,
  orthoticSelectionGuide,
  muscularDystrophyComparison,
  smaTypesComparison,
  pediatricMedicationReference,
  orthoticDecisionTree,
  outcomeMeasuresComparison,
}

class CustomWidgetBlock extends ContentBlock {
  final CustomWidgetType type;
  CustomWidgetBlock(this.type);
}

// --- Tab and Topic Containers ---

class TopicTab {
  final String title;
  final List<ContentBlock> blocks;

  TopicTab({required this.title, required this.blocks});
}

class TopicData {
  final String id;
  final String title;
  final List<TopicTab> tabs;

  TopicData({required this.id, required this.title, required this.tabs});
}
