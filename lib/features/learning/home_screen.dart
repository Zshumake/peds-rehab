import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/module_data.dart';
import '../../data/quiz_banks/peds_rehab_quiz_bank.dart';
import '../../core/theme/app_theme.dart';
import '../../core/widgets/content_card.dart';
import '../../core/widgets/quiz_session_view.dart';
import '../../core/services/progress_service.dart';
import 'module_content_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const double _maxWidth = 720;
  Set<String> _completedModules = {};

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final completed = await ProgressService.getCompletedModules();
    if (mounted) setState(() => _completedModules = completed);
  }

  Widget _centered(Widget child) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: _maxWidth),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final modules = ModuleData.standardModules;
    final completedCount = _completedModules.length;

    return Scaffold(
      backgroundColor: AppTheme.warmCream,
      body: CustomScrollView(
        slivers: [
          // ── Header ───────────────────────────────────────────────────
          SliverAppBar(
            expandedHeight: 220,
            pinned: true,
            backgroundColor: AppTheme.warmCream,
            surfaceTintColor: Colors.transparent,
            scrolledUnderElevation: 0.5,
            title: Text(
              'Peds Rehab',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: AppTheme.textDark,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: AppTheme.warmCream,
                child: Stack(
                  children: [
                    Positioned(top: 40, right: 30,
                      child: Container(width: 80, height: 80,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.softTeal.withValues(alpha: 0.1)))),
                    Positioned(top: 90, right: 100,
                      child: Container(width: 40, height: 40,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.bubblegumPink.withValues(alpha: 0.12)))),
                    Positioned(top: 60, left: 20,
                      child: Container(width: 60, height: 60,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.coral.withValues(alpha: 0.15)))),
                    SafeArea(
                      child: _centered(
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 40),
                              Text('Peds Rehab', style: GoogleFonts.quicksand(fontSize: 34, fontWeight: FontWeight.w800, color: AppTheme.textDark)),
                              const SizedBox(height: 6),
                              Text('Board Review Training', style: GoogleFonts.dmSans(fontSize: 14, color: AppTheme.textMuted)),
                              const SizedBox(height: 14),
                              Row(
                                children: [
                                  // Modules pill
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: AppTheme.mutedPurple.withValues(alpha: 0.15),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text('${modules.length} Modules',
                                      style: GoogleFonts.dmSans(fontSize: 12, fontWeight: FontWeight.w600, color: AppTheme.mutedPurple)),
                                  ),
                                  const SizedBox(width: 8),
                                  // Progress pill
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: completedCount > 0
                                          ? AppTheme.softTeal.withValues(alpha: 0.15)
                                          : AppTheme.sunshine.withValues(alpha: 0.2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          completedCount > 0 ? Icons.check_circle_rounded : Icons.star_rounded,
                                          size: 14,
                                          color: completedCount > 0 ? AppTheme.softTeal : const Color(0xFF92400E),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          completedCount > 0
                                              ? '$completedCount/${modules.length} Complete'
                                              : 'Board Ready',
                                          style: GoogleFonts.dmSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: completedCount > 0 ? AppTheme.softTeal : const Color(0xFF92400E),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ── Quiz button ──────────────────────────────────────────────
          SliverToBoxAdapter(
            child: _centered(
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                child: GestureDetector(
                  onTap: () {
                    final questions = PedsRehabQuizBank.getRandomQuiz(10);
                    if (questions.isNotEmpty) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) => QuizSessionView(questions: questions, title: 'Board Review Quiz'),
                      ));
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [AppTheme.coral, Color(0xFFFF8A80)]),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: AppTheme.coral.withValues(alpha: 0.2), blurRadius: 12, offset: const Offset(0, 4))],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 44, height: 44,
                          decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(14)),
                          child: const Icon(Icons.quiz_rounded, color: Colors.white, size: 24),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Board Review Quiz', style: GoogleFonts.quicksand(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white)),
                              const SizedBox(height: 2),
                              Text('238 questions across all topics', style: GoogleFonts.dmSans(fontSize: 12, color: Colors.white70)),
                            ],
                          ),
                        ),
                        const Icon(Icons.auto_awesome_rounded, color: Colors.white70, size: 20),
                        const SizedBox(width: 4),
                        const Icon(Icons.arrow_forward_rounded, color: Colors.white70),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // ── Flashcards + Podcasts ────────────────────────────────────
          SliverToBoxAdapter(
            child: _centered(
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: AppTheme.warmCream,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFE8DDD0)),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.style_rounded, color: AppTheme.sunshine, size: 22),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Flashcards', style: GoogleFonts.quicksand(fontSize: 14, fontWeight: FontWeight.w700, color: AppTheme.textDark)),
                                  Text('Coming soon', style: GoogleFonts.dmSans(fontSize: 11, color: AppTheme.textMuted)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: AppTheme.warmCream,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFE8DDD0)),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.headset_rounded, color: AppTheme.bubblegumPink, size: 22),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Podcasts', style: GoogleFonts.quicksand(fontSize: 14, fontWeight: FontWeight.w700, color: AppTheme.textDark)),
                                  Text('Coming soon', style: GoogleFonts.dmSans(fontSize: 11, color: AppTheme.textMuted)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ── Learning Pathway header ──────────────────────────────────
          SliverToBoxAdapter(
            child: _centered(
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.auto_awesome_rounded, color: AppTheme.sunshine, size: 20),
                        const SizedBox(width: 8),
                        Text('Learning Pathway', style: GoogleFonts.quicksand(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textDark)),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Text('Tap a module to start learning', style: GoogleFonts.dmSans(fontSize: 12, color: AppTheme.textMuted)),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ── Module grid ──────────────────────────────────────────────
          SliverToBoxAdapter(
            child: _centered(
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 32),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 320,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    mainAxisExtent: 160,
                  ),
                  itemCount: modules.length,
                  itemBuilder: (context, index) {
                    final module = modules[index];
                    final isComplete = _completedModules.contains(module.id);
                    return ContentCard(
                      module: module,
                      index: index,
                      isComplete: isComplete,
                      onTap: () async {
                        await Navigator.push(context, PageRouteBuilder(
                          pageBuilder: (_, anim, secondAnim) => ModuleContentScreen(module: module, moduleIndex: index),
                          transitionsBuilder: (_, anim, secondAnim, child) {
                            return FadeTransition(opacity: anim, child: child);
                          },
                          transitionDuration: const Duration(milliseconds: 250),
                        ));
                        _loadProgress(); // refresh checkmarks when returning
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
