import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/topic_content_model.dart';
import '../../core/theme/app_theme.dart';

class TopicContentView extends StatelessWidget {
  final TopicData topicData;

  const TopicContentView({super.key, required this.topicData});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: topicData.tabs.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: topicData.tabs.length > 3,
            labelColor: AppTheme.coral,
            unselectedLabelColor: AppTheme.textMuted,
            indicatorColor: AppTheme.coral,
            indicatorWeight: 3,
            labelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 13),
            unselectedLabelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w500, fontSize: 13),
            tabs: topicData.tabs.map((t) => Tab(text: t.title)).toList(),
          ),
          Expanded(
            child: TabBarView(
              children: topicData.tabs.map((tab) {
                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: tab.blocks.length,
                  itemBuilder: (context, index) {
                    return _buildBlock(tab.blocks[index]);
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBlock(ContentBlock block) {
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
    return const SizedBox.shrink();
  }

  Widget _buildHeader(HeaderBlock block) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 12),
      child: Text(
        block.title,
        style: GoogleFonts.quicksand(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: AppTheme.coral,
        ),
      ),
    );
  }

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
                fontSize: 14,
                height: 1.6,
                color: AppTheme.textMuted,
              ),
      ),
    );
  }

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
                    fontSize: 14,
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
              fontSize: 13,
              height: 1.5,
              color: AppTheme.pearlText,
            ),
          ),
        ],
      ),
    );
  }

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
              fontSize: 15,
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
                      margin: const EdgeInsets.only(top: 6),
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
                        style: GoogleFonts.dmSans(fontSize: 13, height: 1.5),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildTable(TableBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8DDD0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (block.title.isNotEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: block.headerColor ?? AppTheme.coral,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Text(
                block.title,
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingRowColor: WidgetStateProperty.all(Colors.grey.shade100),
                columnSpacing: 16,
                horizontalMargin: 12,
                headingTextStyle: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: AppTheme.textDark,
                ),
                dataTextStyle: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: AppTheme.textDark,
                  height: 1.3,
                ),
                columns: block.columns.map((c) => DataColumn(label: Text(c))).toList(),
                rows: block.rows.map((row) {
                  return DataRow(
                    cells: row.map((cell) => DataCell(
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(cell),
                      ),
                    )).toList(),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

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
              const Icon(Icons.psychology_alt_rounded, color: AppTheme.bubblegumPink, size: 20),
              const SizedBox(width: 8),
              Text(
                'Memory Aid',
                style: GoogleFonts.quicksand(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.mnemonicText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            block.mnemonic,
            style: GoogleFonts.quicksand(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color: AppTheme.mnemonicText,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            block.explanation,
            style: GoogleFonts.dmSans(
              fontSize: 13,
              height: 1.4,
              color: AppTheme.mnemonicText,
            ),
          ),
        ],
      ),
    );
  }

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
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: AppTheme.coral.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    item.key,
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.coral,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    item.value,
                    style: GoogleFonts.dmSans(fontSize: 13, height: 1.5),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildMedicationCard(MedicationCardBlock block) {
    final borderColor = block.isAvoid ? AppTheme.avoidBorder : AppTheme.mutedPurple;
    final bgColor = block.isAvoid ? AppTheme.avoidBackground : const Color(0xFFF5F3FF);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(14),
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
                size: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${block.name} (${block.drugClass})',
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: borderColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text('Mechanism: ${block.mechanism}', style: GoogleFonts.dmSans(fontSize: 12, height: 1.4)),
          Text('Indication: ${block.indication}', style: GoogleFonts.dmSans(fontSize: 12, height: 1.4)),
          if (block.dosing.isNotEmpty)
            Text('Dosing: ${block.dosing}', style: GoogleFonts.dmSans(fontSize: 12, height: 1.4)),
          if (block.sideEffects.isNotEmpty)
            Text('Side Effects: ${block.sideEffects}', style: GoogleFonts.dmSans(fontSize: 12, height: 1.4)),
          if (block.boardPearl.isNotEmpty) ...[
            const SizedBox(height: 6),
            Text(
              'Board Pearl: ${block.boardPearl}',
              style: GoogleFonts.dmSans(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                color: borderColor,
              ),
            ),
          ],
        ],
      ),
    );
  }

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
              Icon(block.icon, color: block.themeColor, size: 22),
              const SizedBox(width: 10),
              Text(
                block.title,
                style: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: block.themeColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(block.description, style: GoogleFonts.dmSans(fontSize: 13, height: 1.4)),
          const SizedBox(height: 8),
          ...block.keyPoints.map((p) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• ', style: TextStyle(color: block.themeColor, fontWeight: FontWeight.bold)),
                    Expanded(child: Text(p, style: GoogleFonts.dmSans(fontSize: 12, height: 1.4))),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildScaleBlock(ScaleBlock block) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8DDD0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppTheme.coral.withValues(alpha: 0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  block.scaleName,
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.coral,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  block.description,
                  style: GoogleFonts.dmSans(fontSize: 12, color: AppTheme.textMuted),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 16,
              horizontalMargin: 12,
              headingTextStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w700, fontSize: 11),
              dataTextStyle: GoogleFonts.dmSans(fontSize: 11, height: 1.3),
              columns: block.columns.map((c) => DataColumn(label: Text(c))).toList(),
              rows: block.rows.map((row) {
                return DataRow(
                  cells: row.map((cell) => DataCell(
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 160),
                      child: Text(cell),
                    ),
                  )).toList(),
                );
              }).toList(),
            ),
          ),
          if (block.boardPearl != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.pearlBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Text(
                'Board Pearl: ${block.boardPearl}',
                style: GoogleFonts.dmSans(
                  fontSize: 11,
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
}
