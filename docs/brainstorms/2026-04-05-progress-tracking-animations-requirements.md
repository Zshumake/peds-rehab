---
date: 2026-04-05
topic: progress-tracking-animations
---

# Module Progress Tracking + Subtle Animations

## Problem Frame
Residents studying in short bursts (5-15 min) have no way to see what they've covered. Every session feels like starting over. The app also feels static — no motion or transitions — making it feel like a PDF rather than a modern study tool.

## Requirements
- R1. When a user scrolls through all tabs of a module, mark that module as "completed" with a visible checkmark on the home screen tile.
- R2. Persist completion state across app restarts using SharedPreferences.
- R3. Show a completion count on the home screen (e.g., "3/14 completed" near the existing "14 Modules" pill).
- R4. Add smooth page transitions when navigating from home to module content (shared element or slide transition).
- R5. Add staggered fade-in animation on content blocks as the user scrolls (subtle, not flashy — blocks fade up as they enter the viewport).
- R6. Add a smooth tab-switch animation in the topic content view (crossfade or slide between tabs).

## Success Criteria
- User can see at a glance which modules they've studied
- Progress persists after closing and reopening the app
- Transitions feel smooth and intentional, not jarring or slow
- No animation takes longer than 300ms

## Scope Boundaries
- No quiz score tracking (deferred)
- No flashcard stats (deferred)
- No streak/XP/gamification (deferred)
- No cloud sync — local persistence only
- No per-tab completion — only whole-module completion

## Key Decisions
- **Module completion = scrolled all tabs**: Simplest heuristic. User must visit every tab to mark complete. No reading-time threshold.
- **SharedPreferences over SQLite**: Only storing 14 booleans. No need for a database.
- **Animations are CSS-level subtle**: Fade-in on scroll, crossfade on tab switch, slide on navigation. No Lottie, no complex choreography.

## Outstanding Questions

### Deferred to Planning
- [Affects R1][Technical] Best way to detect "user has visited all tabs" — track tab index changes in a Set?
- [Affects R5][Needs research] Whether to use `AnimatedList`, `flutter_staggered_animations`, or manual `AnimationController` for scroll-triggered fade-in

## Next Steps
-> /ce:plan for structured implementation planning
