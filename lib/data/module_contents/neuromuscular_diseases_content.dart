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
          'DMD is an X-linked recessive dystrophinopathy caused by mutations at Xp21 resulting in absent dystrophin (<3%). The dystrophin gene is the largest gene in the human body. Onset occurs between ages 2-5 years with progressive proximal weakness.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Clinical Presentation',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Gower\'s sign: Proximal pelvic girdle weakness — child climbs up own legs to stand',
            'Pseudohypertrophy of calves: Fat and connective tissue infiltration (NOT actual muscle hypertrophy)',
            'Earliest weakness: Neck flexors during preschool years',
            'Pelvic girdle weakness precedes shoulder girdle by years',
            '>40-50% muscle power loss by age 6',
            'Loss of ambulation by age 8-12 (when knee extension <3/5 or 30-ft walk >12 sec)',
          ],
        ),
        BulletCardBlock(
          title: 'Diagnostic Workup',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'CK: Markedly elevated 10,000-50,000+ IU/L',
            'EMG: Myopathic pattern',
            'Genetic testing: Dystrophin gene deletion/duplication at Xp21',
            'Muscle biopsy: Absent dystrophin on immunostaining',
          ],
        ),

        HeaderBlock('Musculoskeletal Complications'),
        BulletCardBlock(
          title: 'Scoliosis in DMD',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Prevalence: 33-100% of patients (50% by ages 12-15)',
            'Spinal orthotics do NOT change the natural history of scoliosis',
            'Surgical intervention recommended before curvature >35° and FVC >35%',
            'FVC <40% = contraindication to scoliosis surgery',
          ],
        ),
        PearlBlock(
          'Board Pearl — Scoliosis Surgery Timing',
          'Spinal fusion should be considered early in DMD — before the curve exceeds 35° and while FVC remains >35%. Once pulmonary function declines too far, surgical risk outweighs benefit.',
        ),

        HeaderBlock('Cardiopulmonary Decline'),
        BulletCardBlock(
          title: 'Pulmonary',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'FVC declines linearly from age 10 to 20',
            'Respiratory failure is a leading cause of death',
          ],
        ),
        BulletCardBlock(
          title: 'Cardiac',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'EKG abnormalities in nearly all patients >13 years',
            'Characteristic Q-waves in lateral leads',
            'Cardiomyopathy develops by >10 years, nearly all affected by >18 years',
            'Life expectancy: Late teens to early 20s',
          ],
        ),

        HeaderBlock('Corticosteroid Therapy'),
        BulletCardBlock(
          title: 'Steroid Management',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Prednisone or deflazacort prolongs ambulation by approximately 2 years',
            'Start when motor plateau occurs, typically age 4-6',
            'Deflazacort may have fewer side effects than prednisone',
          ],
        ),

        HeaderBlock('Becker Muscular Dystrophy (BMD)'),
        BulletCardBlock(
          title: 'Becker MD — Key Differences from DMD',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Same gene (Xp21) but REDUCED dystrophin (20-80%) rather than absent',
            'Later onset: >5 years of age',
            'Ambulatory past age 16 (vs 8-12 in DMD)',
            '75% have EKG abnormalities',
            'Milder overall course with longer life expectancy',
          ],
        ),
        PearlBlock(
          'Board Pearl — Reading Frame Hypothesis',
          'Loss of the reading frame = DMD (severe, no functional dystrophin). Maintained reading frame = BMD (milder, partially functional dystrophin). This explains why different mutations in the same gene produce different severity.',
        ),

        TableBlock(
          title: 'DMD vs Becker MD',
          columns: ['Feature', 'DMD', 'Becker MD'],
          rows: [
            ['Inheritance', 'X-linked recessive', 'X-linked recessive'],
            ['Gene/Locus', 'Xp21', 'Xp21'],
            ['Dystrophin', 'Absent (<3%)', 'Reduced (20-80%)'],
            ['Onset', '2-5 years', '>5 years'],
            ['Ambulation Loss', 'Age 8-12', 'Past age 16'],
            ['CK', '10,000-50,000+', 'Elevated (lower)'],
            ['Reading Frame', 'Lost', 'Maintained'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
      ],
    ),

    // ============ TAB 2: SMA ============
    TopicTab(
      title: 'SMA',
      blocks: [
        HeaderBlock('Spinal Muscular Atrophy (SMA)'),
        TextBlock(
          'All SMA types are autosomal recessive, caused by SMN1 gene deletion on chromosome 5q11-q13. SMA results in degeneration of anterior horn cells in the spinal cord. Pulmonary complications are the #1 cause of mortality in childhood neuromuscular diseases.',
          isIntro: true,
        ),
        MnemonicBlock(
          'SMA Types Mnemonic: 1-2-3 = None-Sit-Stand',
          'Type I: NEVER sits. Type II: Sits but NEVER stands. Type III: Stands and walks then loses ability.',
        ),

        HeaderBlock('SMA Type I — Werdnig-Hoffmann Disease'),
        BulletCardBlock(
          title: 'Type I (Severe)',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Onset: Birth to 6 months',
            'NEVER achieves sitting',
            'Frog leg position (hypotonia)',
            'Diaphragmatic (paradoxical) breathing pattern',
            'Bell-shaped chest',
            'CK: Normal',
            'Death usually by age 2-3 years without intervention',
          ],
        ),

        HeaderBlock('SMA Type II — Intermediate'),
        BulletCardBlock(
          title: 'Type II',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Onset: 6-18 months',
            'Sits unsupported but NEVER stands independently',
            'Tongue fasciculations present in ~70%',
            'Normal to advanced intellect',
            'Tremulous baseline on EKG (pathognomonic finding)',
          ],
        ),
        PearlBlock(
          'Board Pearl — SMA Type II EKG',
          'A tremulous baseline on EKG is pathognomonic for SMA Type II. This finding, combined with tongue fasciculations and normal intellect in a child who can sit but not stand, is a classic board question presentation.',
        ),

        HeaderBlock('SMA Type III — Kugelberg-Welander Disease'),
        BulletCardBlock(
          title: 'Type III',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Onset: >18 months',
            'Walks independently then gradually loses ability',
            'Gower\'s sign present (mimics DMD presentation)',
            'Relatively static course',
            'Good survival dependent on respiratory status',
          ],
        ),

        HeaderBlock('SMA Type IV — Adult Onset'),
        BulletCardBlock(
          title: 'Type IV',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Onset: Adulthood',
            'Mildest form of SMA',
            'Slow progression',
          ],
        ),

        HeaderBlock('Gene Therapy Revolution'),
        BulletCardBlock(
          title: 'Disease-Modifying Treatments',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Nusinersen (Spinraza): Intrathecal antisense oligonucleotide, FDA approved 2016, all SMA types',
            'Onasemnogene abeparvovec (Zolgensma): One-time IV gene replacement therapy, FDA approved 2019, Type I patients <2 years old',
            'Risdiplam (Evrysdi): Oral SMN2 splicing modifier, FDA approved 2020, patients ≥2 months old',
          ],
        ),
        PearlBlock(
          'Board Pearl — SMA Therapies',
          'Three FDA-approved therapies now exist for SMA. Zolgensma is the only one-time gene therapy (IV, for Type I <2yr). Spinraza requires repeated intrathecal injections. Evrysdi is the only oral option.',
        ),

        TableBlock(
          title: 'SMA Types Comparison',
          columns: ['Feature', 'Type I', 'Type II', 'Type III'],
          rows: [
            ['Eponym', 'Werdnig-\nHoffmann', '—', 'Kugelberg-\nWelander'],
            ['Onset', 'Birth–6 mo', '6–18 mo', '>18 mo'],
            ['Best Motor', 'Never sits', 'Sits, never\nstands', 'Walks then\nloses'],
            ['CK', 'Normal', 'Normal/mild ↑', 'Normal/mild ↑'],
            ['Survival', '<2–3 yr\n(untreated)', 'Variable', 'Good\n(resp dependent)'],
            ['Key Finding', 'Frog legs,\nbell chest', 'Tremulous\nEKG', 'Gower\'s sign'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
      ],
    ),

    // ============ TAB 3: CMT & GBS ============
    TopicTab(
      title: 'CMT & GBS',
      blocks: [
        HeaderBlock('Charcot-Marie-Tooth Disease (CMT/HMSN)'),
        TextBlock(
          'CMT (hereditary motor and sensory neuropathy) is the most common hereditary neuropathy. Multiple subtypes exist with different inheritance patterns and pathophysiology.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'CMT Type I (CMT1A) — Demyelinating',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Most common type: 70-80% of CMT cases',
            'Autosomal dominant inheritance',
            'PMP22 gene duplication on chromosome 17p11.2-12',
            'Demyelinating neuropathy with onion bulb formation on biopsy',
            'Stork legs / inverted champagne bottle appearance',
            'Pes cavus (high-arched feet) and hammer toes',
            'AFOs typically prescribed for foot drop',
          ],
        ),
        BulletCardBlock(
          title: 'Other CMT Types',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'CMT Type II (CMT2): Axonal neuropathy, later onset, low amplitudes on NCS',
            'CMT Type III (Dejerine-Sottas): Severe form, onset in infancy',
            'CMT Type IV (Refsum disease): Autosomal recessive, impaired sensation',
          ],
        ),

        HeaderBlock('Guillain-Barré Syndrome (GBS/AIDP)'),
        BulletCardBlock(
          title: 'Acute Inflammatory Demyelinating Polyradiculoneuropathy',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Acute ascending weakness (distal to proximal)',
            'Areflexia / hyporeflexia',
            'CSF: Albumino-cytologic dissociation (elevated protein, normal cell count)',
            'Often preceded by viral illness or Campylobacter jejuni infection',
            'Treatment: IVIG or plasmapheresis',
            'CIDP: Chronic form lasting >8 weeks',
          ],
        ),
        PearlBlock(
          'Board Pearl — GBS CSF',
          'Albumino-cytologic dissociation (high protein, normal WBC) in CSF is the hallmark lab finding of GBS. This distinguishes it from infectious causes of weakness where pleocytosis would be expected.',
        ),

        HeaderBlock('Friedreich Ataxia'),
        BulletCardBlock(
          title: 'Clinical Features',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Autosomal recessive, chromosome 9q21',
            'Frataxin gene mutation (mitochondrial protein)',
            'GAA trinucleotide repeat expansion',
            'Onset before age 20 years',
            'Progressive gait ataxia',
            'Absent deep tendon reflexes',
            'Dysarthria and proprioception loss',
            'Nystagmus',
            'Scoliosis: 100% if onset before age 10',
            'Cardiomyopathy — leading cause of death',
          ],
        ),
        PearlBlock(
          'Board Pearl — Friedreich Ataxia',
          'Friedreich ataxia is unique among ataxias: it is autosomal recessive (not dominant like most), causes absent DTRs (not hyperreflexia), and scoliosis occurs in 100% of patients with onset before age 10.',
        ),

        TableBlock(
          title: 'Peripheral Neuropathies Comparison',
          columns: ['Feature', 'CMT1A', 'GBS', 'Friedreich'],
          rows: [
            ['Inheritance', 'AD', 'Acquired', 'AR'],
            ['Chromosome', '17p11.2', 'N/A', '9q21'],
            ['Onset', 'Childhood/\nadolescence', 'Acute\n(any age)', '<20 years'],
            ['Course', 'Slowly\nprogressive', 'Acute then\nrecovery', 'Progressive'],
            ['Reflexes', 'Decreased', 'Absent', 'Absent'],
            ['Key Finding', 'Onion bulbs,\npes cavus', 'CSF protein ↑\nnormal WBC', 'GAA repeat,\ncardiomyopathy'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
      ],
    ),

    // ============ TAB 4: Brachial Plexus Palsy ============
    TopicTab(
      title: 'Brachial Plexus',
      blocks: [
        HeaderBlock('Neonatal Brachial Plexus Palsy'),
        TextBlock(
          'Obstetric brachial plexus palsy results from traction injury to the brachial plexus during delivery. Classification is based on the nerve roots involved. Erb-Duchenne palsy (upper trunk) is by far the most common pattern.',
          isIntro: true,
        ),

        HeaderBlock('Erb-Duchenne Palsy (C5-C6)'),
        BulletCardBlock(
          title: 'Upper Trunk Injury',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Most common type of obstetric brachial plexus palsy',
            'Mechanism: Sudden traction to the neck during delivery',
            'Waiter\'s tip position: Adducted and internally rotated shoulder, extended elbow, pronated forearm',
            'Muscles affected: Biceps, deltoid, supraspinatus, infraspinatus',
            'Natural history: 80-90% recover spontaneously',
          ],
        ),
        PearlBlock(
          'Board Pearl — Erb\'s Palsy',
          'The waiter\'s tip position is pathognomonic for Erb-Duchenne palsy (C5-C6). The arm hangs at the side in adduction and internal rotation with the elbow extended and forearm pronated. 80-90% recover spontaneously.',
        ),

        HeaderBlock('Klumpke Palsy (C8-T1)'),
        BulletCardBlock(
          title: 'Lower Trunk Injury',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Mechanism: Violent upward pull of the shoulder',
            'Claw hand deformity',
            'May have Horner syndrome (ptosis, miosis, anhidrosis) from C8-T1 sympathetic chain involvement',
            'Rare in traumatic birth palsy',
          ],
        ),

        HeaderBlock('Total Plexus Palsy'),
        BulletCardBlock(
          title: 'All Roots (C5-T1)',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Involvement of all nerve roots C5-T1',
            'Complete flaccid paralysis of the upper extremity',
            'Worst prognosis of all types',
          ],
        ),

        HeaderBlock('Assessment & Management'),
        BulletCardBlock(
          title: 'Evaluation & Surgical Timing',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Narakas classification: 4 groups based on severity',
            'Toronto Test Score: Standardized assessment tool',
            'Cookie test: Functional assessment of hand-to-mouth ability',
            'Microsurgical intervention: Recommended if no biceps recovery by 3-6 months',
          ],
        ),
        PearlBlock(
          'Board Pearl — Surgical Timing',
          'The key indicator for microsurgical intervention in obstetric brachial plexus palsy is absent biceps recovery by 3-6 months of age. If antigravity biceps function has not returned by this time, nerve reconstruction should be considered.',
        ),

        HeaderBlock('Acute Flaccid Myelitis'),
        BulletCardBlock(
          title: 'Enterovirus D68-Associated Weakness',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Associated with Enterovirus D68 infection',
            'Anterior horn cell disease (polio-like illness)',
            'Weakness pattern: Proximal > distal',
            'Poor prognosis for recovery',
          ],
        ),

        TableBlock(
          title: 'Brachial Plexus Palsy Types',
          columns: ['Feature', 'Erb-Duchenne', 'Klumpke', 'Total'],
          rows: [
            ['Roots', 'C5-C6\n(upper trunk)', 'C8-T1\n(lower trunk)', 'C5-T1\n(all)'],
            ['Position', 'Waiter\'s tip', 'Claw hand', 'Flail arm'],
            ['Mechanism', 'Neck traction', 'Upward pull\nof shoulder', 'Severe\ntraction'],
            ['Horner\'s', 'No', 'Possible', 'Possible'],
            ['Recovery', '80-90%\nspontaneous', 'Variable', 'Poor'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
      ],
    ),

    // ============ TAB 5: Management Principles ============
    TopicTab(
      title: 'Management',
      blocks: [
        HeaderBlock('General NMD Management Principles'),
        TextBlock(
          'Management of neuromuscular diseases requires a multidisciplinary approach addressing respiratory, cardiac, musculoskeletal, nutritional, and psychosocial needs. Pulmonary complications are the leading cause of mortality in childhood NMDs.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Respiratory Monitoring',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Forced vital capacity (FVC): Serial monitoring for decline',
            'Peak cough flow: Assess cough effectiveness',
            'Sleep studies for nocturnal hypoventilation',
            'Noninvasive ventilation (BiPAP) when indicated',
          ],
        ),
        BulletCardBlock(
          title: 'Cardiac Monitoring',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'EKG: Baseline and serial monitoring',
            'Echocardiogram: Assess ventricular function',
            'ACE inhibitors / beta-blockers for cardiomyopathy',
          ],
        ),
        BulletCardBlock(
          title: 'Musculoskeletal Management',
          themeColor: const Color(0xFFD946EF),
          backgroundColor: const Color(0xFFFDF4FF),
          points: [
            'Scoliosis surveillance with serial radiographs',
            'Contracture prevention: Stretching, bracing, serial casting',
            'Exercise: Low to moderate intensity recommended',
            'Avoid eccentric exercise and overwork weakness',
            'Wheelchair timing: Prescribe before complete loss of ambulation',
          ],
        ),
        BulletCardBlock(
          title: 'Additional Supports',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Nutritional support: Monitor weight, swallowing function',
            'Psychosocial support: Counseling, support groups, school accommodations',
            'Transition planning: Pediatric to adult care coordination',
          ],
        ),

        HeaderBlock('Congenital Myopathies'),
        BulletCardBlock(
          title: 'Overview of Congenital Myopathies',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Central core disease: Associated with malignant hyperthermia risk',
            'Nemaline (rod) myopathy: Rod-shaped inclusions on biopsy',
            'Myotubular (centronuclear) myopathy: Central nuclei on biopsy',
            'All present with hypotonia and weakness in infancy',
          ],
        ),

        HeaderBlock('Myotonic Dystrophy'),
        BulletCardBlock(
          title: 'DM1 — Myotonic Dystrophy Type 1',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Autosomal dominant, chromosome 19q13.3',
            'DMPK gene, CTG trinucleotide repeat expansion',
            'Normal repeats: 5-35; pathologic: up to 2,000+',
            'Genetic anticipation: Worsens with successive generations',
            'Congenital form is most severe — triangular (tented) mouth',
            'Congenital form: Almost exclusively maternal transmission',
            'Myotonia, distal weakness, cataracts, cardiac conduction defects',
          ],
        ),
        BulletCardBlock(
          title: 'DM2 — Myotonic Dystrophy Type 2',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Chromosome 3, CCTG tetranucleotide repeat expansion',
            'Milder than DM1',
            'Proximal weakness (unlike distal in DM1)',
            'No severe congenital form',
          ],
        ),
        PearlBlock(
          'Board Pearl — Myotonic Dystrophy Anticipation',
          'Myotonic dystrophy is the classic example of genetic anticipation — the CTG repeat expands with each generation, causing earlier onset and more severe disease. The congenital form (most severe) is transmitted almost exclusively by affected mothers.',
        ),

        TableBlock(
          title: 'NMD Management Checklist',
          columns: ['Domain', 'Monitoring', 'Interventions'],
          rows: [
            ['Respiratory', 'FVC, peak cough\nflow, sleep study', 'BiPAP, cough\nassist, suctioning'],
            ['Cardiac', 'EKG, echo', 'ACE inhibitors,\nbeta-blockers'],
            ['Orthopedic', 'Scoliosis XR,\nROM assessment', 'Bracing, surgery,\nstretching'],
            ['Nutrition', 'Weight, swallow\nstudies', 'Diet modification,\nG-tube if needed'],
            ['Function', 'Timed tests,\nFM scales', 'Wheelchair, ADL\nequipment, PT/OT'],
          ],
          headerColor: const Color(0xFFD946EF),
        ),
      ],
    ),
  ],
);
