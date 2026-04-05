import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/topic_content_model.dart';
import '../../core/theme/app_theme.dart';

class TopicContentView extends StatefulWidget {
  final TopicData topicData;
  final VoidCallback? onAllTabsVisited;

  const TopicContentView({super.key, required this.topicData, this.onAllTabsVisited});

  @override
  State<TopicContentView> createState() => _TopicContentViewState();
}

class _TopicContentViewState extends State<TopicContentView> with TickerProviderStateMixin {
  late TabController _tabController;
  late Set<int> _visitedTabs;
  bool _allVisited = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.topicData.tabs.length, vsync: this);
    _visitedTabs = {0}; // first tab is visible on load
    _tabController.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    setState(() {
      _visitedTabs.add(_tabController.index);
    });
    if (!_allVisited && _visitedTabs.length >= widget.topicData.tabs.length) {
      _allVisited = true;
      widget.onAllTabsVisited?.call();
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          isScrollable: widget.topicData.tabs.length > 3,
          labelColor: AppTheme.coral,
          unselectedLabelColor: AppTheme.textMuted,
          indicatorColor: AppTheme.coral,
          indicatorWeight: 3,
          labelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 14),
          unselectedLabelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w500, fontSize: 14),
          tabs: widget.topicData.tabs.asMap().entries.map((e) {
            final visited = _visitedTabs.contains(e.key);
            return Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(e.value.title),
                  if (visited) ...[
                    const SizedBox(width: 4),
                    Icon(Icons.check_circle_rounded, size: 14,
                      color: AppTheme.softTeal.withValues(alpha: 0.7)),
                  ],
                ],
              ),
            );
          }).toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.topicData.tabs.map((tab) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemCount: tab.blocks.length,
                itemBuilder: (ctx, index) {
                  return Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 720),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: _buildBlock(ctx, tab.blocks[index]),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildBlock(BuildContext context, ContentBlock block) {
    if (block is HeaderBlock) return _buildHeader(block);
    if (block is TextBlock) return _buildText(block);
    if (block is PearlBlock) return _buildPearl(block);
    if (block is BulletCardBlock) return _buildBulletCard(block);
    if (block is TableBlock) return _buildTable(block);
    if (block is MnemonicBlock) return _buildMnemonic(block);
    if (block is NumberedListBlock) return _buildNumberedList(block);
    if (block is MedicationCardBlock) return _buildMedicationCard(block);
    if (block is ComparisonCardBlock) return _buildComparisonCard(block);
    if (block is ScaleBlock) return _buildScaleBlock(block);
    if (block is ImageBlock) return _buildImage(block);
    if (block is DiagramBlock) return _buildDiagram(context, block);
    if (block is FlowchartBlock) return _buildFlowchart(block);
    if (block is TimelineBlock) return _buildTimeline(context, block);
    return const SizedBox.shrink();
  }

  // ── Header ──────────────────────────────────────────────────────────────
  Widget _buildHeader(HeaderBlock block) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 12),
      child: Text(
        block.title,
        style: GoogleFonts.quicksand(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: AppTheme.coral,
        ),
      ),
    );
  }

  // ── Text ─────────────────────────────────────────────────────────────────
  Widget _buildText(TextBlock block) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        block.text,
        style: block.isIntro
            ? GoogleFonts.dmSans(
                fontSize: 16,
                height: 1.6,
                color: AppTheme.textDark,
                fontStyle: FontStyle.italic,
              )
            : GoogleFonts.dmSans(
                fontSize: 15,
                height: 1.6,
                color: AppTheme.textDark,
              ),
      ),
    );
  }

  // ── Pearl ────────────────────────────────────────────────────────────────
  Widget _buildPearl(PearlBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.pearlBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.pearlBorder, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.auto_awesome_rounded, color: AppTheme.sunshine, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  block.title,
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.pearlText,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            block.text,
            style: GoogleFonts.dmSans(
              fontSize: 14,
              height: 1.5,
              color: AppTheme.pearlText,
            ),
          ),
        ],
      ),
    );
  }

  // ── Bullet Card ──────────────────────────────────────────────────────────
  Widget _buildBulletCard(BulletCardBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: block.backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: block.themeColor.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            block.title,
            style: GoogleFonts.quicksand(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: block.themeColor,
            ),
          ),
          const SizedBox(height: 10),
          ...block.points.map((point) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 7),
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: block.themeColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        point,
                        style: GoogleFonts.dmSans(fontSize: 14, height: 1.5),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  // ── Table (FULL WIDTH) ───────────────────────────────────────────────────
  Widget _buildTable(TableBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8DDD0)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (block.title.isNotEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: block.headerColor ?? AppTheme.coral,
              child: Text(
                block.title,
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          // Header row
          Container(
            color: const Color(0xFFF5F0E8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: block.columns.map((col) {
                return Expanded(
                  child: Text(
                    col,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: AppTheme.textDark,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          // Data rows
          ...block.rows.asMap().entries.map((entry) {
            final isEven = entry.key % 2 == 0;
            return Container(
              color: isEven ? Colors.white : const Color(0xFFFCFAF7),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: entry.value.map((cell) {
                  return Expanded(
                    child: Text(
                      cell,
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        color: AppTheme.textDark,
                        height: 1.4,
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }),
        ],
      ),
    );
  }

  // ── Mnemonic ─────────────────────────────────────────────────────────────
  Widget _buildMnemonic(MnemonicBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.mnemonicBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.mnemonicBorder, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.psychology_alt_rounded, color: AppTheme.bubblegumPink, size: 22),
              const SizedBox(width: 8),
              Text(
                'Memory Aid',
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.mnemonicText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            block.mnemonic,
            style: GoogleFonts.quicksand(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: AppTheme.mnemonicText,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            block.explanation,
            style: GoogleFonts.dmSans(
              fontSize: 14,
              height: 1.5,
              color: AppTheme.mnemonicText,
            ),
          ),
        ],
      ),
    );
  }

  // ── Numbered List ────────────────────────────────────────────────────────
  Widget _buildNumberedList(NumberedListBlock block) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: block.items.map((item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppTheme.coral.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    item.key,
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.coral,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    item.value,
                    style: GoogleFonts.dmSans(fontSize: 14, height: 1.5),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  // ── Medication Card ──────────────────────────────────────────────────────
  Widget _buildMedicationCard(MedicationCardBlock block) {
    final borderColor = block.isAvoid ? AppTheme.avoidBorder : AppTheme.mutedPurple;
    final bgColor = block.isAvoid ? AppTheme.avoidBackground : const Color(0xFFF5F3FF);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor.withValues(alpha: 0.4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                block.isAvoid ? Icons.do_not_disturb_rounded : Icons.check_circle_rounded,
                color: borderColor,
                size: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${block.name} (${block.drugClass})',
                  style: GoogleFonts.quicksand(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: borderColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          _medField('Mechanism', block.mechanism),
          _medField('Indication', block.indication),
          if (block.dosing.isNotEmpty) _medField('Dosing', block.dosing),
          if (block.sideEffects.isNotEmpty) _medField('Side Effects', block.sideEffects),
          if (block.boardPearl.isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.pearlBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '⭐ ${block.boardPearl}',
                style: GoogleFonts.dmSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: AppTheme.pearlText,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _medField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$label: ',
              style: GoogleFonts.dmSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppTheme.textDark,
              ),
            ),
            TextSpan(
              text: value,
              style: GoogleFonts.dmSans(
                fontSize: 14,
                color: AppTheme.textDark,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Comparison Card ──────────────────────────────────────────────────────
  Widget _buildComparisonCard(ComparisonCardBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: block.backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: block.themeColor.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(block.icon, color: block.themeColor, size: 24),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  block.title,
                  style: GoogleFonts.quicksand(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: block.themeColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            block.description,
            style: GoogleFonts.dmSans(fontSize: 14, height: 1.5),
          ),
          const SizedBox(height: 10),
          ...block.keyPoints.map((p) => Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• ',
                        style: TextStyle(
                            color: block.themeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                    Expanded(
                        child: Text(p,
                            style: GoogleFonts.dmSans(
                                fontSize: 14, height: 1.5))),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  // ── Scale Block ──────────────────────────────────────────────────────────
  Widget _buildScaleBlock(ScaleBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8DDD0)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            color: AppTheme.coral.withValues(alpha: 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  block.scaleName,
                  style: GoogleFonts.quicksand(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.coral,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  block.description,
                  style: GoogleFonts.dmSans(fontSize: 14, color: AppTheme.textMuted),
                ),
              ],
            ),
          ),
          // Header row
          Container(
            color: const Color(0xFFF5F0E8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: block.columns.map((col) {
                return Expanded(
                  child: Text(
                    col,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: AppTheme.textDark,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          // Data rows
          ...block.rows.asMap().entries.map((entry) {
            final isEven = entry.key % 2 == 0;
            return Container(
              color: isEven ? Colors.white : const Color(0xFFFCFAF7),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: entry.value.map((cell) {
                  return Expanded(
                    child: Text(
                      cell,
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        height: 1.4,
                        color: AppTheme.textDark,
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }),
          if (block.boardPearl != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              color: AppTheme.pearlBackground,
              child: Text(
                '⭐ ${block.boardPearl}',
                style: GoogleFonts.dmSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: AppTheme.pearlText,
                ),
              ),
            ),
        ],
      ),
    );
  }

  // ── Image ──────────────────────────────────────────────────────────────
  Widget _buildImage(ImageBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: block.maxHeight ?? 300),
              child: Image.asset(
                block.assetPath,
                fit: BoxFit.contain,
                width: double.infinity,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F0E8),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.image_outlined, size: 32, color: AppTheme.textMuted),
                        const SizedBox(height: 8),
                        Text('Image not found', style: GoogleFonts.dmSans(color: AppTheme.textMuted, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (block.caption != null) ...[
            const SizedBox(height: 6),
            Text(
              block.caption!,
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: AppTheme.textMuted,
              ),
            ),
          ],
        ],
      ),
    );
  }

  // ── Interactive Diagram ────────────────────────────────────────────────
  Widget _buildDiagram(BuildContext context, DiagramBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8DDD0)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: block.themeColor,
            child: Row(
              children: [
                const Icon(Icons.touch_app, color: Colors.white, size: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    block.title,
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  'Tap to explore',
                  style: GoogleFonts.dmSans(
                    color: Colors.white70,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.count(
              crossAxisCount: block.crossAxisCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.6,
              children: block.regions.map((region) {
                final color = region.color ?? block.themeColor;
                return GestureDetector(
                  onTap: () => _showRegionDetail(context, region, color),
                  child: Container(
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: color.withValues(alpha: 0.3)),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (region.icon != null)
                          Icon(region.icon, color: color, size: 22),
                        if (region.icon != null) const SizedBox(height: 4),
                        Text(
                          region.label,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textDark,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  void _showRegionDetail(BuildContext context, DiagramRegion region, Color color) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(ctx).size.height * 0.6,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFFFF8F0),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40, height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                if (region.icon != null) ...[
                  Icon(region.icon, color: color, size: 24),
                  const SizedBox(width: 10),
                ],
                Expanded(
                  child: Text(
                    region.label,
                    style: GoogleFonts.quicksand(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: AppTheme.textDark,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              region.detail,
              style: GoogleFonts.dmSans(
                fontSize: 15,
                height: 1.6,
                color: AppTheme.textDark,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Flowchart ──────────────────────────────────────────────────────────
  Widget _buildFlowchart(FlowchartBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8DDD0)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: block.themeColor,
            child: Row(
              children: [
                const Icon(Icons.account_tree, color: Colors.white, size: 18),
                const SizedBox(width: 8),
                Text(
                  block.title,
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: block.nodes.asMap().entries.map((entry) {
                final index = entry.key;
                final node = entry.value;
                final isLast = index == block.nodes.length - 1;
                return Column(
                  children: [
                    _FlowchartNodeWidget(
                      node: node,
                      color: block.themeColor,
                    ),
                    if (!isLast)
                      Container(
                        width: 3,
                        height: 28,
                        decoration: BoxDecoration(
                          color: block.themeColor.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    if (!isLast && node.branches != null && node.branches!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: node.branches!.map((b) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: block.themeColor.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(b, style: GoogleFonts.dmSans(fontSize: 11, color: block.themeColor, fontWeight: FontWeight.w600)),
                          )).toList(),
                        ),
                      ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  // ── Timeline ───────────────────────────────────────────────────────────
  Widget _buildTimeline(BuildContext context, TimelineBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8DDD0)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: AppTheme.coral,
            child: Row(
              children: [
                const Icon(Icons.timeline, color: Colors.white, size: 18),
                const SizedBox(width: 8),
                Text(
                  block.title,
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Text(
                  'Scroll \u2192',
                  style: GoogleFonts.dmSans(color: Colors.white70, fontSize: 11),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 140,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: block.events.asMap().entries.map((entry) {
                  final index = entry.key;
                  final event = entry.value;
                  final color = event.color ?? AppTheme.coral;
                  final isLast = index == block.events.length - 1;
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: event.detail != null ? () => _showTimelineDetail(context, event, color) : null,
                        child: SizedBox(
                          width: 90,
                          child: Column(
                            children: [
                              Container(
                                width: 28, height: 28,
                                decoration: BoxDecoration(
                                  color: color,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 3),
                                  boxShadow: [
                                    BoxShadow(
                                      color: color.withValues(alpha: 0.3),
                                      blurRadius: 6,
                                    ),
                                  ],
                                ),
                                child: event.icon != null
                                    ? Icon(event.icon, color: Colors.white, size: 14)
                                    : null,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                event.time,
                                style: GoogleFonts.quicksand(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  color: color,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                event.label,
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.dmSans(
                                  fontSize: 11,
                                  color: AppTheme.textDark,
                                  height: 1.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (!isLast)
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Container(
                            width: 24, height: 3,
                            color: color.withValues(alpha: 0.25),
                          ),
                        ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showTimelineDetail(BuildContext context, TimelineEvent event, Color color) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFF8F0),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40, height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              event.time,
              style: GoogleFonts.quicksand(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              event.label,
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: AppTheme.textDark,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              event.detail ?? '',
              style: GoogleFonts.dmSans(
                fontSize: 15,
                height: 1.6,
                color: AppTheme.textDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Flowchart Node Widget ────────────────────────────────────────────────
class _FlowchartNodeWidget extends StatefulWidget {
  final FlowchartNode node;
  final Color color;
  const _FlowchartNodeWidget({required this.node, required this.color});

  @override
  State<_FlowchartNodeWidget> createState() => _FlowchartNodeWidgetState();
}

class _FlowchartNodeWidgetState extends State<_FlowchartNodeWidget> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final node = widget.node;
    final color = widget.color;
    return GestureDetector(
      onTap: node.detail != null ? () => setState(() => _expanded = !_expanded) : null,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: node.isDecision
              ? color.withValues(alpha: 0.12)
              : color.withValues(alpha: 0.06),
          borderRadius: node.isDecision
              ? BorderRadius.circular(4)
              : BorderRadius.circular(12),
          border: Border.all(
            color: color.withValues(alpha: node.isDecision ? 0.5 : 0.2),
            width: node.isDecision ? 2 : 1,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  node.isDecision ? Icons.help_outline : Icons.circle,
                  size: node.isDecision ? 18 : 10,
                  color: color,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    node.label,
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: node.isDecision ? FontWeight.w700 : FontWeight.w600,
                      color: AppTheme.textDark,
                    ),
                  ),
                ),
                if (node.detail != null)
                  Icon(
                    _expanded ? Icons.expand_less : Icons.expand_more,
                    size: 20,
                    color: color,
                  ),
              ],
            ),
            AnimatedCrossFade(
              firstChild: const SizedBox.shrink(),
              secondChild: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  node.detail ?? '',
                  style: GoogleFonts.dmSans(
                    fontSize: 13,
                    height: 1.5,
                    color: AppTheme.textDark,
                  ),
                ),
              ),
              crossFadeState: _expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 200),
            ),
          ],
        ),
      ),
    );
  }
}
