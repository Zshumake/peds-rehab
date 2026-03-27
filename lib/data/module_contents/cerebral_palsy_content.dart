import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final cerebralPalsyContent = TopicData(
  id: 'cerebral-palsy',
  title: 'Cerebral Palsy',
  tabs: [
    // ============ TAB 1: Definition & Epidemiology ============
    TopicTab(
      title: 'Definition & Epi',
      blocks: [
        HeaderBlock('Definition (Rosenbaum 2007)'),
        TextBlock(
          'Cerebral palsy describes a group of permanent disorders of the development of movement and posture, causing activity limitation, attributed to non-progressive disturbances that occurred in the developing fetal or infant brain. The motor disorders are often accompanied by disturbances of sensation, perception, cognition, communication, behavior, epilepsy, and secondary musculoskeletal problems.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl — "Nonprogressive" Definition',
          'CP is a STATIC encephalopathy — the brain lesion does NOT progress. However, the musculoskeletal manifestations (contractures, hip displacement, scoliosis) DO worsen over time. If a child is losing milestones, reconsider the diagnosis — think neurodegenerative disease instead. The injury must occur during the prenatal, perinatal, or early postnatal period (generally accepted as before age 2 years).',
        ),

        HeaderBlock('Epidemiology'),
        BulletCardBlock(
          title: 'Incidence & Prevalence',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Overall prevalence: 2.0-3.5 per 1,000 live births (most commonly cited: 2-2.5 per 1,000)',
            'CP is the MOST COMMON motor disability in childhood',
            'Prevalence in very preterm (<32 weeks): approximately 60-80 per 1,000',
            'Prevalence in extremely preterm (<28 weeks): approximately 100-150 per 1,000',
            'Prevalence in term infants: approximately 1-1.5 per 1,000',
            'Prevalence in infants <1500 g birth weight: 59.2 per 1,000',
            'Prevalence in infants >2500 g birth weight: 1.33 per 1,000',
            'Prevalence has remained stable despite advances in neonatal care',
            'Approximately 60% of individuals with CP are ambulatory (GMFCS I-III)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Birth Weight & Risk',
          'The risk of CP is approximately 45 times higher in infants <1500 g compared to those >2500 g (59.2 vs 1.33 per 1,000). Despite improvements in NICU care, overall CP prevalence has not declined because increased survival of very preterm infants offsets reductions from other causes.',
        ),

        HeaderBlock('Etiology & Risk Factors'),
        TableBlock(
          title: 'Risk Factors for Cerebral Palsy',
          columns: ['Timing', 'Risk Factors', 'Common MRI Pattern'],
          rows: [
            [
              'Prenatal\n(70-80%)',
              'Brain malformations\nTORCH infections\nGenetic/chromosomal\nMultiple gestation\nIUGR\nPlacental insufficiency\nGestational toxins:\n  • Iodine → diplegia\n  • Mercury → quadriplegia',
              'Malformations\nMigration disorders\nWhite matter injury (PVL)\nFocal infarcts',
            ],
            [
              'Perinatal\n(~10%)',
              'Birth asphyxia/HIE\nNeonatal stroke\nIVH grade III-IV\nMeningitis\nKernicterus\nPrematurity (<32 wk)',
              'Basal ganglia/thalamic\nWatershed injury',
            ],
            [
              'Postnatal',
              'Meningitis/encephalitis\nTraumatic brain injury\nNear-drowning\nStroke\nLead poisoning',
              'Variable by mechanism',
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Only 10% Birth Asphyxia',
          '70-80% of CP cases have PRENATAL etiology. Birth asphyxia accounts for only about 10% of cases — this is a commonly tested misconception. Most CP is NOT caused by intrapartum events. Emerging evidence suggests 14-31% of CP may have a genetic or genomic contribution.',
        ),

        HeaderBlock('MRI Findings in CP'),
        TableBlock(
          title: 'MRI Pattern Correlations',
          columns: ['MRI Pattern', 'Frequency', 'CP Type Association'],
          rows: [
            ['White matter\ninjury/PVL', '~45%', 'Spastic diplegia\n(preterm 24-34 wk)'],
            ['Grey matter/\nbasal ganglia', '~13%', 'Dyskinetic CP\nSpastic quadriplegia\n(term, acute asphyxia)'],
            ['Brain\nmalformations', '~11%', 'Variable\n(often ataxic or mixed)'],
            ['Cortical/\nsubcortical', '~10%', 'Variable (term)'],
            ['Focal infarcts', '~7%', 'Spastic hemiplegia\n(MCA territory)'],
            ['Normal MRI', '~10-14%', 'More common in mild CP\nand ataxic CP'],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — PVL & Diplegia',
          'PVL is the most common neuropathology in preterm CP. Corticospinal fibers to the LEGS run closest to the lateral ventricles, which is why PVL typically produces spastic DIPLEGIA (legs > arms). MRI is abnormal in approximately 86-90% of children with CP.',
        ),
        PearlBlock(
          'Board Pearl — Kernicterus',
          'Hyperbilirubinemia causing kernicterus damages the BASAL GANGLIA (globus pallidus), resulting in DYSKINETIC (athetoid/dystonic) CP, NOT spastic CP. Associated with high-frequency sensorineural hearing loss. Intelligence is often preserved in dyskinetic CP.',
        ),

        HeaderBlock('Neuroprotective Strategies'),
        BulletCardBlock(
          title: 'Prevention of CP',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Antenatal magnesium sulfate (<32 weeks) reduces CP rate by 30-40% (NNT ~63) — now standard of care',
            'Therapeutic hypothermia for moderate-severe HIE (33.5°C for 72 hours, within 6 hours of birth)',
            'Hypothermia reduces death/disability from ~60% to ~45% (NNT 6-7)',
            'Hypothermia has not eliminated CP from HIE but significantly reduced incidence',
          ],
        ),

        HeaderBlock('Early Detection (Novak 2017)'),
        BulletCardBlock(
          title: 'Early Detection Before 5 Months Corrected Age',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'CP can and SHOULD be diagnosed before 5 months corrected age in high-risk infants',
            'Three-tool combination for early diagnosis:',
            '  1. GMA (General Movements Assessment) — 98% sensitivity, 91% specificity',
            '  2. MRI (term equivalent) — 86-89% sensitivity, 89% specificity',
            '  3. HINE (Hammersmith Infant Neurological Examination) — 90% sensitivity',
            'Combined approach yields >97% sensitivity and >99% specificity',
            'GMA: Absent fidgety movements (3-5 months) = best single early predictor of CP',
            'GMA: Cramped-synchronized writhing movements (birth-8 weeks) = high risk',
          ],
        ),
        PearlBlock(
          'Board Pearl — GMA Fidgety Movements',
          'Absent fidgety movements at 3-5 months corrected age is the SINGLE BEST EARLY PREDICTOR of CP (98% sensitivity). Fidgety movements are small, elegant, circular movements. The combination of absent fidgety movements + abnormal MRI yields >95% accuracy for predicting CP.',
        ),

        HeaderBlock('HINE Scoring Thresholds'),
        TableBlock(
          title: 'HINE Scores at 3 Months',
          columns: ['Score', 'Interpretation'],
          rows: [
            ['>57/78', 'Normal'],
            ['<50', 'CP likely'],
            ['<40', 'Likely GMFCS III-V\n(severe motor impairment)'],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — MRI vs CT',
          'The AAN recommends MRI over CT for initial neuroimaging in CP evaluation. MRI is superior for identifying PVL, cortical malformations, and other structural abnormalities. Genetic testing should be considered when MRI is normal, family history is positive, or CP presents with atypical features.',
        ),
      ],
    ),

    // ============ TAB 2: Classification & GMFCS ============
    TopicTab(
      title: 'Classification',
      blocks: [
        HeaderBlock('Motor Type Classification'),
        TextBlock(
          'CP is classified by motor type (physiologic) and topographic distribution (anatomic). The motor type reflects the area of brain injury, while topography describes the pattern of limb involvement. Each classification system uses 5 levels where Level I = mildest and Level V = most severe.',
          isIntro: true,
        ),
        TableBlock(
          title: 'CP Classification by Motor Type',
          columns: ['Type', 'Prevalence', 'Brain Lesion', 'Characteristics'],
          rows: [
            [
              'Spastic',
              '80-85%',
              'Cortex /\npyramidal tract',
              'UMN signs: velocity-dependent\ntone increase, hyperreflexia,\nclonus, Babinski, scissoring\n"Positive" signs: spasticity,\nhyperreflexia, clonus\n"Negative" signs: weakness,\nloss of selective motor control',
            ],
            [
              'Dyskinetic',
              '10-15%',
              'Basal ganglia\n(kernicterus,\nterm asphyxia)',
              'Dystonic (~75% of dyskinetic)\nChoreoathetoid (~25%)\nTone fluctuates\nIntelligence often preserved',
            ],
            [
              'Ataxic',
              '5-6%',
              'Cerebellum',
              'Intention tremor, dysmetria,\nwide-based gait, hypotonia,\ndysdiadochokinesia\nNormal MRI more common',
            ],
            [
              'Mixed',
              '5-10%',
              'Multiple areas',
              'Spastic + dyskinetic\nmost common combination',
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Spasticity vs Dystonia vs Rigidity',
          'Spasticity = velocity-dependent increase in tone (Lance definition). Dystonia = sustained involuntary contractions causing twisting postures (basal ganglia). Rigidity = velocity-INDEPENDENT, "lead-pipe" (not typical in CP). The Hypertonia Assessment Tool (HAT) differentiates these. Tardieu Scale distinguishes spasticity from contracture: R2-R1 = dynamic component (spastic); small R2-R1 = contracture predominates.',
        ),

        HeaderBlock('Topographic Classification'),
        BulletCardBlock(
          title: 'Spastic Subtypes by Topography',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Unilateral (Hemiplegia): One side; arm usually > leg; ~30% of spastic CP; MCA infarct or unilateral PVL; most common in term infants',
            'Bilateral - Diplegia (Little\'s Disease): Both legs > arms; ~35%; bilateral PVL; MOST COMMON in premature infants',
            'Bilateral - Quadriplegia: All 4 limbs + trunk/oromotor; ~15-20%; severe HIE; GMFCS IV-V typically',
            'Triplegia: Three limbs (both legs + one arm)',
            'Double hemiplegia: All four limbs, arms > legs',
            'Monoplegia: Single limb (rare, usually actually hemiplegic)',
          ],
        ),
        PearlBlock(
          'Board Pearl — PVL & Leg Fiber Location',
          'PVL preferentially damages periventricular white matter where motor fibers to the LEGS are located (closest to ventricles). Motor fibers to the arms are more lateral and relatively spared. This is why PVL causes DIPLEGIA (legs > arms). PVL results from vulnerability of pre-myelinating oligodendrocytes during the 24-34 week gestational window.',
        ),

        HeaderBlock('GMFCS — Gross Motor Function Classification System'),
        ScaleBlock(
          scaleName: 'GMFCS-E&R (Expanded & Revised)',
          description:
              'A 5-level classification system for gross motor function. Classified across 5 age bands: <2, 2-4, 4-6, 6-12, 12-18 years. Based on USUAL performance, not best performance. Level is generally stable after age 2 (especially after age 5).',
          columns: ['Level', 'Function (6-12 yr)', 'Key Distinction'],
          rows: [
            ['I', 'Walks without limitations;\nlimitations in advanced\nskills (running, jumping)', 'Walks WITHOUT\nlimitations'],
            ['II', 'Walks with limitations;\ndifficulty on uneven surfaces,\ninclines, long distances', 'Walks WITHOUT device\nbut WITH limitations'],
            ['III', 'Walks using hand-held device\n(crutches, walker) indoors;\nwheelchair for community', 'REQUIRES hand-held\nwalking device'],
            ['IV', 'Self-mobility with limitations;\ntransported or power wheelchair\nin most settings', 'Primarily wheelchair;\nmay STAND for transfers'],
            ['V', 'Transported in manual wheelchair;\nseverely limited antigravity\nhead/trunk control', 'FULLY DEPENDENT\nfor mobility'],
          ],
          boardPearl:
              'Most tested distinction: Level II vs III. Level II walks independently (no device) but with limitations. Level III uses a hand-held device. This is the "device" dividing line.',
        ),

        DiagramBlock(
          title: 'GMFCS Levels at a Glance',
          themeColor: const Color(0xFF14B8A6),
          regions: [
            DiagramRegion(
              label: 'Level I',
              detail: 'Walks without limitations; limitations only in advanced motor skills such as running and jumping',
              icon: Icons.directions_walk,
            ),
            DiagramRegion(
              label: 'Level II',
              detail: 'Walks without assistive device but with limitations on uneven surfaces, inclines, and long distances',
              icon: Icons.directions_walk,
            ),
            DiagramRegion(
              label: 'Level III',
              detail: 'Walks with hand-held assistive device (walker/crutches) indoors; wheelchair for community mobility',
              icon: Icons.accessible,
            ),
            DiagramRegion(
              label: 'Level IV',
              detail: 'Self-mobility with limitations; primarily uses wheelchair; may stand for transfers with support',
              icon: Icons.wheelchair_pickup,
            ),
            DiagramRegion(
              label: 'Level V',
              detail: 'Transported in manual wheelchair; severely limited antigravity head and trunk control; fully dependent',
              icon: Icons.wheelchair_pickup,
            ),
          ],
        ),

        HeaderBlock('GMFCS Distribution & Motor Curves'),
        BulletCardBlock(
          title: 'Population Distribution',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'GMFCS I: ~35%',
            'GMFCS II: ~20%',
            'GMFCS III: ~10-15%',
            'GMFCS IV: ~15-20%',
            'GMFCS V: ~15-20%',
          ],
        ),
        BulletCardBlock(
          title: 'Motor Growth Curves — Anticipatory Guidance',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'GMFCS I-II: Motor skills improve through adolescence, then plateau',
            'GMFCS III: Peak motor function around age 6-8, then DECLINE in adolescence',
            'GMFCS IV: Peak around age 5-7, then decline',
            'GMFCS V: Very limited development; peak around age 3-5, then decline',
            'Decline is due to increasing body mass, loss of flexibility, reduced activity — NOT brain lesion progression',
          ],
        ),
        PearlBlock(
          'Board Pearl — GMFCS vs GMFM',
          'GMFCS = Classification System (stable, does NOT change). GMFM = Gross Motor Function MEASURE (evaluative, DETECTS CHANGE over time). GMFM-88 is ordinal (all items tested). GMFM-66 is interval (Rasch-derived, more sensitive to change, can estimate from subset). These are commonly confused on boards.',
        ),

        HeaderBlock('MACS, CFCS & EDACS'),
        BulletCardBlock(
          title: 'MACS — Manual Ability Classification System (ages 4-18)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Level I: Handles objects easily and successfully',
            'Level II: Handles most objects with reduced quality/speed',
            'Level III: Handles objects with difficulty, needs help',
            'Level IV: Handles limited selection of easily managed objects',
            'Level V: Does not handle objects; requires total assistance',
            'Mini-MACS available for ages 1-4 years',
          ],
        ),
        BulletCardBlock(
          title: 'CFCS — Communication Function Classification System',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Level I: Effective sender AND receiver with unfamiliar AND familiar partners',
            'Level II: Effective but slower pace with unfamiliar/familiar partners',
            'Level III: Effective sender AND receiver with FAMILIAR partners ONLY',
            'Level IV: Inconsistent sender AND/OR receiver with familiar partners',
            'Level V: Seldom effective even with familiar partners',
            'Measures ALL communication methods (speech, gestures, AAC, eye gaze)',
          ],
        ),
        BulletCardBlock(
          title: 'EDACS — Eating and Drinking Ability Classification',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Level I: Eats and drinks safely and efficiently',
            'Level V: Unable to eat or drink safely; tube feeding considered',
            'Independent classification — a child may be GMFCS IV but EDACS I',
          ],
        ),
        PearlBlock(
          'Board Pearl — Multi-Dimensional Classification',
          'Modern CP uses FOUR parallel 5-level systems: GMFCS (gross motor), MACS (hand function), CFCS (communication), EDACS (eating/drinking). A child who communicates effectively via eye-gaze AAC with unfamiliar partners is CFCS Level I-II even with no speech. Each domain assessed independently.',
        ),
      ],
    ),

    // ============ TAB 3: Associated Conditions & Hip Surveillance ============
    TopicTab(
      title: 'Associated',
      blocks: [
        HeaderBlock('Associated Conditions'),
        TextBlock(
          'CP is NOT just a motor disorder. Associated conditions are common, often more functionally limiting than the motor impairment, and scale with motor severity. Every CP visit should include assessment of pain, feeding, and function.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Associated Conditions & Prevalence',
          columns: ['Condition', 'Prevalence', 'Key Points'],
          rows: [
            ['Chronic pain', '50-75%', 'Underrecognized; increases with age'],
            ['Intellectual\ndisability', '~50%', '30-65% depending on type;\nhighest in quadriplegia'],
            ['Epilepsy', '25-45%', 'More common in hemiplegia\nand quadriplegia'],
            ['Speech/language', '40-60%', 'Dysarthria, language delay'],
            ['Feeding/swallowing', '40-90%', 'Highest in GMFCS IV-V;\naspiration risk'],
            ['Visual impairment', '20-40%', 'CVI most common'],
            ['GERD', '50-70%', 'Contributes to feeding and\nrespiratory issues'],
            ['Constipation', '50-75%', 'Immobility, medications'],
            ['Hip displacement', '~35% overall', 'Up to 90% in GMFCS V'],
            ['Bladder problems', '30-60%', 'Underrecognized'],
            ['Scoliosis', '25-50%', 'Up to 60-70% in GMFCS IV-V'],
            ['Drooling', '20-40%', 'Oral motor dysfunction,\nNOT excess production'],
            ['Hearing loss', '10-20%', 'SNHL; higher in kernicterus'],
            ['Osteopenia', 'Up to 77%', 'Fracture prevalence 9-16%;\n75% in lower limb'],
            ['Behavioral', '25-40%', 'ADHD, anxiety, depression'],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Hearing Loss & Kernicterus',
          'High-frequency SENSORINEURAL hearing loss is strongly associated with kernicterus. The auditory pathway (cochlear nuclei) is particularly vulnerable to bilirubin toxicity. All children with dyskinetic CP should have audiologic evaluation.',
        ),
        PearlBlock(
          'Board Pearl — Pain in CP',
          'Chronic pain affects 50-75% of individuals with CP and is the most underrecognized comorbidity. Pain increases with age and is associated with musculoskeletal deformity, spasticity, GERD, and constipation. Every CP visit should include a pain assessment.',
        ),

        HeaderBlock('Hip Displacement & Surveillance'),
        TableBlock(
          title: 'Hip Displacement Risk by GMFCS Level',
          columns: ['GMFCS Level', 'Risk of Hip\nDisplacement', 'Surveillance Frequency'],
          rows: [
            ['I', '~1%', 'Hip X-ray at ages 2 and 6 years'],
            ['II', '~15%', 'Annual hip X-ray until skeletal maturity'],
            ['III', '~40%', 'Every 6 months until age 8,\nthen annually'],
            ['IV', '~70%', 'Every 6 months until age 8,\nthen annually'],
            ['V', '~90%', 'Every 6 months until age 8,\nthen annually'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl — Migration Percentage (Reimers Index)',
          'MP = percentage of femoral head uncovered laterally on AP pelvis. <30% = normal (observation). 30-40% = at risk (BoNT + bracing). 40-50% = subluxation (soft tissue surgery). >50% = bony reconstruction (VDRO +/- pelvic osteotomy). >90-100% = dislocation (salvage if symptomatic).',
        ),
        PearlBlock(
          'Board Pearl — CPUP Program',
          'The Swedish CPUP program demonstrated that systematic hip surveillance paired with timely intervention reduced hip dislocation requiring surgery from ~8% to nearly 0%. Nearly 50% of non-ambulatory children with quadriplegic CP develop hip subluxation by age 5. Hip surveillance is MANDATORY for GMFCS III-V.',
        ),

        HeaderBlock('Scoliosis in CP'),
        BulletCardBlock(
          title: 'Neuromuscular Scoliosis',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Prevalence: 25-50% overall; up to 60-70% in GMFCS IV-V',
            'Typically long C-shaped thoracolumbar curves with pelvic obliquity',
            'Bracing may slow progression but does NOT prevent surgery',
            'Surgical indication: >40-50 degree progressive curve',
            'Surgery: Posterior spinal fusion with instrumentation to pelvis',
            'Complication rates: 25-50% (higher than idiopathic scoliosis)',
            'MAGEC rods used in young children with progressive curves',
          ],
        ),

        HeaderBlock('Prognosis'),
        BulletCardBlock(
          title: 'Prognostic Indicators for Ambulation',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Independent sitting by age 2 = GOOD prognosis for ambulation',
            'Persistence of 3+ primitive reflexes at 18-24 months = POOR prognostic sign',
            'Obligatory primitive reflexes (cannot be broken) = worse than non-obligatory',
            'Spastic hemiplegia: ~100% walk independently',
            'Spastic diplegia: ~95% walk (most with assistive devices)',
            'Spastic quadriplegia: Only ~5% achieve community ambulation',
            'Speaking 2-3 word sentences by age 3 = good intellectual prognosis',
          ],
        ),
        PearlBlock(
          'Board Pearl — Sitting by Age 2',
          'Independent sitting by age 2 is the SINGLE MOST IMPORTANT prognostic indicator for eventual ambulation in CP. Caution: children with dyskinetic CP may have severe dysarthria but PRESERVED intelligence. Do not equate speech impairment with cognitive impairment.',
        ),
      ],
    ),

    // ============ TAB 4: Spasticity Management ============
    TopicTab(
      title: 'Spasticity Mgmt',
      blocks: [
        HeaderBlock('Spasticity Management Ladder'),
        TextBlock(
          'Spasticity management follows a progressive evidence-based ladder from conservative to invasive interventions. Goals include improving function, reducing pain, facilitating care, and preventing secondary deformities.',
          isIntro: true,
        ),
        ScaleBlock(
          scaleName: 'Spasticity Management Ladder',
          description:
              'A stepwise progression from conservative to invasive interventions.',
          columns: ['Step', 'Intervention', 'Details'],
          rows: [
            ['1', 'Rehab & Conservative', 'Stretching, positioning, serial\ncasting, orthotics, adaptive\nequipment, ROM exercises'],
            ['2', 'Focal: Chemodenervation', 'Botulinum toxin A injections;\ntargeted focal spasticity\n(1-2 muscle groups)'],
            ['3', 'Focal: Nerve Blocks', 'Phenol/alcohol neurolysis;\nobturator nerve block for\nhip adductor spasticity'],
            ['4', 'Generalized: Oral Meds', 'Baclofen, dantrolene,\ndiazepam, tizanidine'],
            ['5', 'ITB Pump', 'Continuous intrathecal baclofen;\nfor diffuse spasticity/dystonia;\nGMFCS IV-V most commonly'],
            ['6', 'Selective Dorsal\nRhizotomy (SDR)', 'Irreversible; selective cutting\nof dorsal rootlets at L1-S2;\nstrict candidacy criteria'],
            ['7', 'Orthopedic Surgery', 'SEMLS, releases, transfers,\nosteotomies, fusions'],
          ],
          boardPearl:
              'Management progresses from least invasive (positioning/stretching) to most invasive (orthopedic surgery). Know the indications, MOA, and side effects of each level.',
        ),

        FlowchartBlock(
          title: 'Spasticity Management Algorithm',
          themeColor: const Color(0xFF14B8A6),
          nodes: [
            FlowchartNode(
              label: 'Stretching / ROM / Positioning',
              detail: 'First-line conservative management: daily stretching, serial casting, orthotics, and adaptive seating',
            ),
            FlowchartNode(
              label: 'Oral Medications',
              detail: 'Baclofen (GABA-B), diazepam (GABA-A), dantrolene (peripheral), tizanidine (alpha-2)',
              isDecision: true,
              branches: ['Generalized spasticity'],
            ),
            FlowchartNode(
              label: 'BoNT-A Injections',
              detail: 'Botulinum toxin for focal spasticity; onset 24-72 hrs, peak 2-6 wks, duration 3-6 months',
              isDecision: true,
              branches: ['Focal spasticity (1-2 muscle groups)'],
            ),
            FlowchartNode(
              label: 'Intrathecal Baclofen Pump',
              detail: 'Programmable pump delivering baclofen to CSF; 100-1000x concentration with 1/100th oral dose; best for GMFCS IV-V',
            ),
            FlowchartNode(
              label: 'Selective Dorsal Rhizotomy',
              detail: 'Irreversible selective cutting of dorsal rootlets L1-S2; strict candidacy: spastic diplegia, GMFCS II-III, age 4-8, good selective motor control',
            ),
            FlowchartNode(
              label: 'Orthopedic Surgery',
              detail: 'SEMLS (single-event multilevel surgery), tendon releases, transfers, osteotomies, and fusions for fixed deformities',
            ),
          ],
        ),

        HeaderBlock('Oral Antispasticity Medications'),
        TableBlock(
          title: 'Oral Medications — Mechanisms & Details',
          columns: ['Drug', 'Mechanism', 'Dosing', 'Key Side Effects'],
          rows: [
            [
              'Baclofen',
              'GABA-B agonist\n(CENTRAL)',
              '0.5 mg/kg/day div\nBID-TID;\nmax 2 mg/kg/day',
              'Sedation, weakness;\nWITHDRAWAL SEIZURES\nif stopped abruptly',
            ],
            [
              'Dantrolene',
              'Inhibits Ca2+\nrelease from SR\n(PERIPHERAL —\nONLY one!)',
              '0.5 mg/kg once daily;\nmax 2 mg/kg QID\n(100 mg/dose)',
              'HEPATOTOXICITY\n(monitor LFTs;\n28% case-fatality)\nAlso treats MH',
            ],
            [
              'Diazepam',
              'GABA-A agonist\n(CENTRAL)',
              '0.1-0.3 mg/kg/day\ndiv BID-QID;\nmax 2 mg/dose',
              'Sedation, dependence,\ntolerance;\nfirst oral agent shown\neffective for CP',
            ],
            [
              'Tizanidine',
              'Alpha-2 adrenergic\nagonist (CENTRAL)',
              '1-2 mg QHS;\nmax 24 mg/day',
              'Sedation, dry mouth,\nhepatotoxicity',
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Dantrolene Is the ONLY Peripheral Agent',
          'Dantrolene is the ONLY antispasticity medication acting PERIPHERALLY (at the muscle level, inhibiting Ca2+ release from sarcoplasmic reticulum). Baclofen (GABA-B), diazepam (GABA-A), and tizanidine (alpha-2 adrenergic) ALL act centrally. Dantrolene also treats malignant hyperthermia.',
        ),

        HeaderBlock('Botulinum Toxin (BoNT-A)'),
        BulletCardBlock(
          title: 'Mechanism & Pharmacokinetics',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Blocks presynaptic ACh release at the NMJ by cleaving SNAP-25 (SNARE protein)',
            'Onset: 24-72 hours (clinically apparent within 1 week)',
            'Peak effect: 2-6 weeks (reevaluate at 6-8 weeks)',
            'Duration: 3-6 months (minimum re-injection interval: 3 months)',
            'NO sensory side effects (motor block only)',
            'Not FDA-approved for pediatric spasticity — used OFF-LABEL',
          ],
        ),
        TableBlock(
          title: 'BoNT-A Dosing Guidelines',
          columns: ['Formulation', 'Per Muscle', 'Max Total Dose', 'Notes'],
          rows: [
            [
              'OnabotulinumtoxinA\n(Botox)',
              '1-6 U/kg\nper muscle',
              '400 U total or\n12-16 U/kg',
              'Large muscles\n(gastroc): 3-6 U/kg/side\nSmall muscles: 1-2 U/kg',
            ],
            [
              'AbobotulinumtoxinA\n(Dysport)',
              '2.5-3x\nBotox dose',
              'Approximately\n2.5-3:1 ratio',
              'NOT interchangeable;\ndosing is formulation-\nspecific',
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        BulletCardBlock(
          title: 'BoNT-A Adverse Effects & Contraindications',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Systemic adverse effects: 3.6% of injections (fatigue, generalized weakness)',
            'Severe systemic events requiring hospitalization: 0.7%',
            'Risk factors: GMFCS IV-V, underlying dysphagia, aspiration history',
            'FDA black box warning: potential distant spread of toxin',
            'Neutralizing antibodies: 3-10% after repeated injections',
            'Contraindications: Aminoglycoside use, myasthenia gravis, NMJ disorders',
            'Does NOT prevent contractures long-term',
            'Does NOT reduce need for orthopedic hip surgery',
          ],
        ),

        HeaderBlock('Phenol/Alcohol Nerve Blocks'),
        BulletCardBlock(
          title: 'Chemical Neurolysis',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Phenol 5-7% aqueous: protein denaturation and axonal destruction',
            'Onset: MINUTES (vs days for BoNT)',
            'Duration: 3-12 months (up to 18 months)',
            'Advantages: Longer lasting, less expensive, immediate onset, no systemic dose ceiling',
            'Disadvantages: Painful injection, risk of DYSESTHESIAS (avoid mixed sensory-motor nerves)',
            'Classic application: Obturator nerve block for hip adductor spasticity (predominantly motor nerve)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Phenol vs BoNT',
          'Phenol onset = minutes (BoNT = days). Phenol duration = 3-18 months (BoNT = 3-6 months). Phenol risk = dysesthesias in mixed nerves. Obturator nerve block for hip adductor spasticity is the classic phenol application because the obturator nerve is primarily motor, minimizing dysesthesia risk.',
        ),

        HeaderBlock('Intrathecal Baclofen (ITB) Pump'),
        BulletCardBlock(
          title: 'ITB Key Facts',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Programmable pump delivers baclofen to intrathecal space; catheter tip at T10-L1',
            'Achieves 100-1000x CSF concentration with 1/100th the oral dose',
            'Typical dose: 50-1000 mcg/day',
            'Requires trial dose (25-100 mcg IT via LP) before implantation',
            'Most commonly used in GMFCS IV-V',
            'Adverse effects in up to 50%: lethargy, confusion, hypotonia',
          ],
        ),
        TableBlock(
          title: 'ITB Withdrawal vs Overdose',
          columns: ['Feature', 'WITHDRAWAL (Emergency)', 'OVERDOSE'],
          rows: [
            ['Causes', 'Catheter kink/disconnect, pump failure, empty reservoir', 'Programming error, pump malfunction'],
            ['Symptoms', 'HYPER: Rebound spasticity, FEVER, tachycardia, HTN, diaphoresis', 'HYPO: Drowsiness, respiratory depression, hypotonia, flaccidity'],
            ['Danger', 'Rhabdomyolysis, seizures, multi-organ failure, DEATH', 'Coma, bradycardia, hypotension, hypothermia'],
            ['Mimics', 'Malignant hyperthermia, NMS, autonomic dysreflexia', 'Sedative overdose'],
            ['Treatment', 'Restore ITB; oral/IV baclofen; benzodiazepines; ICU', 'Supportive (airway, ventilation); CSF withdrawal; turn off pump'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl — ITB Withdrawal Is FATAL',
          'ITB WITHDRAWAL = HYPER-symptoms (fever, tachycardia, spasticity, hypertension). ITB OVERDOSE = HYPO-symptoms (hypotension, hypothermia, hypotonia). Withdrawal is MORE DANGEROUS than overdose. Any patient with an ITB pump presenting with fever + increased spasticity + autonomic instability = withdrawal until proven otherwise.',
        ),

        HeaderBlock('Selective Dorsal Rhizotomy (SDR)'),
        BulletCardBlock(
          title: 'SDR Candidacy & Outcomes',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Mechanism: Selective sectioning of dorsal (sensory) rootlets at L1-S1/S2, interrupting afferent limb of gamma loop',
            'Age: 3-8 years (some centers extend to 10-12)',
            'Motor type: Pure spastic DIPLEGIA only (NO dystonia or athetosis)',
            'GMFCS Level: II-III (ambulatory or near-ambulatory)',
            'PVL on MRI preferred (predicts better outcomes)',
            'Adequate underlying voluntary strength required',
            'No fixed contractures; good selective motor control',
            'IRREVERSIBLE procedure (unlike ITB which is reversible)',
            'Meta-analysis (3 RCTs, 90 children): Ashworth reduction -1.2 points vs PT alone',
            'Long-term (20-28 yr): Durable spasticity reduction; ~40% needed additional BoNT or surgery',
            'Complications (~10%): Sensory changes, transient bladder dysfunction, weakness, spinal deformity',
          ],
        ),
        PearlBlock(
          'Board Pearl — SDR Candidate Profile',
          'Ideal SDR candidate: age 3-8, spastic DIPLEGIA, GMFCS II-III, PVL on MRI, good underlying strength, good cognition, NO dystonia/athetosis, NO fixed contractures. SDR is IRREVERSIBLE. SDR does NOT work for dystonia. Requires intensive post-op PT for 6-12 months minimum.',
        ),

        HeaderBlock('Dystonia Management'),
        BulletCardBlock(
          title: 'Treatment of Dystonia in CP',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'First-line: Oral baclofen (same dosing as spasticity)',
            'Second-line: Gabapentin (5-15 mg/kg/day TID), clonidine, or benzodiazepines',
            'Deep brain stimulation (DBS): For refractory dystonia; targets GPi (globus pallidus internus); typically age 7+',
            'ITB pump also effective for generalized dystonia',
          ],
        ),
      ],
    ),

    // ============ TAB 5: Gait & Orthotics ============
    TopicTab(
      title: 'Gait & Orthotics',
      blocks: [
        HeaderBlock('Gait Patterns — Rodda Classification'),
        TextBlock(
          'Abnormal gait patterns in CP result from spasticity, weakness, poor selective motor control, and bony malalignment. The Rodda classification system categorizes gait deviations in both hemiplegic and diplegic CP to guide management.',
          isIntro: true,
        ),

        HeaderBlock('Rodda Classification — Spastic Hemiplegia'),
        TableBlock(
          title: 'Hemiplegic Gait Types',
          columns: ['Type', 'Ankle', 'Knee', 'Hip', 'Management'],
          rows: [
            ['I: Drop Foot', 'DF deficit in\nswing only', 'Normal or\nrecurvatum', 'Normal', 'AFO sufficient'],
            ['II: True\nEquinus', 'Equinus in\nstance AND\nswing', 'Normal or\nrecurvatum', 'Normal', 'AFO + possible\nBoNT/surgery'],
            ['III: Equinus\n+ Knee', 'Equinus', 'Flexion in\nstance', 'Flexion', 'Multi-level\ntreatment'],
            ['IV: Equinus\n+ Knee + Hip', 'Equinus', 'Flexion', 'Flexion +\ninternal\nrotation', 'Requires\nSEMLS'],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),

        HeaderBlock('Rodda Classification — Spastic Diplegia'),
        TableBlock(
          title: 'Diplegic Gait Types',
          columns: ['Type', 'Description', 'Key Features'],
          rows: [
            ['True Equinus', 'Bilateral equinus;\nknees extended\nor recurvatum', 'Ankle problem\nprimarily'],
            ['Jump Gait', 'Bilateral equinus,\nknee flexion,\nhip flexion,\nanterior pelvic tilt', 'CLASSIC diplegic\npattern'],
            ['Apparent\nEquinus', 'Normal ankle ROM\nbut equinus\nappearance', 'Due to excessive\nproximal flexion;\ndo NOT lengthen\nAchilles'],
            ['Crouch Gait', 'Excessive DF,\nknee flexion,\nhip flexion;\ncalcaneal gait', 'Most energy-\ninefficient pattern;\noften iatrogenic'],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Iatrogenic Crouch Gait',
          'Crouch gait can be IATROGENIC — caused by overlengthening the Achilles tendon during equinus correction. Loss of the plantarflexion-knee extension couple leads to excessive dorsiflexion and knee collapse. Also develops naturally during adolescent growth in GMFCS III-IV. Leads to patella alta, patellofemoral pain, and patellar fracture.',
        ),
        PearlBlock(
          'Board Pearl — Apparent Equinus',
          'Apparent equinus looks like toe-walking but is caused by excessive hip and knee flexion — ankle ROM is actually normal. Do NOT treat with Achilles lengthening (this would create crouch gait). This is a critical surgical planning distinction — requires 3D gait analysis to identify.',
        ),

        HeaderBlock('AFO Prescription Guide'),
        TableBlock(
          title: 'AFO Types and Indications',
          columns: ['Orthosis', 'Design', 'Indication', 'Key Distinction'],
          rows: [
            ['SMO', 'Below malleoli;\ncontrols hindfoot', 'Hindfoot valgus/varus;\nhypotonia', 'No ankle motion\nrestriction'],
            ['PLS\n(Posterior Leaf\nSpring)', 'Thin posterior\nstrut; flexible', 'Mild foot drop;\nGMFCS I-II', 'Allows plantar\nflexion in stance'],
            ['Solid AFO', 'Rigid; blocks all\nankle motion', 'Moderate-severe\nequinus; GMFCS III-V', 'Limits push-off\nbut maximum\nstability'],
            ['Hinged AFO', 'Allows dorsiflexion;\nblocks plantarflexion', 'Equinus with some\nactive DF;\nhemiplegic CP', 'CLASSIC choice\nfor hemiplegia;\nallows 3rd rocker'],
            ['GRAFO', 'Anterior tibial\nshell; rigid', 'CROUCH GAIT\n(excessive knee\nflexion in stance)', 'Creates knee\nextension moment;\nCONTRAINDICATED\nin equinus'],
            ['DAFO', 'Thin, flexible,\nfoot plate', 'Low tone or mild\nspasticity', 'Proprioceptive\ninput'],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — GRAFO Mechanism',
          'The GRAFO works by blocking ankle dorsiflexion, keeping the ground reaction force vector ANTERIOR to the knee joint axis, creating a knee EXTENSION moment. Specifically indicated for CROUCH GAIT. CONTRAINDICATED in equinus or fixed knee flexion contracture.',
        ),
        PearlBlock(
          'Board Pearl — Hemiplegic CP AFO Choice',
          'Hemiplegic CP is classically managed with a HINGED AFO — allows dorsiflexion during stance (tibial progression/3rd rocker) while blocking equinus. The posterior tibialis is often overactive causing equinoVARUS. SPLATT (split anterior tibialis transfer) is the classic surgical correction.',
        ),

        HeaderBlock('Key Examination Tests'),
        TableBlock(
          title: 'Clinical Examination Tests',
          columns: ['Test', 'Assesses', 'Positive Finding'],
          rows: [
            ['Silfverskiold', 'Gastroc vs soleus\ntightness', 'DF improves with knee\nflexed = gastroc tight;\nNOT improved = soleus'],
            ['Duncan-Ely', 'Rectus femoris\nspasticity', 'Prone, rapid knee flex\n→ hip flexes off table'],
            ['Thomas test', 'Hip flexion\ncontracture', 'Supine, flex opposite hip\n→ tested hip lifts off'],
            ['Phelps test', '"Confused\nequinus"', 'Ankle DF with knee\nflexed AND hip extended'],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Silfverskiold Test',
          'Ankle DF measured with knee extended (stretches gastrocnemius, a 2-joint muscle) vs knee flexed (relaxes gastroc, isolates soleus). DF improves with knee flexion = gastroc is the culprit (gastroc recession indicated). DF does NOT improve = soleus involved (Achilles lengthening may be needed). Classic board test.',
        ),
      ],
    ),

    // ============ TAB 6: Surgery, Rehab & Aging ============
    TopicTab(
      title: 'Surgery & Rehab',
      blocks: [
        HeaderBlock('SEMLS — Single-Event Multilevel Surgery'),
        TextBlock(
          'SEMLS addresses ALL gait abnormalities in one surgical session, replacing the previous "birthday surgery" approach. It requires preoperative 3D instrumented gait analysis and is the standard of care for ambulatory CP.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'SEMLS Key Facts',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Optimal timing: GMFCS I-III, ages 6-12 years (after gait maturation at ~6)',
            'REQUIRES preoperative 3D instrumented gait analysis',
            'Common procedures combined: Psoas lengthening, adductor release, hamstring lengthening, rectus femoris transfer, gastrocnemius/Achilles lengthening, femoral/tibial derotation osteotomy',
            'Advantages: Fewer anesthesia events, single rehab period, addresses biomechanical interactions',
            'Prevents compensatory patterns from single-level corrections',
            'Rehab: Inpatient 1-2 weeks, outpatient PT 6-12 months; max improvement at 12-24 months',
          ],
        ),

        HeaderBlock('Common Orthopedic Procedures'),
        TableBlock(
          title: 'Orthopedic Procedures in CP',
          columns: ['Category', 'Procedure', 'Indication'],
          rows: [
            [
              'Soft Tissue\nReleases',
              'Adductor release/transfer\nPsoas lengthening\nHamstring lengthening\nGastroc recession/\nAchilles lengthening',
              'Hip scissoring\nHip flexion contracture\nKnee flexion contracture\nEquinus deformity',
            ],
            [
              'Tendon\nTransfers',
              'SPLATT\nRectus femoris transfer\nFlexor-pronator slide',
              'Dynamic equinovarus\nStiff-knee gait\nUE spasticity',
            ],
            [
              'Bony\nProcedures',
              'Femoral derotation osteotomy\nTibial derotation osteotomy\nPelvic osteotomy (Dega)\nVDRO\nCalcaneal osteotomy',
              'Femoral anteversion\nTibial torsion\nHip dysplasia\nHip subluxation >50% MP\nHindfoot valgus',
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — SPLATT',
          'Split Anterior Tibialis Transfer (SPLATT): Lateral half of anterior tibialis transferred to cuboid/lateral cuneiform. Converts dynamic varus into balanced foot. Classic procedure for equinovarus in hemiplegic CP.',
        ),

        HeaderBlock('Evidence-Based Interventions (Novak 2020 Traffic Light)'),
        BulletCardBlock(
          title: 'GREEN Light — Strong Evidence (DO IT)',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Botulinum toxin A for spasticity (upper and lower limb)',
            'CIMT and bimanual therapy for hemiplegia',
            'Casting and orthotics',
            'Context-focused therapy (goals in natural environments)',
            'Fitness training and goal-directed training',
            'Hip surveillance',
            'Home-based programs',
            'Intrathecal baclofen for generalized spasticity',
            'Selective dorsal rhizotomy',
            'SEMLS',
            'Bisphosphonates for low bone density',
          ],
        ),
        BulletCardBlock(
          title: 'RED Light — Evidence AGAINST (Don\'t Do It)',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Craniosacral therapy',
            'Hyperbaric oxygen therapy',
            'NDT/Bobath as SOLE intervention for motor outcomes',
            'Sensory integration therapy (as traditionally defined)',
          ],
        ),

        HeaderBlock('Rehabilitation Interventions'),
        BulletCardBlock(
          title: 'CIMT — Constraint-Induced Movement Therapy',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'For HEMIPLEGIC CP ONLY (unilateral involvement)',
            'Unaffected hand constrained (cast or mitt) for 2-6 hours/day',
            'Based on learned non-use theory (Taub)',
            'Improves unimanual capacity of affected hand',
            'NOT appropriate for bilateral CP (diplegia/quadriplegia)',
          ],
        ),
        BulletCardBlock(
          title: 'Bimanual Therapy (HABIT) & Other Approaches',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'HABIT: Alternative to CIMT; improves coordination between hands',
            'CIMT improves unimanual capacity; HABIT improves bimanual coordination',
            'Goal-directed training: Activity-based, task-specific practice (strongest evidence)',
            'Serial casting: Progressive stretch for dynamic contractures',
            'Hippotherapy: Horse-riding for trunk control',
            'FES: For dorsiflexor weakness',
          ],
        ),

        HeaderBlock('Aging with Cerebral Palsy'),
        BulletCardBlock(
          title: 'Adult Issues in CP',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Most common complaint in adults: NECK PAIN (cervical OA)',
            'Cervical spondylotic myelopathy develops earlier (4th-5th decade) from abnormal movement',
            'Pain prevalence: 50% spastic CP, 75% dyskinetic CP — often undertreated',
            'Fatigue is a major complaint that increases with age',
            'Functional decline often begins in 3rd-4th decade',
            'GMFCS I-III: Near-normal life expectancy',
            'GMFCS IV-V: Significant life expectancy reduction (feeding/respiratory issues)',
            'GMFCS III: Many transition from walking to wheelchair during adolescence',
            'Osteoporosis and fracture risk increased, especially nonambulatory',
            'Depression and anxiety common in adults',
            'Near-normal reproductive capability (fertility preserved)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Premature Aging',
          'Adults with CP report declining function beginning in their 20s-30s. Contributing factors include chronic musculoskeletal strain from abnormal movement, progressive joint degeneration, decreasing activity, and weight gain. Cervical myelopathy is an under-recognized complication, especially in dyskinetic CP.',
        ),

        HeaderBlock('Vocational Outcomes'),
        TableBlock(
          title: 'Employment Potential by IQ',
          columns: ['IQ Range', 'Vocational Level', 'Key Predictors'],
          rows: [
            ['IQ > 80', 'Competitive\nemployment', 'IQ (strongest),\nambulation, speech\nclarity, hand function'],
            ['IQ 50-79', 'Sheltered\nworkshop', 'Supported employment\nwith supervision'],
            ['IQ < 50', 'Day program', 'Unlikely to achieve\ncompetitive employment'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Transition Planning',
          'Transition from pediatric to adult care is a critical vulnerability period. Many adults experience functional decline due to reduced access to rehab services and progressive musculoskeletal changes. Proactive transition planning should begin in early adolescence. Preventive strategies include lifelong fitness programs, weight management, bone health optimization, and mental health support.',
        ),
      ],
    ),
  ],
);
