import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/module_model.dart';
import '../../core/theme/app_theme.dart';

class ContentCard extends StatefulWidget {
  final ModuleModel module;
  final int index;
  final VoidCallback onTap;

  const ContentCard({
    super.key,
    required this.module,
    required this.index,
    required this.onTap,
  });

  @override
  State<ContentCard> createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pressController;
  late final Animation<double> _scaleAnimation;

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
    return colors[widget.index % colors.length];
  }

  IconData get _moduleIcon {
    final icons = [
      Icons.biotech_rounded,                // Genetics
      Icons.child_care_rounded,             // Development
      Icons.accessibility_new_rounded,      // Limb Deficiencies
      Icons.fitness_center_rounded,         // Bones & Joints
      Icons.healing_rounded,                // Connective Tissue
      Icons.local_fire_department_rounded,  // Burns
      Icons.medical_services_rounded,       // Cancers
      Icons.psychology_rounded,             // Neurotrauma
      Icons.wheelchair_pickup_rounded,      // Cerebral Palsy
      Icons.straighten_rounded,             // Spina Bifida
      Icons.electric_bolt_rounded,          // Neuromuscular
      Icons.medication_rounded,             // Pharmacology
      Icons.support_rounded,               // Orthotics
      Icons.trending_up_rounded,            // Rehab Continuum
    ];
    return icons[widget.index % icons.length];
  }

  @override
  void initState() {
    super.initState();
    _pressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.96).animate(
      CurvedAnimation(parent: _pressController, curve: Curves.easeOutCubic),
    );
  }

  @override
  void dispose() {
    _pressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: child,
        );
      },
      child: GestureDetector(
        onTap: widget.onTap,
        onTapDown: (_) => _pressController.forward(),
        onTapUp: (_) => _pressController.reverse(),
        onTapCancel: () => _pressController.reverse(),
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.getModuleTint(widget.index),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: _moduleColor.withValues(alpha: 0.12),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: _moduleColor.withValues(alpha: 0.08),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top row: icon + module number
              Row(
                children: [
                  // Small icon badge
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: _moduleColor.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      _moduleIcon,
                      color: _moduleColor,
                      size: 20,
                    ),
                  ),
                  const Spacer(),
                  // Module number
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: _moduleColor.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${widget.index + 1}',
                      style: GoogleFonts.dmSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: _moduleColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Module title
              Text(
                widget.module.title,
                style: GoogleFonts.quicksand(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.textDark,
                  height: 1.3,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),
              // Description (1 line)
              Text(
                widget.module.description,
                style: GoogleFonts.dmSans(
                  fontSize: 10,
                  color: AppTheme.textMuted,
                  height: 1.3,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              // Highlight tags
              if (widget.module.highlights.isNotEmpty)
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: widget.module.highlights.take(2).map((tag) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: _moduleColor.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        tag,
                        style: GoogleFonts.dmSans(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: _moduleColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  }).toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
