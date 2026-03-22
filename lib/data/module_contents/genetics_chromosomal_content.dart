import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final geneticsChromosomalContent = TopicData(
  id: 'genetics-chromosomal',
  title: 'Genetics & Chromosomal Abnormalities',
  tabs: [
    // ============ TAB 1: Chromosomal Abnormalities ============
    TopicTab(
      title: 'Chromosomal',
      blocks: [
        HeaderBlock('Chromosomal Abnormalities'),
        TextBlock(
          'Normal humans have 46 chromosomes (23 maternal and 23 paternal) in every cell except gonads, which have 23. Errors during cell division result in chromosomal abnormalities, found in approximately 0.5% of all newborns.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'When to Suspect a Chromosomal Abnormality',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Abnormal sexual characteristics',
            'Congenital malformations',
            'Developmental delay',
            'Dysmorphic features',
            'Mental retardation',
            'Prenatal and/or postnatal growth retardation',
          ],
        ),
        PearlBlock(
          'Board Pearl',
          'The numerical chromosome abnormalities are most frequently trisomy or monosomy. Fragile X syndrome, XXY, and XYY are often associated with excessive growth.',
        ),

        HeaderBlock('Trisomy 21 — Down Syndrome'),
        BulletCardBlock(
          title: 'Clinical Features',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Upward slant of palpebral fissures',
            'Brushfield spots of iris',
            'Protruding tongue, third fontanelle',
            'Low-set auricles, excess nuchal skin',
            'Single palmar (simian) crease, single flexion crease',
            'Clinodactyly of fifth fingers',
            'Increased distance between first and second toes',
            'Skin mottling, hypotonia',
            'CHD — endocardial cushion defect is most common cardiac defect',
            'VSD also common',
          ],
        ),
        PearlBlock(
          'Board Pearl — Atlantoaxial Instability',
          'Present in 10-30% of individuals with Down syndrome. Flexion/extension cervical spine radiographs are recommended before participation in Special Olympics. ADI (atlantodental interval) >4.5 mm in children is abnormal.',
        ),
        MnemonicBlock(
          'DANISH — Down Syndrome Features',
          'Duodenal atresia, Atlantoaxial instability, Nuchal translucency, Intellectual disability, Single palmar crease, Heart defects (endocardial cushion)',
        ),

        HeaderBlock('Trisomy 18 — Edwards Syndrome'),
        BulletCardBlock(
          title: 'Clinical Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'IUGR, short palpebral fissures, small mouth, micrognathia',
            'Low-set abnormal auricles, prominent occiput',
            'Short sternum, abnormal position of fingers',
            'Second overlapping third, fifth overlapping fourth finger',
            'Hypoplastic fingernails, rocker-bottom feet',
            'CHD, spasticity, feeding problems/failure to thrive',
            'Most die within the first year of life',
          ],
        ),
        PearlBlock(
          'Board Pearl — Finger Position',
          'The classic hand position in Trisomy 18 is overlapping fingers: the 2nd finger overlaps the 3rd, and the 5th overlaps the 4th. This is a commonly tested distinguishing feature.',
        ),

        HeaderBlock('Trisomy 13 — Patau Syndrome'),
        BulletCardBlock(
          title: 'Clinical Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'IUGR, coloboma of iris (pupil in keyhole shape)',
            'Capillary hemangioma, skin defect of skull',
            'Hyperconvex nails, polydactyly',
            'Rocker-bottom feet',
            'Arrhinencephaly (holoprosencephaly)',
            'Cleft lip and palate, CHD',
            'Urinary tract abnormalities',
            'Most die within the first year of life',
          ],
        ),

        HeaderBlock('Turner Syndrome (45,X)'),
        BulletCardBlock(
          title: 'Clinical Features',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Short stature — most consistent finding',
            'Triangular face, abnormal shape of ears',
            'Webbed neck, broad "shield" chest',
            'Wide-set nipples',
            'Congenital lymphedema of hands and feet',
            'Shortened fourth and fifth metacarpals and metatarsals',
            'Cubitus valgus',
            'Primary amenorrhea, infertility',
            'CHD — especially coarctation of aorta',
            'Mostly normal to near-normal IQ',
          ],
        ),
        PearlBlock(
          'Board Pearl — Turner vs Klinefelter',
          'Turner (45,X) = SHORT stature, coarctation of aorta, normal IQ. Klinefelter (47,XXY) = TALL stature, small testes, gynecomastia, infertility, learning/behavioral problems.',
        ),

        HeaderBlock('Klinefelter Syndrome (47,XXY)'),
        BulletCardBlock(
          title: 'Clinical Features',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Tall stature, postpubertally small testicles',
            'Gynecomastia, eunuchoid build',
            'Increased risk for mild intellectual disability',
            'Learning and behavior problems',
            'Infertility',
          ],
        ),

        // Comparison table
        TableBlock(
          title: 'Selected Chromosomal Syndromes',
          columns: ['Syndrome', 'Key Features', 'Cardiac'],
          rows: [
            ['Trisomy 21\n(Down)', 'Brushfield spots, single palmar crease,\nhypotonia, atlantoaxial instability', 'Endocardial\ncushion defect'],
            ['Trisomy 18\n(Edwards)', 'Overlapping fingers (2nd/3rd, 5th/4th),\nrocker-bottom feet, micrognathia', 'CHD, VSD'],
            ['Trisomy 13\n(Patau)', 'Holoprosencephaly, coloboma,\npolydactyly, cleft lip/palate', 'CHD'],
            ['Turner\n(45,X)', 'Short stature, webbed neck,\ncubitus valgus, amenorrhea', 'Coarctation\nof aorta'],
            ['Klinefelter\n(47,XXY)', 'Tall, gynecomastia, small testes,\ninfertility', 'None typical'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
      ],
    ),

    // ============ TAB 2: Teratogens & TORCHES ============
    TopicTab(
      title: 'Teratogens',
      blocks: [
        HeaderBlock('Teratogens & Congenital Infections'),
        TextBlock(
          'The exposure of a genetically susceptible fetus to a potential teratogen increases the chance of malformations. Although many environmental agents are potentially teratogenic, very few are proven teratogens.',
          isIntro: true,
        ),

        HeaderBlock('TORCHES Infections'),
        MnemonicBlock(
          'TORCHES',
          'Toxoplasmosis, Other (varicella, parvovirus B19), Rubella, Cytomegalovirus, Herpes simplex, Syphilis',
        ),
        PearlBlock(
          'Board Pearl',
          'TORCHES infections are congenital infections transmitted from mother to fetus. They are a major cause of congenital malformations and should be considered in any infant with unexplained developmental abnormalities.',
        ),
        BulletCardBlock(
          title: 'Proven Teratogens',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Infectious agents: TORCHES infections',
            'Drugs: Alcohol, cocaine, anticonvulsants (valproic acid), warfarin, vitamin A derivatives (isotretinoin)',
            'Maternal diseases: Diabetes mellitus, phenylketonuria (PKU)',
          ],
        ),
        BulletCardBlock(
          title: 'Uterine Factors Causing Malformation',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Malformed uterus',
            'Twinning',
            'Polyhydramnios',
          ],
        ),

        HeaderBlock('Prenatal Diagnosis'),
        BulletCardBlock(
          title: 'Diagnostic Methods',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Amniocentesis: Performed at 14-16 weeks of pregnancy',
            'Chorionic villus sampling (CVS): Performed at 9-10 weeks of gestation',
            'AFP (alpha-fetoprotein): Reliable in 80% of open neural tube defects at 13-15 weeks',
            'Amniocentesis nearly 100% accurate by 16-18 weeks for NTDs',
          ],
        ),
        PearlBlock(
          'Board Pearl — Folic Acid',
          'Folic acid 0.4 mg/day for ALL women of childbearing age reduces neural tube defect risk. Women with a prior NTD pregnancy should take 4 mg/day (10x the standard dose), which reduces recurrence risk by 50-70%.',
        ),

        HeaderBlock('Fetal Alcohol Spectrum Disorder'),
        BulletCardBlock(
          title: 'Features of Fetal Alcohol Syndrome',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Prenatal and postnatal growth retardation',
            'CNS dysfunction: Microcephaly, intellectual disability',
            'Facial dysmorphism: Short palpebral fissures, smooth philtrum, thin upper lip',
            'Cardiac defects (VSD, ASD)',
            'Joint anomalies',
            'Most common preventable cause of intellectual disability',
          ],
        ),
        PearlBlock(
          'Board Pearl',
          'Fetal alcohol syndrome is the most common preventable cause of intellectual disability. There is no known safe level of alcohol consumption during pregnancy.',
        ),
      ],
    ),

    // ============ TAB 3: Genetic Counseling ============
    TopicTab(
      title: 'Genetic Counseling',
      blocks: [
        HeaderBlock('Indications for Genetic Counseling Referral'),
        TextBlock(
          'Genetic counseling is recommended when there is concern for hereditary conditions, chromosomal abnormalities, or teratogenic exposures affecting a child or family.',
          isIntro: true,
        ),
        NumberedListBlock([
          MapEntry('1', 'Child with birth defects and/or developmental delay/mental retardation'),
          MapEntry('2', 'Dysmorphic child'),
          MapEntry('3', 'Parent or sibling affected with known or suspected genetic disorder'),
          MapEntry('4', 'Positive family history of birth defects or retardation in aunts, uncles, grandparents, or other relatives, especially if multiple members are affected'),
          MapEntry('5', 'Possible teratogenic exposure or other abnormalities of pregnancy'),
          MapEntry('6', 'Advanced maternal age (>35 years) or other indications for prenatal diagnosis'),
        ]),

        HeaderBlock('Inheritance Patterns'),
        ComparisonCardBlock(
          title: 'Autosomal Dominant',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          icon: Icons.arrow_downward_rounded,
          description: 'Affected individual has a 50% chance of passing the gene to each offspring.',
          keyPoints: [
            'Only one copy of mutant gene needed',
            'Affected parent → 50% risk each child',
            'Variable expressivity common',
            'Examples: Marfan syndrome, neurofibromatosis, myotonic dystrophy, CMT Type 1A',
          ],
        ),
        ComparisonCardBlock(
          title: 'Autosomal Recessive',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          icon: Icons.compare_arrows_rounded,
          description: 'Both parents must be carriers. 25% chance of affected child per pregnancy.',
          keyPoints: [
            'Two copies of mutant gene needed',
            'Carrier parents → 25% affected, 50% carrier, 25% unaffected',
            'Often no family history of the condition',
            'Examples: SMA (all types), Friedreich ataxia, sickle cell disease, cystic fibrosis',
          ],
        ),
        ComparisonCardBlock(
          title: 'X-Linked Recessive',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.male_rounded,
          description: 'Carrier mother has a 50% chance of affected sons and 50% chance of carrier daughters.',
          keyPoints: [
            'Gene located on X chromosome',
            'Males affected (only one X), females are carriers',
            'No male-to-male transmission',
            'Examples: Duchenne muscular dystrophy, Becker MD, hemophilia A and B',
          ],
        ),
        PearlBlock(
          'Board Pearl — Inheritance Patterns',
          'Key inheritance patterns frequently tested: DMD/Becker = X-linked recessive (Xp21). SMA = autosomal recessive (5q). CMT1A = autosomal dominant (17p). Friedreich ataxia = autosomal recessive (9q). Myotonic dystrophy = autosomal dominant with anticipation (19q).',
        ),

        HeaderBlock('Genetic Anticipation'),
        BulletCardBlock(
          title: 'Trinucleotide Repeat Disorders',
          themeColor: const Color(0xFFEC4899),
          backgroundColor: const Color(0xFFFDF2F8),
          points: [
            'Genetic anticipation: Disease severity increases and age of onset decreases with successive generations',
            'Caused by expansion of trinucleotide repeat sequences',
            'Myotonic dystrophy (CTG repeat, chromosome 19): Congenital form most severe, maternal transmission',
            'Fragile X syndrome (CGG repeat, X chromosome): Most common inherited cause of intellectual disability',
            'Friedreich ataxia (GAA repeat, chromosome 9): Autosomal recessive with anticipation',
          ],
        ),
        PearlBlock(
          'Board Pearl — Fragile X',
          'Fragile X syndrome is the most common INHERITED cause of intellectual disability (fetal alcohol syndrome is the most common PREVENTABLE cause). It is X-linked dominant with reduced penetrance. Males are more severely affected.',
        ),

        HeaderBlock('VACTERL Association'),
        MnemonicBlock(
          'VACTERL',
          'Vertebral defects, Anal atresia, Cardiac defects, Tracheo-Esophageal fistula, Renal anomalies, Limb anomalies. This is an association (not a syndrome) — seen with some congenital limb deficiencies.',
        ),
      ],
    ),
  ],
);
