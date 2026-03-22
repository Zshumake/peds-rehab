import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/module_model.dart';
import '../../core/theme/app_theme.dart';

class ContentCard extends StatelessWidget {
  final ModuleModel module;
  final int index;
  final VoidCallback onTap;

  const ContentCard({
    super.key,
    required this.module,
    required this.index,
    required this.onTap,
  });

  Color get _moduleColor {
    final colors = [
      AppTheme.geneticsColor,
      AppTheme.developmentColor,
      AppTheme.limbDeficienciesColor,
      AppTheme.bonesJointsColor,
      AppTheme.connectiveTissueColor,
      AppTheme.burnsColor,
      AppTheme.cancersColor,
      AppTheme.neurotraumaColor,
      AppTheme.cerebralPalsyColor,
      AppTheme.spinaBifidaColor,
      AppTheme.neuromuscularColor,
      AppTheme.pharmacologyColor,
      AppTheme.orthoticsColor,
      AppTheme.rehabContinuumColor,
    ];
    return colors[index % colors.length];
  }

  IconData get _moduleIcon {
    final icons = [
      Icons.biotech_rounded, // Genetics
      Icons.child_care_rounded, // Development
      Icons.accessibility_new_rounded, // Limb Deficiencies
      Icons.fitness_center_rounded, // Bones & Joints
      Icons.healing_rounded, // Connective Tissue
      Icons.local_fire_department_rounded, // Burns
      Icons.medical_services_rounded, // Cancers
      Icons.psychology_rounded, // Neurotrauma
      Icons.wheelchair_pickup_rounded, // Cerebral Palsy
      Icons.straighten_rounded, // Spina Bifida
      Icons.electric_bolt_rounded, // Neuromuscular
      Icons.medication_rounded, // Pharmacology
      Icons.support_rounded, // Orthotics
      Icons.trending_up_rounded, // Rehab Continuum
    ];
    return icons[index % icons.length];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.getModuleTint(index),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: _moduleColor.withValues(alpha:0.15),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Module number badge — top-right
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: _moduleColor.withValues(alpha:0.15),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  '${index + 1}',
                  style: GoogleFonts.dmSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: _moduleColor,
                  ),
                ),
              ),
            ),
            const Spacer(),
            // Icon container
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: _moduleColor.withValues(alpha:0.15),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                _moduleIcon,
                color: _moduleColor,
                size: 36,
              ),
            ),
            const SizedBox(height: 12),
            // Module title
            Text(
              module.title,
              style: GoogleFonts.quicksand(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppTheme.textDark,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            // First highlight tag pill
            if (module.highlights.isNotEmpty)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: _moduleColor.withValues(alpha:0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  module.highlights.first,
                  style: GoogleFonts.dmSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: _moduleColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
