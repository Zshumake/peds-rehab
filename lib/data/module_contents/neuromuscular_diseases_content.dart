import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final neuromuscularDiseasesContent = TopicData(
  id: 'neuromuscular-diseases',
  title: 'Neuromuscular Diseases',
  tabs: [
    // ============ TAB 1: Duchenne & Becker MD ============
    TopicTab(
      title: 'Duchenne & Becker MD',
      blocks: [
        HeaderBlock('Duchenne Muscular Dystrophy (DMD)'),
        TextBlock(
          'DMD is the most common and most severe childhood-onset muscular dystrophy, affecting ~1 in 3,500-5,000 live male births. X-linked recessive, caused by mutations in the dystrophin gene at Xp21.2 — the LARGEST gene in the human body (2.4 Mb, 79 exons). Dystrophin protein (427 kDa) links intracellular actin to the extracellular matrix. Complete absence of dystrophin (<3%) destabilizes the sarcolemma during contraction.',
          isIntro: true,
        ),

        HeaderBlock('Genetics'),
        BulletCardBlock(
          title: 'Mutation Spectrum',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Deletions: 60-70% (hotspots: exons 44-55 and exons 2-20)',
            'Duplications: 5-15%',
            'Point mutations/small indels: 25-30%',
            'De novo mutations: ~30% (no prior family history)',
            'Female carriers: 2.5-10% become symptomatic (manifesting carriers) from skewed X-inactivation',
            'ALL female carriers should receive periodic cardiac screening',
          ],
        ),

        HeaderBlock('Clinical Stages of DMD'),
        TableBlock(
          title: 'DMD Natural History Timeline',
          columns: ['Stage', 'Age', 'Characteristics', 'Rehab Focus'],
          rows: [
            ['Presymptomatic', 'Birth-3 yr', 'Elevated CK from birth;\nsubtle motor delays;\nwalking often delayed\nto 15-18 months', 'Surveillance,\ngenetic counseling'],
            ['Early\nambulatory', '3-6 yr', 'Gower sign; proximal\nweakness; toe-walking;\ncalf pseudohypertrophy;\nneck flexors = earliest\nweakness', 'Stretching, AFOs,\ncorticosteroid\ninitiation at\nmotor plateau\n(age 4-6)'],
            ['Late\nambulatory', '6-12 yr', 'Progressive weakness;\ncontractures; hyperlordotic\nwaddling gait;\nloss of ambulation\nwhen knee ext <3/5\nor 30-ft walk >12 sec', 'Maintain ambulation;\nstanding aids;\nKAFOs'],
            ['Early non-\nambulatory', '12-16 yr', 'Wheelchair dependent;\nscoliosis onset (>90%);\nUE function preserved;\nFVC peaks then declines\n5-8%/year', 'Power mobility;\nseating; scoliosis\nmonitoring'],
            ['Late non-\nambulatory', '>16 yr', 'Severe weakness;\ncardiomyopathy in most\nby 18 yr; respiratory\nfailure; median survival\n~28 yr (born after 1990)', 'Ventilatory support;\ncardiac management;\npalliative planning'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        PearlBlock(
          'Board Pearl — Gower Sign',
          'Gower sign: Child climbs up own legs to stand (proximal hip/knee extensor weakness). Classic for DMD but NOT specific — also seen in SMA type III, LGMD, and inflammatory myopathies. Typically evident by age 3-5 years. Calf pseudohypertrophy = fat and connective tissue (NOT actual muscle hypertrophy).',
        ),

        TimelineBlock(
          title: 'DMD Disease Progression',
          events: [
            TimelineEvent(
              time: 'Birth',
              label: 'Normal CK screening',
              detail: 'CK is markedly elevated from birth (10,000-50,000+ IU/L) even before symptoms appear. Newborn screening can detect elevated CK.',
              color: const Color(0xFFD946EF),
              icon: Icons.child_friendly_rounded,
            ),
            TimelineEvent(
              time: '2-3 yr',
              label: 'Gower sign, toe walking',
              detail: 'Proximal weakness becomes clinically apparent. Calf pseudohypertrophy develops. Delayed walking (15-18 months) may have been the first sign.',
              color: const Color(0xFFD946EF),
              icon: Icons.directions_walk_rounded,
            ),
            TimelineEvent(
              time: '5-6 yr',
              label: 'Corticosteroids started',
              detail: 'Initiated at motor function plateau (age 4-6). Prednisone 0.75 mg/kg/day or deflazacort 0.9 mg/kg/day. Prolongs ambulation by 2-5 years.',
              color: const Color(0xFFD946EF),
              icon: Icons.medication_rounded,
            ),
            TimelineEvent(
              time: '9-12 yr',
              label: 'Loss of ambulation',
              detail: 'Wheelchair dependence when knee extensors fall below 3/5 or 30-ft walk exceeds 12 seconds. Power wheelchair prescription is essential.',
              color: const Color(0xFFD946EF),
              icon: Icons.accessible_rounded,
            ),
            TimelineEvent(
              time: '12-15 yr',
              label: 'Scoliosis surgery window',
              detail: 'Neuromuscular scoliosis develops in >90%. Spinal fusion when Cobb angle >20-25 degrees. FVC must be >30-40% for acceptable surgical risk.',
              color: const Color(0xFFD946EF),
              icon: Icons.airline_seat_recline_normal_rounded,
            ),
            TimelineEvent(
              time: '15-18 yr',
              label: 'Nocturnal ventilation',
              detail: 'FVC declines 5-8% per year after peak at age 12-14. Nocturnal NIV initiated when FVC <50%, MIP <60 cmH2O, or SpO2 <95%.',
              color: const Color(0xFFD946EF),
              icon: Icons.nights_stay_rounded,
            ),
            TimelineEvent(
              time: '20s',
              label: '24hr ventilation',
              detail: 'Progressive respiratory decline requires continuous ventilatory support. Tracheostomy vs continued NIV is an individualized decision.',
              color: const Color(0xFFD946EF),
              icon: Icons.air_rounded,
            ),
            TimelineEvent(
              time: 'Late 20s',
              label: 'Cardiac/respiratory failure',
              detail: 'Median survival ~28 years (born after 1990). Cardiomyopathy present in nearly all by age 18. Respiratory and cardiac failure are leading causes of death.',
              color: const Color(0xFFD946EF),
              icon: Icons.monitor_heart_rounded,
            ),
          ],
        ),

        HeaderBlock('Diagnostics'),
        BulletCardBlock(
          title: 'Diagnostic Workup',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'CK: Markedly elevated 10,000-50,000+ IU/L (50-100x normal); present from BIRTH',
            'CK peaks in early childhood, declines as muscle mass is lost',
            'Genetic testing (FIRST LINE): MLPA for deletions/duplications (70-80%); NGS for point mutations',
            'Muscle biopsy: RESERVED for inconclusive genetics; absent dystrophin on immunostaining',
            'EMG: Myopathic pattern (low amplitude, short duration, polyphasic, early recruitment)',
            'Cognition: Mean IQ ~85; ~30% intellectual disability; Dp71 brain isoform absent',
          ],
        ),

        HeaderBlock('Corticosteroid Therapy (Birnkrant 2018)'),
        TableBlock(
          title: 'Corticosteroid Regimens',
          columns: ['Agent', 'Dose', 'Key Notes'],
          rows: [
            ['Prednisone', '0.75 mg/kg/day', 'Most extensively studied;\ndaily dosing most common'],
            ['Deflazacort', '0.9 mg/kg/day', 'FDA approved 2017;\nless weight gain;\nhigher cataract risk'],
            ['Vamorolone', 'Weight-based', 'FDA approved Oct 2023;\ndissociative steroid;\nfewer metabolic side effects'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        BulletCardBlock(
          title: 'Steroid Benefits & Side Effects',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Benefits: Prolongs ambulation by 2-5 years; stabilizes strength; delays scoliosis; slows FVC decline',
            'Start at motor function plateau, typically age 4-6',
            'Continue INDEFINITELY (benefits extend beyond ambulatory phase)',
            'Side effects: Cushingoid weight gain, growth retardation, cataracts (deflazacort), osteoporosis, vertebral compression fractures, behavioral changes, adrenal suppression',
            'LIVE VACCINES CONTRAINDICATED on immunosuppressive doses',
            'Confirm varicella immunity BEFORE starting steroids',
            'Stress-dose hydrocortisone protocol for illness/surgery (adrenal crisis prevention)',
          ],
        ),

        HeaderBlock('Cardiopulmonary Management'),
        BulletCardBlock(
          title: 'Pulmonary (Birnkrant 2018 Part 2)',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Annual PFTs from age 5-6; every 6 months when non-ambulatory',
            'FVC peaks at age 12-14, then declines 5-8% per year',
            'Lung volume recruitment (breath stacking) when FVC <60% predicted',
            'Mechanical assisted cough when FVC <50% or peak cough flow <270 L/min',
            'Nocturnal NIV when FVC <50%, MIP <60 cmH2O, or SpO2 <95%',
            'Respiratory failure is a leading cause of death',
          ],
        ),
        BulletCardBlock(
          title: 'Cardiac',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Baseline cardiac eval (ECG + echo/cardiac MRI) at diagnosis or by age 6',
            'Every 2 years until age 10, then ANNUALLY',
            'Cardiac MRI superior to echo for detecting early fibrosis (posterolateral LV wall)',
            'EKG: Characteristic Q-waves in lateral leads; abnormalities in nearly all >13 years',
            'Cardiomyopathy detectable by 10-15, nearly all affected by 18',
            'Prophylactic ACE inhibitor/ARB by age 10 (perindopril trial: 10-yr survival 93% vs 66%)',
            'Add eplerenone/spironolactone as needed',
          ],
        ),

        HeaderBlock('Scoliosis in DMD'),
        BulletCardBlock(
          title: 'Neuromuscular Scoliosis',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Develops in >90% of non-ambulatory patients',
            'Typically long C-shaped collapsing curve',
            'Spinal BRACING does NOT prevent curve progression (unlike idiopathic)',
            'Surgical fusion when Cobb >20-25 degrees (growing) or >40-50 degrees (any)',
            'FVC >30-40% = threshold for acceptable surgical risk',
            'Corticosteroids have reduced and delayed need for scoliosis surgery',
            'Surgery improves sitting balance and QOL; does not improve FVC but may slow decline',
          ],
        ),

        HeaderBlock('Becker Muscular Dystrophy (BMD)'),
        TableBlock(
          title: 'DMD vs Becker MD',
          columns: ['Feature', 'DMD', 'Becker MD'],
          rows: [
            ['Inheritance', 'X-linked recessive', 'X-linked recessive'],
            ['Gene/Locus', 'Xp21.2', 'Xp21.2'],
            ['Dystrophin', 'Absent (<3%)', 'Reduced (20-80%)'],
            ['Reading Frame', 'LOST (out-of-frame)', 'MAINTAINED (in-frame)'],
            ['Incidence', '1:3,500-5,000', '1:18,000-30,000'],
            ['Onset', '2-5 years', '>5 years'],
            ['Ambulation\nLoss', 'Age 9-13', 'Past age 16\n(defining criterion)'],
            ['CK', '10,000-50,000+', '2,000-20,000'],
            ['Cognition', 'Mean IQ ~85;\n~30% ID', 'Generally normal'],
            ['Cardiac', 'Cardiomyopathy\nby 10-15 yr', 'May be\nDISPROPORTIONATELY\nsevere; leading\ncause of death;\nmean death mid-40s'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        PearlBlock(
          'Board Pearl — Reading Frame Hypothesis (Monaco 1988)',
          'Out-of-frame mutations = DMD (severe, no functional dystrophin). In-frame mutations = BMD (milder, partially functional dystrophin). This rule holds in ~90-95% of cases. The defining clinical criterion for BMD vs DMD: retention of ambulation past age 16.',
        ),

        HeaderBlock('Gene Therapies for DMD'),
        TableBlock(
          title: 'FDA-Approved Exon-Skipping Therapies',
          columns: ['Drug', 'Year', 'Exon Skipped', 'Applicable\nMutations'],
          rows: [
            ['Eteplirsen\n(Exondys 51)', '2016', 'Exon 51', '~13%'],
            ['Golodirsen\n(Vyondys 53)', '2019', 'Exon 53', '~8%'],
            ['Viltolarsen\n(Viltepso)', '2020', 'Exon 53', '~8%'],
            ['Casimersen\n(Amondys 45)', '2021', 'Exon 45', '~8%'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        BulletCardBlock(
          title: 'Other Disease-Modifying Therapies',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Delandistrogene moxeparvovec (Elevidys): AAVrh74 gene therapy; FDA accelerated approval June 2023; ambulatory boys ages 4-5',
            'Givinostat: HDAC inhibitor with anti-fibrotic properties; FDA approved March 2024; ages 6+',
            'Ataluren: Ribosomal read-through of nonsense mutations (~10-15%); EU approved, NOT FDA approved',
            'Exon-skipping restores reading frame → converts DMD phenotype toward milder BMD-like phenotype',
          ],
        ),
      ],
    ),

    // ============ TAB 2: SMA ============
    TopicTab(
      title: 'SMA',
      blocks: [
        HeaderBlock('Spinal Muscular Atrophy (SMA)'),
        TextBlock(
          'Autosomal recessive neurodegenerative disease caused by biallelic loss-of-function mutations in SMN1 on chromosome 5q13. Homozygous deletion of exon 7 in ~95% of cases. Results in degeneration of anterior horn cells. Incidence: ~1 in 6,000-10,000 births; carrier frequency ~1 in 40-60. SMA type I was historically the most common genetic cause of infant death.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'SMN2 — The "Backup" Gene',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'SMN2 differs from SMN1 by a single C-to-T transition in exon 7',
            'Causes predominant exon 7 skipping → ~90% truncated (unstable) protein, ~10% full-length',
            'SMN2 copy number inversely correlates with disease severity',
            'More copies = more full-length SMN protein = milder disease',
            'All three FDA-approved therapies target SMN protein production',
          ],
        ),
        MnemonicBlock(
          'SMA Types: 1-2-3 = Never-Sit-Stand',
          'Type I: NEVER sits. Type II: Sits but NEVER stands/walks. Type III: Stands and walks, then loses ability.',
        ),

        HeaderBlock('SMA Classification'),
        TableBlock(
          title: 'SMA Types Comparison',
          columns: ['Feature', 'Type 0', 'Type I\n(Werdnig-\nHoffmann)', 'Type II\n(Dubowitz)', 'Type III\n(Kugelberg-\nWelander)', 'Type IV'],
          rows: [
            ['Onset', 'Prenatal', 'Birth-\n6 months', '6-18\nmonths', '>18\nmonths', '>21 years'],
            ['Best\nMotor', 'Minimal\nmovement', 'Never\nsits', 'Sits,\nnever\nwalks', 'Walks\nthen\nloses', 'Normal\ndevelopment'],
            ['SMN2\nCopies', '1', '1-2', '2-3', '3-4', '4+'],
            ['Survival\n(untreated)', '<6 mo', '<2 yr', '~70% to\nage 25', 'Normal\nlifespan', 'Normal'],
            ['CK', 'Normal', 'Normal', 'Normal/\nmild ↑', 'Normal/\nmild ↑\n(up to\n4-10x)', 'Normal'],
            ['Frequency', 'Rare', '~60%', '~27%', '~12%', '~1%'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),

        HeaderBlock('SMA Type I — Key Features'),
        BulletCardBlock(
          title: 'Werdnig-Hoffmann Disease',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Severe hypotonia ("floppy infant")',
            'Frog leg position; poor head control; weak cry',
            'BELL-SHAPED CHEST: Intercostal weakness with PRESERVED diaphragm',
            'Paradoxical (abdominal) breathing pattern',
            'Tongue fasciculations',
            'Areflexia',
            'CK: Normal (distinguishes from muscular dystrophies)',
            'Death from respiratory failure by age 2 without treatment',
          ],
        ),
        PearlBlock(
          'Board Pearl — Bell-Shaped Chest',
          'Bell-shaped chest in SMA type I is caused by intercostal muscle weakness with preserved diaphragmatic strength, producing paradoxical breathing. Tongue fasciculations in a hypotonic infant should always raise suspicion for SMA.',
        ),

        HeaderBlock('SMA Type II — Key Features'),
        BulletCardBlock(
          title: 'Dubowitz Disease',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Sits unsupported but NEVER stands independently',
            'Tongue fasciculations in ~70%',
            'Fine hand tremor (polyminimyoclonus)',
            'Normal to advanced intellect',
            'TREMULOUS BASELINE on EKG — pathognomonic',
            'Progressive scoliosis (nearly universal)',
            'Joint contractures develop',
          ],
        ),
        PearlBlock(
          'Board Pearl — SMA Type II EKG',
          'A tremulous baseline on EKG is PATHOGNOMONIC for SMA Type II. This finding + tongue fasciculations + normal intellect + child who can sit but not stand = classic board question presentation.',
        ),

        HeaderBlock('SMA Type III — Key Features'),
        BulletCardBlock(
          title: 'Kugelberg-Welander Disease',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Walks independently then gradually loses ability',
            'Gower sign present (mimics DMD)',
            'Calf pseudohypertrophy can occur (mimics DMD)',
            'CK may be mildly elevated (up to 4-10x normal)',
            'Normal lifespan dependent on respiratory status',
            'Key distinction from DMD: CK is MUCH lower; no cardiac involvement; EMG shows neurogenic (not myopathic) pattern',
          ],
        ),

        HeaderBlock('Disease-Modifying Therapies'),
        TableBlock(
          title: 'FDA-Approved SMA Therapies',
          columns: ['Feature', 'Nusinersen\n(Spinraza)', 'Onasemnogene\n(Zolgensma)', 'Risdiplam\n(Evrysdi)'],
          rows: [
            ['Mechanism', 'Antisense\noligonucleotide;\nSMN2 splicing\nmodifier', 'AAV9 gene\nreplacement;\ndelivers functional\nSMN1', 'Small molecule;\noral SMN2\nsplicing modifier'],
            ['Route', 'Intrathecal\ninjection', 'Single IV\ninfusion', 'Oral (liquid),\ndaily'],
            ['Schedule', 'Loading: days\n1,14,28,63;\nmaintenance\nq4 months', 'ONE-TIME', 'Daily,\ncontinuous'],
            ['FDA\nApproval', 'Dec 2016', 'May 2019', 'Aug 2020'],
            ['Age', 'All ages', '<2 years', '>=2 months'],
            ['Key Trial\n(Type I)', 'ENDEAR\n(51% vs 0%\nmilestones)', 'STR1VE\n(59% sitting;\n100% alive\nat 14 mo)', 'FIREFISH\n(29% sitting\nat 12 mo)'],
            ['Key Trial\n(Type II/III)', 'CHERISH\n(HFMSE +4.0\nvs -1.9)', '--', 'SUNFISH\n(MFM-32\nimproved)'],
            ['Cost', '~\$125K/dose', '~\$2.125M\n(one-time)', 'Annual\n(daily oral)'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        PearlBlock(
          'Board Pearl — Three SMA Therapies',
          'Zolgensma = ONLY one-time gene therapy (IV, Type I <2yr). Spinraza = repeated intrathecal injections (all ages). Evrysdi = ONLY oral option (>=2 months). KEY PRINCIPLE: Earlier treatment, especially PRESYMPTOMATIC via newborn screening, produces dramatically better outcomes. Once motor neurons are lost, they cannot be replaced.',
        ),
        BulletCardBlock(
          title: 'Newborn Screening',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Added to US RUSP in 2018; implemented in most states',
            'Detects homozygous SMN1 exon 7 deletion from dried blood spots',
            'Identifies ~95% of cases (misses point mutations)',
            'NURTURE trial (presymptomatic treatment): Majority achieved sitting and walking milestones',
            'Presymptomatic treatment = near-normal motor development possible',
          ],
        ),

        DiagramBlock(
          title: 'SMA Types: Motor Milestone Ceiling',
          themeColor: const Color(0xFFD946EF),
          regions: [
            DiagramRegion(
              label: 'Type 0',
              detail: 'No motor milestones achieved. Prenatal onset with minimal movement. 1 SMN2 copy. Death before 6 months. Extremely rare.',
              icon: Icons.dangerous_rounded,
              color: const Color(0xFFDC2626),
            ),
            DiagramRegion(
              label: 'Type I (Werdnig-Hoffmann)',
              detail: 'Never sits independently. 1-2 SMN2 copies. Death before age 2 without treatment. Nusinersen, Zolgensma, and risdiplam have transformed outcomes when given presymptomatically.',
              icon: Icons.child_friendly_rounded,
              color: const Color(0xFFF97316),
            ),
            DiagramRegion(
              label: 'Type II (Dubowitz)',
              detail: 'Sits independently but never walks. 2-3 SMN2 copies. Survival ~70% to age 25 untreated. Progressive scoliosis nearly universal. All three FDA-approved therapies applicable.',
              icon: Icons.event_seat_rounded,
              color: const Color(0xFFEAB308),
            ),
            DiagramRegion(
              label: 'Type III (Kugelberg-Welander)',
              detail: 'Walks independently, then gradually loses ability. 3-4 SMN2 copies. Normal lifespan. Gower sign present (mimics DMD). CK mildly elevated.',
              icon: Icons.directions_walk_rounded,
              color: const Color(0xFF22C55E),
            ),
          ],
        ),

        HeaderBlock('SMA Assessment Scales'),
        BulletCardBlock(
          title: 'Functional Outcome Measures',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'CHOP-INTEND (0-64): Primary Type I measure; <40 typical untreated; >50-60 with treatment',
            'HINE-2: Motor milestone assessment for infants',
            'HFMSE (0-66): Primary Type II/III measure; >=3 point change = clinically meaningful',
            'RULM (0-37): Upper extremity function for non-ambulatory patients',
            'MFM-32 (0-96): 3 domains; validated ages 6-60; used in SUNFISH trial',
          ],
        ),
      ],
    ),

    // ============ TAB 3: CMT & Friedreich Ataxia ============
    TopicTab(
      title: 'CMT & Friedreich',
      blocks: [
        HeaderBlock('Charcot-Marie-Tooth Disease (CMT/HMSN)'),
        TextBlock(
          'CMT is the most common inherited peripheral neuropathy (~1 in 2,500). Over 100 causative genes identified. Characterized by length-dependent distal-predominant motor and sensory neuropathy. The fundamental electrophysiological distinction: median motor NCV threshold of 38 m/s separates demyelinating from axonal forms.',
          isIntro: true,
        ),
        TableBlock(
          title: 'CMT Classification',
          columns: ['Type', 'Pathophysiology', 'Inheritance', 'NCV', 'Key Gene/Locus'],
          rows: [
            ['CMT1A\n(~50% of\nall CMT)', 'Demyelinating', 'AD', '<38 m/s\n(often\n15-30)', 'PMP22 duplication\n17p11.2'],
            ['CMT1B', 'Demyelinating', 'AD', '<38 m/s', 'MPZ (myelin\nprotein zero)\n1q22'],
            ['CMT2A\n(most common\naxonal)', 'Axonal', 'AD', '>38 m/s', 'MFN2\n(mitofusin 2)\n1p36'],
            ['CMT3\n(Dejerine-\nSottas)', 'Severe\ndemyelinating', 'AD/AR', '<10 m/s', 'PMP22, MPZ,\nor EGR2\n(point mutations)'],
            ['CMT4', 'Demyelinating', 'AR', '<38 m/s', 'Multiple genes;\nconsanguineous\npopulations'],
            ['CMTX1\n(2nd most\ncommon)', 'Intermediate', 'X-linked', '25-40 m/s\n(males)', 'GJB1\n(connexin 32)\nXq13'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        BulletCardBlock(
          title: 'CMT1A Clinical Features',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'PMP22 gene DUPLICATION on 17p11.2 (gene dosage effect)',
            'Onset: First two decades; slowly progressive',
            'Stork legs / inverted champagne bottle appearance',
            'Pes cavus (high-arched feet) and hammertoes',
            'Foot drop → steppage gait',
            'Depressed/absent deep tendon reflexes',
            'Sensory loss: stocking-glove distribution',
            'Biopsy: ONION BULB formation (concentric Schwann cell layers from repeated de/remyelination)',
            'AFOs for foot drop; surgical foot reconstruction when needed',
          ],
        ),
        PearlBlock(
          'Board Pearl — Reciprocal Deletion = HNPP',
          'The reciprocal DELETION of 17p11.2 (opposite of CMT1A duplication) causes HNPP (hereditary neuropathy with liability to pressure palsies). HNPP: Episodic demyelinating neuropathies at compression sites. Biopsy: "tomaculous" (sausage-shaped) myelin swellings.',
        ),
        PearlBlock(
          'Board Pearl — Vincristine Contraindicated in CMT',
          'Vincristine (chemotherapy) causes devastating, IRREVERSIBLE worsening of neuropathy in CMT patients. All CMT patients should carry medical alert identification. Other neurotoxic drugs to use with caution: nitrofurantoin, metronidazole, cisplatin, taxanes.',
        ),
        BulletCardBlock(
          title: 'CMT Rehabilitation',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'No disease-modifying therapy available for any CMT form',
            'AFOs for foot drop (most commonly prescribed intervention)',
            'Custom shoe inserts for pes cavus (OTC insufficient)',
            'Hand therapy for intrinsic weakness; adaptive equipment (built-up handles, button hooks)',
            'Surgical foot reconstruction when bracing fails',
            'Neuropathic pain in 50-70% — gabapentin, pregabalin, duloxetine',
            'Avoid eccentric overload that could accelerate axonal damage',
          ],
        ),

        HeaderBlock('Friedreich Ataxia (FRDA)'),
        TextBlock(
          'Most common hereditary ataxia (~1 in 50,000). Autosomal recessive; FXN gene on chromosome 9q21.11 encoding frataxin (mitochondrial protein for iron-sulfur cluster assembly). Approximately 96% homozygous for GAA trinucleotide repeat expansion in intron 1.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Genetics',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Normal alleles: 5-33 repeats; premutation: 34-65; pathogenic: 66 to >1,700',
            'GAA repeat causes heterochromatin formation → transcriptional silencing',
            'Frataxin levels reduced to 5-30% of normal',
            'Repeat size inversely correlates with age of onset; directly correlates with severity',
            'Frataxin deficiency → mitochondrial iron accumulation → oxidative stress → cellular energy failure',
          ],
        ),
        BulletCardBlock(
          title: 'Clinical Features',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Onset typically before age 25 (mean 10-15 years)',
            'Progressive gait and limb ATAXIA (cerebellar + sensory)',
            'ABSENT deep tendon reflexes (dorsal root ganglion loss)',
            'POSITIVE Babinski sign (corticospinal tract involvement)',
            'Dysarthria; loss of proprioception and vibration sense (dorsal columns)',
            'Nystagmus',
            'Scoliosis: >80% (100% if onset before age 10)',
            'HYPERTROPHIC CARDIOMYOPATHY: ~60%, leading cause of death',
            'Pes cavus and hammertoes (overlaps with CMT phenotype)',
            'Diabetes mellitus: ~30% (pancreatic beta-cell dysfunction)',
            'Wheelchair-dependent within 10-15 years of onset',
            'Mean age of death: ~37 years (primarily cardiac causes)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Areflexia + Babinski = Friedreich',
          'The combination of AREFLEXIA (LMN finding from dorsal root ganglion loss) and BABINSKI sign (UMN finding from corticospinal tract degeneration) in a young patient with progressive ataxia is HIGHLY SUGGESTIVE of Friedreich ataxia. This mixed UMN/LMN pattern is a classic board-tested association.',
        ),
        PearlBlock(
          'Board Pearl — Friedreich Is Unique Among Ataxias',
          'Friedreich ataxia is unique: (1) Autosomal RECESSIVE (not dominant like most hereditary ataxias), (2) Causes ABSENT DTRs (not hyperreflexia), (3) Scoliosis in 100% with onset before age 10, (4) Cardiomyopathy is leading cause of death.',
        ),
        BulletCardBlock(
          title: 'Diagnosis & Treatment',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Genetic testing: GAA repeat expansion is definitive',
            'NCS: Axonal sensory neuropathy (absent/reduced SNAPs; normal motor)',
            'Echo: Concentric LV hypertrophy',
            'MRI: Cervical spinal cord atrophy',
            'Omaveloxolone (Skyclarys): FIRST and only FDA-approved treatment (Feb 2023)',
            'Nrf2 activator; enhances antioxidant gene expression; 150 mg daily; ages 16+',
            'MOXIe trial: mFARS improvement of -2.40 points vs placebo (p=0.014)',
          ],
        ),

        HeaderBlock('Peripheral Neuropathies Comparison'),
        TableBlock(
          title: 'CMT1A vs GBS vs Friedreich',
          columns: ['Feature', 'CMT1A', 'GBS (AIDP)', 'Friedreich'],
          rows: [
            ['Inheritance', 'AD', 'Acquired', 'AR'],
            ['Chromosome', '17p11.2', 'N/A', '9q21'],
            ['Onset', 'Childhood/\nadolescence', 'Acute\n(any age)', '<25 years'],
            ['Course', 'Slowly\nprogressive', 'Acute then\nrecovery', 'Progressive'],
            ['Reflexes', 'Decreased', 'Absent', 'Absent +\nBabinski'],
            ['Key Finding', 'Onion bulbs,\npes cavus,\nNCV <38', 'CSF protein ↑\nnormal WBC\n(albumino-\ncytologic\ndissociation)', 'GAA repeat,\ncardiomyopathy,\nscoliosis'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),

        HeaderBlock('Guillain-Barre Syndrome (GBS/AIDP)'),
        BulletCardBlock(
          title: 'Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Acute ascending weakness (distal to proximal)',
            'Areflexia/hyporeflexia',
            'CSF: ALBUMINO-CYTOLOGIC DISSOCIATION (elevated protein, normal cell count)',
            'Often preceded by viral illness or Campylobacter jejuni infection',
            'Treatment: IVIG or plasmapheresis',
            'CIDP: Chronic form lasting >8 weeks',
          ],
        ),
      ],
    ),

    // ============ TAB 4: Congenital Myopathies & Myotonic Dystrophy ============
    TopicTab(
      title: 'Myopathies & DM',
      blocks: [
        HeaderBlock('Congenital Myopathies'),
        TextBlock(
          'Genetically diverse group presenting at birth/infancy with hypotonia and weakness, defined by characteristic STRUCTURAL abnormalities on muscle biopsy. Key distinction from muscular dystrophies: generally STATIC or slowly progressive, CK normal or mildly elevated, biopsy shows structural changes (rods, cores, central nuclei) rather than dystrophic necrosis/fibrosis.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Congenital Myopathies by Biopsy',
          columns: ['Type', 'Biopsy Hallmark', 'Key Gene', 'Critical Association'],
          rows: [
            ['Nemaline\nmyopathy', 'Nemaline RODS\n(Z-disc-derived)\nGomori trichrome\nstain', 'NEB (nebulin, AR)\nACTA1 (actin)', 'Facial weakness,\nrespiratory\ninsufficiency'],
            ['Central core\ndisease', 'Central CORES\n(devoid of\nmitochondria)\nNADH/oxidative\nstains', 'RYR1\n(ryanodine\nreceptor 1)\nAD most', 'MALIGNANT\nHYPERTHERMIA\nSUSCEPTIBILITY'],
            ['Centronuclear/\nmyotubular\nmyopathy', 'Centrally located\nNUCLEI\nH&E stain', 'MTM1 (X-linked,\nmost severe)\nDNM2 (AD, milder)\nBIN1 (AR)', 'X-linked form:\nsevere neonatal,\noften fatal'],
            ['Congenital\nfiber type\ndisproportion', 'Type 1 fibers\n>12-25% smaller\nthan type 2\nATPase stain', 'Multiple\n(TPM3, ACTA1,\nRYR1, SELENON)', 'Often improves\nwith age'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        PearlBlock(
          'Board Pearl — Central Core Disease = MH Risk',
          'Central core disease and malignant hyperthermia susceptibility share a common genetic basis through RYR1 mutations. ALL patients with central core disease (and family members with RYR1 mutations) must be treated as MH-susceptible. Volatile halogenated anesthetics and SUCCINYLCHOLINE are absolutely CONTRAINDICATED.',
        ),

        HeaderBlock('Myotonic Dystrophy Type 1 (DM1)'),
        TextBlock(
          'Most common muscular dystrophy in adults. Autosomal dominant; CTG trinucleotide repeat expansion in DMPK gene on chromosome 19q13.3. Pathophysiology: Toxic RNA gain-of-function — expanded CUG repeats sequester MBNL1 protein, causing widespread splicing dysregulation (a "spliceopathy").',
          isIntro: true,
        ),
        TableBlock(
          title: 'DM1 Clinical Spectrum',
          columns: ['Form', 'CTG Repeats', 'Onset', 'Key Features'],
          rows: [
            ['Premutation', '35-49', 'Asymptomatic', 'No symptoms;\nrepeat may expand\nin offspring'],
            ['Mild/Late-onset', '50-150', 'Middle age/\nelderly', 'Cataracts, mild\nmyotonia;\nnormal lifespan'],
            ['Classic adult', '100-1,000', '10-30 years', 'Myotonia, distal\nweakness, "hatchet\nface," cardiac\nconduction defects,\ncataracts'],
            ['Congenital\n(>1,000;\noften\n1,500-4,000+)', '>1,000', 'Birth', 'Severe hypotonia,\nrespiratory failure,\nfacial diplegia,\nTENTED UPPER LIP,\narthrogryposis,\nmoderate-severe ID;\n~25% neonatal\nmortality;\nALMOST EXCLUSIVELY\nMATERNAL transmission'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        PearlBlock(
          'Board Pearl — Genetic Anticipation',
          'DM1 is THE classic example of genetic anticipation — CTG repeat expands with each generation (especially maternal transmission), causing earlier onset and more severe disease. Classic generational pattern: Grandparent with cataracts → Parent with adult DM1 → Child with CONGENITAL DM1.',
        ),
        PearlBlock(
          'Board Pearl — Congenital DM1: Examine the Mother',
          'When an infant presents with unexplained hypotonia and joint contractures, ALWAYS examine the MOTHER for signs of myotonic dystrophy (grip myotonia, facial weakness, cataracts). The mother may be undiagnosed. Congenital DM1 is almost exclusively maternally transmitted.',
        ),
        BulletCardBlock(
          title: 'Classic Adult DM1 Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Myotonia: Delayed muscle relaxation after contraction (cannot release handgrip; percussion myotonia)',
            'EMG: "Dive bomber" sound (waxing-waning amplitude and frequency)',
            'DISTAL weakness (unlike most myopathies which are proximal)',
            '"Hatchet face": Temporalis and masseter atrophy + ptosis',
            'Cardiac: AV block, bundle branch block, risk of SUDDEN CARDIAC DEATH',
            'Posterior subcapsular CATARACTS (often earliest detectable sign)',
            'GI dysmotility; insulin resistance/diabetes; hypogonadism',
            'Cognitive decline; excessive daytime somnolence',
          ],
        ),

        HeaderBlock('Myotonic Dystrophy Type 2 (DM2/PROMM)'),
        BulletCardBlock(
          title: 'Key Differences from DM1',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'CCTG tetranucleotide repeat in CNBP gene on chromosome 3q21.3',
            'Onset: Adulthood (20-60 years)',
            'PROXIMAL weakness (unlike DISTAL in DM1)',
            'No severe congenital form',
            'No clear genetic anticipation',
            'Generally milder than DM1',
          ],
        ),
      ],
    ),

    // ============ TAB 5: Brachial Plexus & Floppy Infant ============
    TopicTab(
      title: 'Brachial Plexus',
      blocks: [
        HeaderBlock('Neonatal Brachial Plexus Palsy'),
        TextBlock(
          'Obstetric brachial plexus palsy results from traction injury to the brachial plexus during delivery. Classification is based on the nerve roots involved. Erb-Duchenne palsy (upper trunk C5-C6) is by far the most common pattern.',
          isIntro: true,
        ),

        TableBlock(
          title: 'Brachial Plexus Palsy Types',
          columns: ['Feature', 'Erb-Duchenne\n(C5-C6)', 'Klumpke\n(C8-T1)', 'Total\n(C5-T1)'],
          rows: [
            ['Trunk', 'Upper', 'Lower', 'All'],
            ['Position', 'WAITER\'S TIP:\nAdducted, internally\nrotated shoulder;\nextended elbow;\npronated forearm', 'CLAW HAND', 'FLAIL ARM\n(complete flaccid\nparalysis)'],
            ['Mechanism', 'Neck traction\nduring delivery', 'Violent upward\npull of shoulder', 'Severe traction'],
            ['Muscles\nAffected', 'Biceps, deltoid,\nsupraspinatus,\ninfraspinatus', 'Hand intrinsics;\nfinger flexors', 'All upper\nextremity'],
            ['Horner\nSyndrome', 'No', 'Possible\n(ptosis, miosis,\nanhidrosis)', 'Possible'],
            ['Recovery', '80-90%\nspontaneous', 'Variable', 'POOR prognosis'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        PearlBlock(
          'Board Pearl — Waiter\'s Tip = Erb\'s Palsy',
          'The waiter\'s tip position is PATHOGNOMONIC for Erb-Duchenne palsy (C5-C6). Arm hangs at side in adduction and internal rotation, elbow extended, forearm pronated. 80-90% recover spontaneously. Klumpke (C8-T1) is rare in traumatic birth palsy and presents with claw hand +/- Horner syndrome.',
        ),

        HeaderBlock('Assessment & Surgical Timing'),
        BulletCardBlock(
          title: 'Evaluation & Intervention',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Narakas classification: 4 groups based on severity',
            'Toronto Test Score: Standardized assessment tool',
            'Cookie test: Functional hand-to-mouth ability',
            'KEY INDICATOR for microsurgery: Absent BICEPS recovery by 3-6 months',
            'If antigravity biceps function has NOT returned by 3-6 months → nerve reconstruction',
          ],
        ),

        HeaderBlock('Acute Flaccid Myelitis'),
        BulletCardBlock(
          title: 'Enterovirus D68-Associated',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Associated with Enterovirus D68 infection',
            'Anterior horn cell disease (polio-like illness)',
            'Weakness pattern: Proximal > distal',
            'Poor prognosis for recovery',
          ],
        ),

        HeaderBlock('Floppy Infant — Central vs Peripheral'),
        TableBlock(
          title: 'Central vs Peripheral Hypotonia',
          columns: ['Feature', 'Central\nHypotonia', 'Peripheral\nHypotonia'],
          rows: [
            ['DTRs', 'Normal or\nINCREASED', 'DECREASED\nor absent'],
            ['Babinski', 'Extensor\n(present)', 'Flexor or\nabsent'],
            ['Muscle bulk', 'Normal or\nmildly reduced', 'ATROPHIED'],
            ['Fasciculations', 'Absent', 'May be present\n(SMA)'],
            ['Cognition', 'Often\nimpaired', 'Usually\nspared\n(except\ncongenital DM1)'],
            ['Seizures', 'Common', 'Uncommon'],
            ['Tongue\nfasciculations', 'Absent', 'Present\nin SMA'],
            ['CK', 'Normal', 'Variable:\nelevated in\ndystrophies;\nnormal in\nSMA/CMT'],
            ['Antigravity\nmovements', 'Often\npreserved', 'Often reduced\nor absent'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
        PearlBlock(
          'Board Pearl — Floppy Infant Approach',
          'Hypotonic infant with brisk reflexes + preserved antigravity movements = CENTRAL cause (HIE, chromosomal, CP). Hypotonic infant with absent reflexes + poor antigravity + fasciculations = PERIPHERAL cause (SMA, congenital muscular dystrophy, congenital myopathy). Central causes: Also consider Trisomy 21, Prader-Willi, metabolic disorders.',
        ),
      ],
    ),

    // ============ TAB 6: Anesthesia, Exercise & Management ============
    TopicTab(
      title: 'Management',
      blocks: [
        HeaderBlock('Anesthesia Risks in NMDs'),
        TextBlock(
          'Anesthesia in neuromuscular diseases carries specific and potentially fatal risks. Knowledge of which agents are contraindicated for each condition is a high-yield board topic.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Anesthesia Considerations',
          columns: ['Condition', 'Succinylcholine', 'Volatile\nAnesthetics', 'Specific Risk', 'Recommended'],
          rows: [
            ['DMD/BMD', 'ABSOLUTELY\ncontraindicated', 'Avoid\n(risk)', 'Fatal hyperkalemia,\nrhabdomyolysis\n(unstable\nsarcolemma)', 'TIVA'],
            ['Central core\n(RYR1)', 'ABSOLUTELY\ncontraindicated', 'ABSOLUTELY\ncontraindicated', 'MALIGNANT\nHYPERTHERMIA', 'Trigger-free;\ndantrolene\navailable'],
            ['SMA', 'Avoid\n(denervation\nhypersensitivity)', 'Caution\n(respiratory)', 'Respiratory\ncompromise', 'TIVA\npreferred'],
            ['Myotonic\ndystrophy', 'Avoid\n(worsens\nmyotonia)', 'Caution', 'Cardiac\narrhythmias;\nrespiratory\ndepression', 'Cardiac\nmonitoring;\navoid triggers'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl — Succinylcholine in DMD',
          'Succinylcholine is ABSOLUTELY CONTRAINDICATED in DMD and ALL dystrophinopathies. Administration can trigger FATAL hyperkalemia and rhabdomyolysis due to the unstable sarcolemma. Total IV anesthesia (TIVA) is the safest approach. Same applies to central core disease (RYR1) — MH risk.',
        ),

        HeaderBlock('Exercise Prescription in NMDs'),
        BulletCardBlock(
          title: 'General Principles',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Submaximal aerobic exercise is safe and beneficial in most NMDs',
            'Swimming and cycling especially recommended (low-impact, reduced eccentric loading)',
            'AVOID eccentric and high-resistance exercise in dystrophic conditions (unstable sarcolemma)',
            'Moderate-intensity, low-impact strengthening preferred',
            'RPE should remain moderate (Borg 11-13/20)',
            'Heart rate: 50-70% age-predicted maximum',
            'DMOS lasting >24 hours or dark urine = excessive intensity',
            'Principle: "Use it carefully, but use it" — inactivity accelerates deconditioning',
          ],
        ),
        BulletCardBlock(
          title: 'Stretching & Standing (Birnkrant 2018)',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'DMD stretching: Ankles, knees, hip flexors, IT bands — 4-6 times per week',
            'Night AFOs to prevent/delay equinovarus contractures',
            'KAFOs may prolong ambulation in selected patients',
            'Standing programs for non-ambulatory patients (bone density, contracture prevention)',
            'Power mobility prescribed BEFORE complete loss of ambulation',
          ],
        ),
        PearlBlock(
          'Board Pearl — Overwork Weakness',
          'Overwork weakness (first described in polio survivors) = paradoxical, potentially permanent decline in muscle strength from exercise exceeding regenerative capacity. In dystrophic conditions, the unstable sarcolemma makes fibers vulnerable to contraction-induced damage, especially during ECCENTRIC contractions.',
        ),

        HeaderBlock('NMD Management Checklist'),
        TableBlock(
          title: 'Multidisciplinary Management',
          columns: ['Domain', 'Monitoring', 'Interventions'],
          rows: [
            ['Respiratory', 'FVC, peak cough flow,\nMIP/MEP, SpO2, pCO2,\nsleep study', 'Breath stacking\n(FVC <60%);\ncough assist\n(FVC <50%);\nnocturnal NIV\n(FVC <50%)'],
            ['Cardiac', 'ECG, echo,\ncardiac MRI,\nHolter', 'ACE inhibitors/ARBs;\nbeta-blockers;\neplerenone'],
            ['Orthopedic', 'Scoliosis XR,\nROM assessment,\ncontracture check', 'Stretching, bracing,\nserial casting,\nsurgery (scoliosis)'],
            ['Nutrition', 'Weight, swallow\nstudies, BMI', 'Diet modification,\nG-tube if needed,\nvitamin D + calcium'],
            ['Function', 'Timed tests,\nfunctional scales\n(NSAA, HFMSE)', 'Wheelchair,\nADL equipment,\nPT/OT, standing'],
            ['Psychosocial', 'Depression/anxiety\nscreening, school\nperformance', 'Counseling,\npeer support,\ntransition planning'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),

        HeaderBlock('Clinical Assessment Scales'),
        TableBlock(
          title: 'Functional Scales in NMDs',
          columns: ['Scale', 'Disease', 'Range', 'Measures'],
          rows: [
            ['Vignos', 'DMD', '1-10', 'Lower extremity\nfunction'],
            ['Brooke', 'DMD', '1-6', 'Upper extremity\nfunction'],
            ['NSAA', 'DMD', '0-34', 'Ambulatory motor\nfunction'],
            ['6MWT', 'DMD, SMA', 'Distance (m)', 'Functional\nendurance'],
            ['CHOP-INTEND', 'SMA Type I', '0-64', 'Infant motor'],
            ['HFMSE', 'SMA II/III', '0-66', 'Gross motor'],
            ['RULM', 'SMA non-amb', '0-37', 'Upper extremity'],
            ['mFARS', 'Friedreich', '0-99', 'Ataxia severity'],
            ['CMTNS', 'CMT', '0-36', 'Disease severity'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),

        HeaderBlock('Genetic Counseling Principles'),
        BulletCardBlock(
          title: 'Inheritance Patterns & Counseling',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'X-linked (DMD/BMD): 50% chance mother is carrier; ~30% de novo; carrier testing available',
            'Autosomal recessive (SMA, Friedreich): 25% recurrence risk; carrier screening for SMA increasingly offered preconceptionally',
            'Autosomal dominant (CMT1A, DM1): 50% risk per offspring; variable expressivity',
            'Trinucleotide repeats (DM1, Friedreich): Instability between generations; massive expansion in DM1 maternal transmission → congenital form',
            'SMA newborn screening (RUSP 2018) enables presymptomatic treatment',
          ],
        ),

        HeaderBlock('Key Board Review — NMD Overview'),
        TableBlock(
          title: 'Master NMD Comparison Table',
          columns: ['Disease', 'Inheritance', 'Gene/Protein', 'Key Feature', 'CK'],
          rows: [
            ['DMD', 'X-linked\nrecessive', 'Dystrophin\n(absent)\nXp21.2', 'Gower sign,\ncalf pseudo-\nhypertrophy,\nloss of ambulation\nage 9-13', '10,000-\n50,000'],
            ['BMD', 'X-linked\nrecessive', 'Dystrophin\n(reduced)\nXp21.2', 'Later onset,\ncardiac may\npredominate,\nambulate past 16', '2,000-\n20,000'],
            ['SMA', 'Autosomal\nrecessive', 'SMN1\n5q13', 'Anterior horn\ncell loss,\ntongue fasci-\nculations', 'Normal-\nmild ↑'],
            ['CMT1A', 'Autosomal\ndominant', 'PMP22\n17p11.2', 'Pes cavus,\nonion bulbs,\nNCV <38 m/s', 'Normal'],
            ['Friedreich', 'Autosomal\nrecessive', 'FXN (frataxin)\n9q21', 'Areflexia +\nBabinski,\ncardiomyopathy', 'Normal'],
            ['DM1', 'Autosomal\ndominant', 'DMPK\n19q13.3\n(CTG repeat)', 'Myotonia,\nanticipation,\ncongenital form', 'Normal-\nmild ↑'],
            ['Central\ncore', 'AD (most)', 'RYR1\n19q13', 'Malignant\nhyperthermia\nrisk', 'Normal-\nmild ↑'],
            ['Nemaline', 'Variable', 'NEB, ACTA1', 'Nemaline rods\non Gomori\ntrichrome', 'Normal-\nmild ↑'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
      ],
    ),
  ],
);
