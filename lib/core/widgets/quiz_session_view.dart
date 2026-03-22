import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/quiz_model.dart';
import '../theme/app_theme.dart';

class QuizSessionView extends StatefulWidget {
  final List<QuizQuestion> questions;
  final String title;

  const QuizSessionView({
    super.key,
    required this.questions,
    required this.title,
  });

  @override
  State<QuizSessionView> createState() => _QuizSessionViewState();
}

class _QuizSessionViewState extends State<QuizSessionView> {
  int _currentIndex = 0;
  int? _selectedIndex;
  bool _answered = false;
  int _correct = 0;
  int _total = 0;

  QuizQuestion get _currentQuestion => widget.questions[_currentIndex];
  bool get _isLastQuestion => _currentIndex >= widget.questions.length - 1;

  void _selectAnswer(int index) {
    if (_answered) return;
    setState(() {
      _selectedIndex = index;
      _answered = true;
      _total++;
      if (index == _currentQuestion.correctIndex) _correct++;
    });
  }

  void _nextQuestion() {
    if (_isLastQuestion) {
      _showResults();
      return;
    }
    setState(() {
      _currentIndex++;
      _selectedIndex = null;
      _answered = false;
    });
  }

  void _showResults() {
    final percentage = ((_correct / _total) * 100).round();
    final passed = _correct / _total >= 0.7;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              passed ? Icons.celebration_rounded : Icons.fitness_center_rounded,
              color: passed ? AppTheme.sunshine : AppTheme.coral,
              size: 28,
            ),
            const SizedBox(width: 8),
            Text(
              'Quiz Complete!',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w700,
                color: AppTheme.textDark,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$_correct / $_total',
              style: GoogleFonts.quicksand(
                fontSize: 56,
                fontWeight: FontWeight.w800,
                color: AppTheme.textDark,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '$percentage% correct',
              style: GoogleFonts.dmSans(
                fontSize: 18,
                color: passed ? AppTheme.mintGreen : AppTheme.coral,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.of(context).pop();
            },
            child: Text(
              'Done',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w700,
                color: AppTheme.coral,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getOptionColor(int index) {
    if (!_answered) return AppTheme.warmCream;
    if (index == _currentQuestion.correctIndex) return const Color(0xFFD1FAE5);
    if (index == _selectedIndex) return const Color(0xFFFEE2E2);
    return AppTheme.warmCream;
  }

  Color _getOptionBorderColor(int index) {
    if (!_answered) {
      return index == _selectedIndex
          ? AppTheme.coral
          : const Color(0xFFE8DDD0);
    }
    if (index == _currentQuestion.correctIndex) return AppTheme.softTeal;
    if (index == _selectedIndex) return AppTheme.coral;
    return const Color(0xFFE8DDD0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.warmCream,
      appBar: AppBar(
        backgroundColor: AppTheme.warmCream,
        foregroundColor: AppTheme.textDark,
        elevation: 0,
        title: Text(
          widget.title,
          style: GoogleFonts.quicksand(fontWeight: FontWeight.w700),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                '${_currentIndex + 1}/${widget.questions.length}',
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textMuted,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: (_currentIndex + 1) / widget.questions.length,
                backgroundColor: const Color(0xFFE8DDD0),
                valueColor: const AlwaysStoppedAnimation(AppTheme.softTeal),
                minHeight: 8,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              _currentQuestion.question,
              style: GoogleFonts.dmSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 1.4,
                color: AppTheme.textDark,
              ),
            ),
            const SizedBox(height: 20),
            ...List.generate(_currentQuestion.options.length, (i) {
              return GestureDetector(
                onTap: () => _selectAnswer(i),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: _getOptionColor(i),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: _getOptionBorderColor(i),
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: !_answered
                              ? const Color(0xFFE8DDD0).withValues(alpha: 0.5)
                              : i == _currentQuestion.correctIndex
                                  ? AppTheme.softTeal.withValues(alpha: 0.15)
                                  : i == _selectedIndex
                                      ? AppTheme.coral.withValues(alpha: 0.15)
                                      : const Color(0xFFE8DDD0).withValues(alpha: 0.5),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          String.fromCharCode(65 + i),
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: !_answered
                                ? AppTheme.textMuted
                                : i == _currentQuestion.correctIndex
                                    ? AppTheme.softTeal
                                    : i == _selectedIndex
                                        ? AppTheme.coral
                                        : AppTheme.textMuted,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _currentQuestion.options[i],
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            height: 1.4,
                            color: AppTheme.textDark,
                          ),
                        ),
                      ),
                      if (_answered && i == _currentQuestion.correctIndex)
                        const Icon(Icons.check_circle, color: AppTheme.successGreen, size: 22),
                      if (_answered &&
                          i == _selectedIndex &&
                          i != _currentQuestion.correctIndex)
                        const Icon(Icons.cancel, color: AppTheme.dangerRed, size: 22),
                    ],
                  ),
                ),
              );
            }),
            if (_answered) ...[
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppTheme.pearlBackground,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppTheme.pearlBorder),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.auto_awesome_rounded, color: AppTheme.sunshine, size: 18),
                        const SizedBox(width: 8),
                        Text(
                          'Explanation',
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w700,
                            color: AppTheme.pearlText,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _currentQuestion.explanation,
                      style: GoogleFonts.dmSans(
                        fontSize: 13,
                        height: 1.5,
                        color: AppTheme.pearlText,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _nextQuestion,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.coral,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    _isLastQuestion ? 'See Results' : 'Next Question',
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
