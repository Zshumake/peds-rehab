import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/theme/app_theme.dart';
import '../../data/models/module_model.dart';
import '../../data/module_contents/genetics_chromosomal_content.dart';
import '../../data/module_contents/development_growth_content.dart';
import '../../data/module_contents/limb_deficiencies_content.dart';
import '../../data/module_contents/bones_joints_content.dart';
import '../../data/module_contents/connective_tissue_content.dart';
import '../../data/module_contents/pediatric_burns_content.dart';
import '../../data/module_contents/pediatric_cancers_content.dart';
import '../../data/module_contents/pediatric_neurotrauma_content.dart';
import '../../data/module_contents/cerebral_palsy_content.dart';
import '../../data/module_contents/spina_bifida_content.dart';
import '../../data/module_contents/neuromuscular_diseases_content.dart';
import '../../data/module_contents/peds_pharmacology_content.dart';
import '../../data/module_contents/orthotics_at_content.dart';
import '../../data/module_contents/rehab_continuum_content.dart';
import 'topic_content_view.dart';
import '../../data/models/topic_content_model.dart';

class ModuleContentScreen extends StatelessWidget {
  final ModuleModel module;

  const ModuleContentScreen({super.key, required this.module});

  TopicData? _getTopicData() {
    switch (module.id) {
      case 'genetics-chromosomal':
        return geneticsChromosomalContent;
      case 'development-growth':
        return developmentGrowthContent;
      case 'limb-deficiencies':
        return limbDeficienciesContent;
      case 'bones-joints':
        return bonesJointsContent;
      case 'connective-tissue':
        return connectiveTissueContent;
      case 'pediatric-burns':
        return pediatricBurnsContent;
      case 'pediatric-cancers':
        return pediatricCancersContent;
      case 'pediatric-neurotrauma':
        return pediatricNeurotraumaContent;
      case 'cerebral-palsy':
        return cerebralPalsyContent;
      case 'spina-bifida':
        return spinaBifidaContent;
      case 'neuromuscular-diseases':
        return neuromuscularDiseasesContent;
      case 'peds-pharmacology':
        return pedsPharmacologyContent;
      case 'orthotics-at':
        return orthoticsAtContent;
      case 'rehab-continuum':
        return rehabContinuumContent;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final topicData = _getTopicData();

    return Scaffold(
      backgroundColor: AppTheme.warmCream,
      appBar: AppBar(
        backgroundColor: AppTheme.warmCream,
        foregroundColor: AppTheme.textDark,
        elevation: 0,
        title: Text(
          module.title,
          style: GoogleFonts.quicksand(fontWeight: FontWeight.w700),
        ),
      ),
      body: topicData != null
          ? TopicContentView(topicData: topicData)
          : _buildComingSoon(),
    );
  }

  Widget _buildComingSoon() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.auto_awesome_rounded,
              size: 64,
              color: AppTheme.sunshine,
            ),
            const SizedBox(height: 16),
            Text(
              module.title,
              style: GoogleFonts.quicksand(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppTheme.textDark,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Content coming soon!',
              style: GoogleFonts.dmSans(
                fontSize: 16,
                color: AppTheme.textMuted,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              module.description,
              style: GoogleFonts.dmSans(
                fontSize: 14,
                color: AppTheme.textMuted,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
