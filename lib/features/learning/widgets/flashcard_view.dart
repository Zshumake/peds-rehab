import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/models/flashcard_model.dart';
import '../../../core/theme/app_theme.dart';

class FlashcardView extends StatefulWidget {
  final List<Flashcard> cards;
  final String title;

  const FlashcardView({super.key, required this.cards, required this.title});

  @override
  State<FlashcardView> createState() => _FlashcardViewState();
}

class _FlashcardViewState extends State<FlashcardView> {
  int _currentIndex = 0;
  bool _showBack = false;
  int _knewIt = 0;
  int _needsWork = 0;

  Flashcard get _card => widget.cards[_currentIndex];
  bool get _isLast => _currentIndex >= widget.cards.length - 1;

  void _flip() => setState(() => _showBack = !_showBack);

  void _next(bool knew) {
    setState(() {
      if (knew) {
        _knewIt++;
      } else {
        _needsWork++;
      }
    });
    if (_isLast) {
      _showResults();
    } else {
      setState(() {
        _currentIndex++;
        _showBack = false;
      });
    }
  }

  void _showResults() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Text(
          'Session Complete!',
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            color: AppTheme.textDark,
          ),
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '$_knewIt',
                      style: GoogleFonts.quicksand(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: AppTheme.successGreen,
                      ),
                    ),
                    Text(
                      'Knew It',
                      style: GoogleFonts.dmSans(
                        fontSize: 13,
                        color: AppTheme.textMuted,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '$_needsWork',
                      style: GoogleFonts.quicksand(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: AppTheme.coral,
                      ),
                    ),
                    Text(
                      'Needs Work',
                      style: GoogleFonts.dmSans(
                        fontSize: 13,
                        color: AppTheme.textMuted,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () { Navigator.of(ctx).pop(); Navigator.of(context).pop(); },
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
                '${_currentIndex + 1}/${widget.cards.length}',
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
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: (_currentIndex + 1) / widget.cards.length,
                backgroundColor: const Color(0xFFE8DDD0),
                valueColor: const AlwaysStoppedAnimation(AppTheme.softTeal),
                minHeight: 8,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GestureDetector(
                onTap: _flip,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    key: ValueKey('$_currentIndex-$_showBack'),
                    width: double.infinity,
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: _showBack ? AppTheme.pearlBackground : AppTheme.warmCream,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: _showBack
                            ? AppTheme.sunshine.withValues(alpha: 0.4)
                            : const Color(0xFFE8DDD0),
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.mutedPurple.withValues(alpha: 0.08),
                          blurRadius: 20,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _showBack ? 'ANSWER' : 'QUESTION',
                          style: GoogleFonts.quicksand(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.5,
                            color: _showBack ? AppTheme.pearlText : AppTheme.textMuted,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          _showBack ? _card.back : _card.front,
                          style: GoogleFonts.dmSans(
                            fontSize: _showBack ? 18 : 17,
                            fontWeight: _showBack ? FontWeight.w700 : FontWeight.w500,
                            height: 1.5,
                            color: AppTheme.textDark,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        if (!_showBack) ...[
                          const SizedBox(height: 24),
                          Text(
                            'Tap to reveal answer',
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
                              color: AppTheme.textMuted,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (_showBack)
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => _next(false),
                      icon: const Icon(Icons.refresh_rounded, size: 18),
                      label: Text(
                        'Needs Work',
                        style: GoogleFonts.quicksand(fontWeight: FontWeight.w700),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.coral,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => _next(true),
                      icon: const Icon(Icons.check_rounded, size: 18),
                      label: Text(
                        'Knew It',
                        style: GoogleFonts.quicksand(fontWeight: FontWeight.w700),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.successGreen,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                ],
              )
            else
              const SizedBox(height: 52),
          ],
        ),
      ),
      ),
      ),
    );
  }
}
