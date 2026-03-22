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
        HeaderBlock('Definition'),
        TextBlock(
          'Cerebral palsy (CP) is a nonprogressive lesion to an IMMATURE (developing) brain causing a persistent disorder of movement and posture. Although the lesion itself is static, clinical manifestations may change over time as the child grows. CP is the leading cause of childhood physical disability.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl — "Nonprogressive" Definition',
          'CP is a STATIC encephalopathy — the brain lesion does NOT progress. However, the musculoskeletal manifestations (contractures, hip displacement, scoliosis) DO worsen over time. If a child is losing milestones, reconsider the diagnosis — think neurodegenerative disease instead.',
        ),

        HeaderBlock('Epidemiology'),
        BulletCardBlock(
          title: 'Incidence & Prevalence',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Overall prevalence: 2-3 per 1,000 live births',
            'Prevalence in infants <1500 g birth weight: 59.2 per 1,000',
            'Prevalence in infants >2500 g birth weight: 1.33 per 1,000',
            'Most common motor disability in childhood',
            'Prevalence has remained stable despite advances in neonatal care',
            'Survival of very low birth weight infants has increased the at-risk population',
          ],
        ),
        PearlBlock(
          'Board Pearl — Birth Weight & Risk',
          'The risk of CP is approximately 45 times higher in infants <1500 g compared to those >2500 g (59.2 vs 1.33 per 1,000). Low birth weight and prematurity are the strongest individual risk factors for CP.',
        ),

        HeaderBlock('Risk Factors by Timing'),
        TableBlock(
          title: 'Risk Factors for Cerebral Palsy',
          columns: ['Timing', 'Risk Factors'],
          rows: [
            [
              'Prenatal\n(70-80%)',
              'Intracranial hemorrhage\nPlacental complications\nGestational toxins:\n  • Iodine deficiency → diplegia\n  • Mercury → quadriplegia\nTORCH infections\nCongenital malformations\nMultiple gestation\nMaternal seizures/intellectual disability'
            ],
            [
              'Perinatal',
              'Prematurity (<32 weeks, <2500 g)\nHyperbilirubinemia (kernicterus)\nDifficult/traumatic delivery\nBirth asphyxia\nLow Apgar scores'
            ],
            [
              'Postnatal',
              'Trauma (NAT/accidental)\nLead poisoning\nOrganophosphate toxins\nStroke\nCNS infection (meningitis, encephalitis)\nAnoxia (near-drowning, cardiac arrest)'
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Prenatal Causes Dominate',
          '70-80% of CP cases have PRENATAL etiology. Birth asphyxia accounts for only about 10% of cases — this is a commonly tested misconception. Most CP is NOT caused by intrapartum events.',
        ),
        PearlBlock(
          'Board Pearl — Gestational Toxins',
          'Iodine deficiency during gestation is associated with spastic DIPLEGIA. Mercury exposure is associated with spastic QUADRIPLEGIA. These specific associations are board favorites.',
        ),
        PearlBlock(
          'Board Pearl — Kernicterus',
          'Hyperbilirubinemia causing kernicterus damages the BASAL GANGLIA (globus pallidus), resulting in DYSKINETIC (athetoid/dystonic) CP, NOT spastic CP. Associated with high-frequency sensorineural hearing loss.',
        ),

        HeaderBlock('Early Diagnosis'),
        BulletCardBlock(
          title: 'Early Detection Tools (Novak et al. Consensus)',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'CP can now be diagnosed BEFORE 5 months corrected age',
            'Three-tool combination for early diagnosis:',
            '  1. GMA (General Movements Assessment) — absence of fidgety movements',
            '  2. MRI — structural brain imaging',
            '  3. HINE (Hammersmith Infant Neurological Examination)',
            'GMA has the highest individual predictive value for CP in preterm infants',
            'Absent fidgety movements (3-5 months) = 98% sensitivity for CP',
            'AAN recommends MRI over CT for initial neuroimaging in CP evaluation',
          ],
        ),
        PearlBlock(
          'Board Pearl — GMA Fidgety Movements',
          'General Movements Assessment (GMA): Absent "fidgety movements" at 3-5 months corrected age is the single best early predictor of CP (sensitivity 98%). Fidgety movements are small, circular movements of the limbs, trunk, and neck seen in healthy infants.',
        ),
        PearlBlock(
          'Board Pearl — MRI vs CT',
          'The AAN recommends MRI over CT for initial neuroimaging in CP evaluation. MRI is superior for identifying periventricular leukomalacia (PVL), cortical malformations, and other structural abnormalities. MRI is abnormal in 80-90% of children with CP.',
        ),
      ],
    ),

    // ============ TAB 2: Classification & GMFCS ============
    TopicTab(
      title: 'Classification',
      blocks: [
        HeaderBlock('Motor Type Classification'),
        TextBlock(
          'CP is classified by motor type (physiologic) and topographic distribution (anatomic). The motor type reflects the area of brain injury, while topography describes the pattern of limb involvement.',
          isIntro: true,
        ),
        TableBlock(
          title: 'CP Classification by Motor Type',
          columns: ['Type', 'Prevalence', 'Brain Lesion', 'Characteristics'],
          rows: [
            [
              'Spastic',
              '75%',
              'Cortex /\npyramidal tract',
              'UMN signs: velocity-dependent\ntone increase, hyperreflexia,\nclonus, Babinski, scissoring'
            ],
            [
              'Dyskinetic\n(Extrapyramidal)',
              '10-15%',
              'Basal ganglia\n(kernicterus)',
              'Athetosis (slow writhing)\nChorea (rapid involuntary)\nDystonia (sustained postures)\nTone fluctuates'
            ],
            [
              'Ataxic',
              '5%',
              'Cerebellum',
              'Intention tremor, dysmetria,\nwide-based gait, hypotonia,\npast-pointing, dysdiadochokinesia'
            ],
            [
              'Mixed',
              '~25%',
              'Multiple areas',
              'Combination of spastic +\ndyskinetic most common'
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Spasticity Definition',
          'Spasticity = velocity-dependent increase in muscle tone (Lance definition). This distinguishes it from rigidity (velocity-independent, "lead pipe") and dystonia (sustained involuntary postures). The faster you stretch the muscle, the greater the resistance in spasticity.',
        ),
        PearlBlock(
          'Board Pearl — Dyskinetic CP & Kernicterus',
          'Dyskinetic (athetoid/dystonic) CP is classically associated with kernicterus (bilirubin-induced basal ganglia injury). Intelligence is often PRESERVED in dyskinetic CP, which distinguishes it from severe spastic quadriplegia where cognitive impairment is more common.',
        ),

        HeaderBlock('Topographic Classification'),
        BulletCardBlock(
          title: 'Anatomic Distribution',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Hemiplegia: One side of body (arm usually more affected than leg)',
            'Diplegia (Little\'s Disease): Both legs > arms; MOST COMMON type in premature infants; associated with PVL',
            'Triplegia: Three limbs (both legs + one arm)',
            'Tetraplegia/Quadriplegia: All four limbs; highest incidence of significant disability; associated with major hypoxic event',
            'Monoplegia: Single limb (rare, most are actually hemiplegic)',
            'Double hemiplegia: All four limbs, arms > legs (distinguishes from diplegia)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Diplegia = Little\'s Disease',
          'William John Little first described spastic diplegia in premature infants in 1861 — hence "Little\'s Disease." Diplegia is the MOST COMMON type in premature infants and is classically caused by periventricular leukomalacia (PVL), which damages the corona radiata fibers serving the lower extremities.',
        ),
        PearlBlock(
          'Board Pearl — PVL & Diplegia',
          'Periventricular leukomalacia (PVL) preferentially damages the periventricular white matter where motor fibers to the LEGS are located (closest to the ventricles). Motor fibers to the arms are more lateral and relatively spared. This is why PVL causes DIPLEGIA (legs > arms).',
        ),

        HeaderBlock('GMFCS — Gross Motor Function Classification System'),
        ScaleBlock(
          scaleName: 'GMFCS (Gross Motor Function Classification System)',
          description:
              'A 5-level classification system describing gross motor function in children with CP. GMFCS is a CLASSIFICATION tool (stable, does not change over time) — it categorizes current function.',
          columns: ['Level', 'Function', 'Mobility'],
          rows: [
            ['I', 'Walks without limitations', 'Community ambulator, runs/jumps with speed and coordination limitations'],
            ['II', 'Walks with limitations', 'Walks indoors/outdoors with limitations, may use handrail on stairs, difficulty with uneven surfaces'],
            ['III', 'Walks with handheld mobility device', 'Walks with crutches/walker indoors, wheelchair for long distances in community'],
            ['IV', 'Self-mobility with limitations', 'May walk short distances with walker, primarily uses powered wheelchair for community mobility'],
            ['V', 'Transported in manual wheelchair', 'Severely limited self-mobility even with assistive technology, transported by others'],
          ],
          boardPearl:
              'GMFCS is a CLASSIFICATION tool (stable) vs GMFM is an EVALUATIVE tool (detects change over time). GMFCS level should remain constant — if it changes, reconsider the diagnosis.',
        ),
        PearlBlock(
          'Board Pearl — GMFCS vs GMFM',
          'GMFCS = Gross Motor Function CLASSIFICATION System — classifies a child\'s current level (I-V), should NOT change over time. GMFM = Gross Motor Function MEASURE — an evaluative outcome measure that DETECTS CHANGE in gross motor function over time (e.g., after intervention). These are commonly confused on board exams.',
        ),

        HeaderBlock('MACS & CFCS'),
        BulletCardBlock(
          title: 'MACS — Manual Ability Classification System',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Level I: Handles objects easily and successfully',
            'Level II: Handles most objects but with reduced quality/speed',
            'Level III: Handles objects with difficulty, needs help to modify activities',
            'Level IV: Handles a limited selection of easily managed objects in adapted situations',
            'Level V: Does not handle objects, severely limited ability to perform even simple actions',
            'Parallel structure to GMFCS — 5 levels for HAND function',
          ],
        ),
        BulletCardBlock(
          title: 'CFCS — Communication Function Classification System',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Level I: Effective sender and receiver with unfamiliar and familiar partners',
            'Level II: Effective but slower pace with unfamiliar/familiar partners',
            'Level III: Effective sender and receiver with familiar partners',
            'Level IV: Inconsistent sender and/or receiver with familiar partners',
            'Level V: Seldom effective sender and receiver even with familiar partners',
            'Parallel structure to GMFCS — 5 levels for COMMUNICATION',
          ],
        ),
        PearlBlock(
          'Board Pearl — Classification Triad',
          'Modern CP classification uses THREE parallel 5-level systems: GMFCS (gross motor), MACS (manual ability/hand function), and CFCS (communication). All three are CLASSIFICATION systems (stable, do not change). Know that they parallel each other in structure.',
        ),
      ],
    ),

    // ============ TAB 3: Associated Conditions ============
    TopicTab(
      title: 'Associated',
      blocks: [
        HeaderBlock('Associated Conditions'),
        TextBlock(
          'CP is rarely an isolated motor disorder. The majority of children have associated impairments that significantly impact function and quality of life. The severity of associated conditions generally correlates with GMFCS level.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Associated Impairments & Prevalence',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Intellectual disability: ~50% (ranges from mild to severe)',
            'Seizure disorder/epilepsy: ~50%',
            'Oromotor dysfunction: Feeding difficulties, drooling, aspiration risk',
            'GI issues: GERD (most common), constipation, poor nutrition',
            'Dental problems: Enamel hypoplasia, malocclusion, bruxism',
            'Visual impairment: Strabismus, cortical visual impairment, refractive errors',
            'Hearing impairment: Sensorineural hearing loss (especially with hyperbilirubinemia)',
            'Cortical sensory deficits: Impaired stereognosis, proprioception, two-point discrimination',
            'Behavioral problems: ADHD, anxiety, autism spectrum',
            'Speech and language disorders',
            'Osteoporosis and pathologic fractures',
            'Chronic pain (often under-recognized)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Hearing Loss & Kernicterus',
          'High-frequency SENSORINEURAL hearing loss is strongly associated with hyperbilirubinemia/kernicterus. The auditory pathway (especially the cochlear nuclei) is particularly vulnerable to bilirubin toxicity. All children with dyskinetic CP should have audiologic evaluation.',
        ),
        PearlBlock(
          'Board Pearl — 50/50 Rule',
          'Approximately 50% of children with CP have intellectual disability and 50% have seizures. However, these rates vary dramatically by type — dyskinetic CP often has PRESERVED cognition, while spastic quadriplegia has the HIGHEST rates of cognitive impairment and epilepsy.',
        ),

        HeaderBlock('Hip Displacement'),
        BulletCardBlock(
          title: 'Hip Surveillance in CP',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Hip displacement present in 25% of children with CP at initial X-ray',
            '99% of GMFCS Level I have NORMAL hips',
            'Only 28% of GMFCS Level V have normal hips (72% displaced)',
            'Hip displacement is directly proportional to GMFCS level',
            'Spastic hip displacement is caused by muscle imbalance: strong adductors/flexors vs weak abductors/extensors',
            'Hip displacement is PAINLESS initially but becomes painful if dislocated',
          ],
        ),
        TableBlock(
          title: 'Hip Surveillance Protocol',
          columns: ['GMFCS Level', 'Screening Recommendation', 'Normal Hip Rate'],
          rows: [
            ['I', 'Clinical exam; X-ray only if concerns', '99%'],
            ['II', 'AP pelvis X-ray at 2 and 5 years', '~90%'],
            ['III-V', 'AP pelvis every 6-12 months starting at 12 months of age', '28-75%'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl — Migration Percentage',
          'Migration percentage (Reimers index) = percentage of femoral head uncovered lateral to the acetabular edge on AP pelvis X-ray. Migration percentage >30% = orthopedic referral. >40% = surgical consideration. >100% = complete dislocation. This is the standard measurement for hip surveillance in CP.',
        ),
        PearlBlock(
          'Board Pearl — Hip Surveillance is MANDATORY',
          'GMFCS III-V children require AP pelvis X-ray every 6-12 months starting at 12 months of age. Hip displacement in CP is PREVENTABLE with early detection and intervention. Once the hip dislocates, salvage surgery is much more difficult and outcomes are worse.',
        ),

        HeaderBlock('Prognosis'),
        BulletCardBlock(
          title: 'Prognostic Indicators for Ambulation',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Independent sitting by age 2 = GOOD prognosis for ambulation',
            'If 3+ primitive reflexes persist at 18-24 months = POOR prognostic sign for ambulation',
            'Absence of postural reactions by age 2 = poor prognosis',
            'Spastic diplegia: ~95% walk (most with assistive devices)',
            'Spastic hemiplegia: ~100% walk independently',
            'Spastic quadriplegia: Only ~5% achieve community ambulation',
          ],
        ),
        PearlBlock(
          'Board Pearl — Sitting by Age 2',
          'Independent sitting by age 2 is the single most important prognostic indicator for eventual ambulation in CP. Children who sit independently by 2 have a HIGH probability of eventually walking. This is a classic board question.',
        ),
        PearlBlock(
          'Board Pearl — Primitive Reflexes',
          'Persistence of 3 or more primitive reflexes (ATNR, Moro, TLR, etc.) at 18-24 months is a POOR prognostic sign for independent ambulation. The presence of obligatory primitive reflexes (cannot be broken) is worse than persistent but non-obligatory reflexes.',
        ),
        BulletCardBlock(
          title: 'Intellectual & Vocational Prognosis',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Speaking 2-3 word sentences by age 3 = good indication of intellectual potential',
            'Predictors of future employment: IQ level, ambulation ability, speech clarity, hand function',
            'IQ >80: Competitive employment potential',
            'IQ 50-79: Sheltered workshop employment',
            'IQ <50: Unlikely to achieve competitive employment',
          ],
        ),
        PearlBlock(
          'Board Pearl — Speech & Intelligence',
          'Speaking 2-3 word sentences by age 3 is a good prognostic indicator for intellectual potential. However, be cautious — children with dyskinetic CP may have severe dysarthria but PRESERVED intelligence. Do not equate speech impairment with cognitive impairment.',
        ),
      ],
    ),

    // ============ TAB 4: Spasticity Management ============
    TopicTab(
      title: 'Spasticity Mgmt',
      blocks: [
        HeaderBlock('Spasticity Management Ladder'),
        TextBlock(
          'Spasticity management in CP follows a stepwise approach, progressing from least to most invasive interventions. The goal is to improve function, reduce pain, facilitate care, and prevent secondary musculoskeletal deformities.',
          isIntro: true,
        ),
        ScaleBlock(
          scaleName: 'Spasticity Management Ladder',
          description:
              'A stepwise progression from conservative to invasive interventions for managing spasticity in CP.',
          columns: ['Step', 'Intervention', 'Details'],
          rows: [
            ['1', 'Positioning / Stretching /\nPT / OT', 'Foundation of all management;\nserial casting, orthoses, adaptive\nequipment, ROM exercises'],
            ['2', 'Oral Medications', 'Baclofen, dantrolene,\nbenzodiazepines, tizanidine,\nclonidine'],
            ['3', 'Chemodenervation', 'Botulinum toxin injections;\ntargeted focal spasticity'],
            ['4', 'Nerve Blocks', 'Phenol/alcohol neurolysis;\nobturator, sciatic, tibial,\nfemoral nerve blocks'],
            ['5', 'Intrathecal Baclofen\n(ITB) Pump', 'Continuous intrathecal delivery;\nfor diffuse spasticity/dystonia'],
            ['6', 'Selective Dorsal\nRhizotomy (SDR)', 'Irreversible; selective cutting of\ndorsal rootlets; strict criteria'],
            ['7', 'Orthopedic Surgery', 'Releases, lengthening, transfers,\nosteotomies, fusions'],
          ],
          boardPearl:
              'Management progresses from least invasive (positioning/stretching) to most invasive (orthopedic surgery). Know the indications, MOA, and side effects of each level.',
        ),

        HeaderBlock('Oral Medications'),
        TableBlock(
          title: 'Oral Antispasticity Medications',
          columns: ['Drug', 'Mechanism', 'Key Facts'],
          rows: [
            [
              'Baclofen',
              'GABA-B agonist\n(central, spinal cord)',
              'Drug of choice for spasticity in MS and SCI\nSedation, withdrawal risk (seizures)\nAlso used intrathecally (ITB pump)'
            ],
            [
              'Dantrolene',
              'Acts PERIPHERALLY at\nmuscle (sarcoplasmic\nreticulum — blocks Ca2+\nrelease)',
              'Drug of choice for CEREBRAL spasticity\nOnly drug acting outside CNS\nRisk of HEPATOTOXICITY\n(monitor LFTs)\nAlso used for malignant hyperthermia'
            ],
            [
              'Diazepam',
              'GABA-A binding\n(enhances GABA\nat chloride channel)',
              'Sedation, dependence, tolerance\nUseful for nighttime spasticity\nFirst oral agent shown effective for CP spasticity'
            ],
            [
              'Tizanidine',
              'Alpha-2 adrenergic\nagonist (central)',
              'Less sedation than diazepam\nMonitor LFTs (hepatotoxicity risk)\nSimilar to clonidine MOA'
            ],
            [
              'Clonidine',
              'Alpha-2 adrenergic\nagonist (central)',
              'Hypotension, sedation\nCan use transdermal patch\nAlso used for spasticity in SCI'
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Baclofen vs Dantrolene',
          'Baclofen (GABA-B agonist, CENTRAL) = drug of choice for spasticity in MS and SCI. Dantrolene (acts PERIPHERALLY at sarcoplasmic reticulum) = drug of choice for CEREBRAL spasticity. Dantrolene is the ONLY antispasticity drug that acts outside the CNS. Board favorite: Dantrolene also treats malignant hyperthermia.',
        ),
        PearlBlock(
          'Board Pearl — Dantrolene Hepatotoxicity',
          'Dantrolene carries a risk of fatal HEPATOTOXICITY. LFTs must be monitored regularly. Risk increases with doses >400 mg/day, female sex, age >35, and concurrent hepatotoxic medications. This is the most important side effect to know for boards.',
        ),

        HeaderBlock('Botulinum Toxin'),
        BulletCardBlock(
          title: 'Botulinum Toxin (BoNT) for Focal Spasticity',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Acts PRESYNAPTICALLY at the neuromuscular junction (NMJ)',
            'Blocks acetylcholine release from presynaptic nerve terminal',
            'Onset: 24-72 hours after injection',
            'Peak effect: 2 weeks',
            'Duration: Approximately 3 months (must be repeated)',
            'NO sensory side effects (motor block only)',
            'No tolerance development (unlike oral medications)',
            'Advantages over phenol nerve blocks: no dysesthesias, no sensory loss, more predictable',
            'Best for FOCAL spasticity (1-2 muscle groups)',
            'Combine with therapy/casting/orthotics for best results',
          ],
        ),
        PearlBlock(
          'Board Pearl — BoNT Timing',
          'Botulinum toxin onset = 24-72 hours, peaks at 2 weeks, duration ~3 months. It acts PRESYNAPTICALLY at the NMJ by blocking ACh release. Unlike phenol, it has NO sensory side effects and does NOT cause dysesthesias. Repeat injections are needed every 3-4 months.',
        ),

        HeaderBlock('Nerve Blocks'),
        TableBlock(
          title: 'Common Nerve Blocks in CP',
          columns: ['Nerve Block', 'Target', 'Indication'],
          rows: [
            ['Obturator nerve', 'Hip adductors', 'Reduce scissoring gait,\nimprove perineal hygiene'],
            ['Sciatic nerve branch', 'Hamstrings / knee flexors', 'Lessen crouch gait'],
            ['Tibial nerve', 'Gastrocnemius / soleus', 'Reduce equinus /\nplantar flexion posturing'],
            ['Femoral nerve', 'Quadriceps', 'Reduce knee recurvatum\n(stiff-knee gait)'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Phenol Neurolysis',
          'Phenol (5-7%) is used for chemical neurolysis in nerve blocks. Major disadvantage: risk of permanent DYSESTHESIAS (painful burning) if injected into a mixed (motor + sensory) nerve. Phenol is less expensive than botulinum toxin but has more side effects. Effects are more permanent than BoNT.',
        ),

        HeaderBlock('Intrathecal Baclofen (ITB) Pump'),
        BulletCardBlock(
          title: 'ITB Pump — Key Facts',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'FDA approved for: CP, TBI, MS, SCI (spasticity of spinal or cerebral origin)',
            'Delivers baclofen directly to intrathecal space (CSF) via implanted pump',
            'Achieves 100x CSF concentration with 1/100th the oral dose',
            'Effective for DIFFUSE spasticity and dystonia (not focal)',
            'Trial dose given via lumbar puncture before pump implantation',
            'Pump refilled percutaneously every 1-3 months',
          ],
        ),
        PearlBlock(
          'Board Pearl — ITB WITHDRAWAL is FATAL',
          'ITB pump WITHDRAWAL = medical emergency: hyperthermia, rhabdomyolysis, seizures, multi-organ failure, DEATH. Treat emergently with oral/enteral baclofen + IV benzodiazepines + supportive care. ITB OVERDOSE = respiratory depression, drowsiness, hypotonia. Withdrawal is MORE DANGEROUS than overdose.',
        ),
        PearlBlock(
          'Board Pearl — ITB Catheter Malfunction',
          'The most common complication of ITB pumps is catheter-related malfunction (kinking, disconnection, migration). This presents as acute return of spasticity (essentially withdrawal). Always check catheter integrity with X-ray or CT myelogram when there is sudden loss of effect.',
        ),

        HeaderBlock('Selective Dorsal Rhizotomy (SDR)'),
        BulletCardBlock(
          title: 'SDR Criteria & Details',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'IRREVERSIBLE procedure — selective cutting of dorsal (sensory) nerve rootlets',
            'Goal: Permanently reduce spasticity by interrupting the reflex arc',
            'Strict criteria for candidacy:',
            '  • Age 3-8 years (some centers extend to older)',
            '  • Spastic DIPLEGIA (best outcomes)',
            '  • Lack of dystonia or athetosis',
            '  • Preserved underlying strength',
            '  • Lack of significant fixed contractures',
            '  • Good trunk control and balance',
            '  • Good cognitive function and motivation',
            'Requires intensive post-operative PT (6-12 months minimum)',
            'NOT indicated for spastic quadriplegia, dystonia, or ataxia',
          ],
        ),
        PearlBlock(
          'Board Pearl — SDR Candidate',
          'The ideal SDR candidate is a child aged 3-8 with spastic DIPLEGIA, good underlying strength, good cognition, NO dystonia or athetosis, NO fixed contractures, and good selective motor control. SDR is IRREVERSIBLE — unlike ITB, which is reversible. Know these criteria cold for boards.',
        ),
      ],
    ),

    // ============ TAB 5: Gait & Orthotics ============
    TopicTab(
      title: 'Gait & Orthotics',
      blocks: [
        HeaderBlock('Gait Patterns in CP'),
        TextBlock(
          'Abnormal gait patterns in CP result from the combination of spasticity, weakness, poor selective motor control, and bony malalignment. Understanding these patterns is essential for prescribing appropriate orthotic and surgical interventions.',
          isIntro: true,
        ),

        HeaderBlock('Spastic Diplegia — Scissoring Gait'),
        BulletCardBlock(
          title: 'Spastic Diplegic Gait Pattern',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Hips: Flexed and adducted (scissoring pattern)',
            'Knees: Flexed with valgus stress',
            'Ankles: Equinus (toe-walking)',
            'Narrow base of support with cross-over stepping',
            'J-shaped or reversed gait cycle',
            'Increased energy expenditure compared to normal gait',
            'Etiology: Periventricular leukomalacia (PVL) in premature infants',
          ],
        ),
        PearlBlock(
          'Board Pearl — Scissoring = Diplegia',
          'Scissoring gait (hip adduction + flexion with knees flexed and ankles in equinus) is the hallmark of spastic DIPLEGIA. The key deforming forces are spastic hip adductors, hip flexors, hamstrings, and gastrocnemius/soleus.',
        ),

        HeaderBlock('Spastic Hemiplegia — Circumduction Gait'),
        BulletCardBlock(
          title: 'Hemiplegic Gait Pattern',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Weak hip flexion and ankle dorsiflexion on affected side',
            'Overactive posterior tibialis (causing varus foot)',
            'Compensatory hip hiking and circumduction in swing phase',
            'Affected arm held in flexion posture (flexed elbow, pronated forearm, flexed wrist)',
            'Shortened stride length on affected side',
            'Equinovarus foot posture most common',
            'Upper extremity typically more affected than lower extremity',
          ],
        ),
        PearlBlock(
          'Board Pearl — Posterior Tibialis in Hemiplegia',
          'In hemiplegic CP, the posterior tibialis is often overactive, causing dynamic equinoVARUS (foot turns inward). This is a key distinction from spastic diplegia where equinus (plantar flexion without varus) is more common. Split anterior tibialis transfer (SPLATT) is the classic surgical correction.',
        ),

        HeaderBlock('Crouch Gait'),
        BulletCardBlock(
          title: 'Crouch Gait Pattern',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Excessive hip flexion + excessive knee flexion + excessive ankle dorsiflexion',
            'Most energy-inefficient gait pattern',
            'Contributing factors:',
            '  • Tight hip flexors (psoas)',
            '  • Tight hamstrings pulling pelvis into posterior tilt',
            '  • Weak quadriceps (unable to extend knee in stance)',
            '  • Excessive ankle dorsiflexion (overlengthened Achilles or overcorrected equinus)',
            'Often develops in adolescence as a progression from equinus gait',
            'Can be iatrogenic — overlengthening the Achilles tendon converts equinus to crouch',
          ],
        ),
        PearlBlock(
          'Board Pearl — Iatrogenic Crouch',
          'Crouch gait can be IATROGENIC — caused by overlengthening the Achilles tendon during equinus correction. Loss of the plantarflexion-knee extension couple leads to excessive dorsiflexion and knee collapse. This is why GRAFO (ground reaction AFO) may be prescribed to prevent crouch after Achilles lengthening.',
        ),
        PearlBlock(
          'Board Pearl — Equinus to Crouch Progression',
          'Natural history: Many children with spastic diplegia progress from toe-walking (equinus) in early childhood to CROUCH gait in adolescence due to relative muscle shortening with bone growth, increased body weight, and weakening of already strained muscles. This progression is important for board questions.',
        ),

        HeaderBlock('Orthotic Management'),
        TableBlock(
          title: 'AFO Types and Indications',
          columns: ['Orthosis', 'Design', 'Indication'],
          rows: [
            ['SMO\n(Supramalleolar)', 'Below malleoli;\ncontrols hindfoot', 'Mild pronation/supination;\nhindfoot valgus/varus;\npreserves ankle ROM'],
            ['PLS\n(Posterior Leaf\nSpring)', 'Thin posterior strut;\nflexible', 'Dorsiflexion weakness\n(foot drop); allows\nplantar flexion in stance'],
            ['Solid AFO', 'Rigid; blocks all\nankle motion', 'Moderate-severe equinus;\nprevents plantar flexion;\nblocks dorsiflexion too'],
            ['Hinged AFO', 'Allows dorsiflexion;\nblocks plantar flexion', 'Equinus with some\nactive dorsiflexion;\nhemiplegic CP (classic choice)'],
            ['GRAFO\n(Ground Reaction\nAFO)', 'Anterior tibial shell;\nrigid', 'CROUCH gait; uses ground\nreaction force to extend\nknee; blocks dorsiflexion'],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — Hemiplegic CP AFO',
          'Hemiplegic CP is classically managed with a HINGED AFO — allows dorsiflexion during stance (tibial progression) while blocking equinus (plantar flexion). The hinge permits a more normal gait pattern than a solid AFO.',
        ),
        PearlBlock(
          'Board Pearl — Diplegic CP AFO',
          'Diplegic CP often requires SOLID AFOs or GRAFOs. If equinus is the primary problem, a solid AFO blocks plantar flexion. If crouch gait develops, a GRAFO (ground reaction AFO) uses the anterior shell to create a knee extension moment, preventing crouch.',
        ),
        PearlBlock(
          'Board Pearl — GRAFO Mechanism',
          'The ground reaction AFO (GRAFO) works by blocking ankle dorsiflexion, which keeps the ground reaction force vector ANTERIOR to the knee joint axis, creating a knee EXTENSION moment. This is the key biomechanical principle — the GRAFO treats crouch gait by using ground reaction forces to extend the knee.',
        ),

        BulletCardBlock(
          title: 'Higher-Level Orthoses',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'KAFO (Knee-Ankle-Foot Orthosis): For knee instability/recurvatum; rarely used in CP',
            'HKAFO (Hip-Knee-Ankle-Foot Orthosis): For hip control; very limited use in CP',
            'RGO (Reciprocating Gait Orthosis): Primarily for spinal cord lesions, not typical CP',
            'TLSO: For scoliosis management in nonambulatory CP (GMFCS IV-V)',
          ],
        ),
      ],
    ),

    // ============ TAB 6: Surgical & Rehabilitation ============
    TopicTab(
      title: 'Surgery & Rehab',
      blocks: [
        HeaderBlock('Orthopedic Surgery'),
        TextBlock(
          'Orthopedic surgery in CP addresses fixed contractures, bony deformities, and lever arm dysfunction that cannot be managed conservatively. Modern management favors single-event multilevel surgery (SEMLS) over staged procedures.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'SEMLS — Single-Event Multilevel Surgery',
          themeColor: const Color(0xFF14B8A6),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'SEMLS addresses ALL levels of deformity in a SINGLE operative session',
            'Replaces the older "birthday syndrome" (staged annual surgeries)',
            'Advantages: Single anesthesia, single rehab period, addresses biomechanical interdependence',
            'Typically performed at age 7-10 years (after gait maturation)',
            'Requires comprehensive preoperative gait analysis (3D instrumented gait lab)',
            'Reduced total number of surgical procedures compared to staged approach',
          ],
        ),
        PearlBlock(
          'Board Pearl — SEMLS vs Staged Surgery',
          'SEMLS has replaced staged (serial) surgery as the standard of care for ambulatory CP. The "birthday syndrome" referred to children undergoing surgery every year, each addressing a single level. SEMLS corrects ALL levels simultaneously, reducing total anesthesia exposures and rehabilitation time.',
        ),

        HeaderBlock('Types of Orthopedic Procedures'),
        TableBlock(
          title: 'Orthopedic Procedures in CP',
          columns: ['Category', 'Procedure', 'Indication'],
          rows: [
            [
              'Soft Tissue\nReleases',
              'Adductor release/transfer\nPsoas lengthening\nHamstring lengthening\nGastrocnemius recession',
              'Hip scissoring\nHip flexion contracture\nKnee flexion contracture\nEquinus deformity'
            ],
            [
              'Tendon\nTransfers',
              'SPLATT (split anterior\ntibialis transfer)\nRectus femoris transfer\nFlexor-pronator slide (UE)',
              'Dynamic equinovarus\nStiff-knee gait\nUpper extremity spasticity'
            ],
            [
              'Bony\nProcedures',
              'Femoral derotation osteotomy\nTibial derotation osteotomy\nPelvic osteotomy (Dega/San Diego)\nCalcaneal osteotomy\nArthrodesis (fusion)',
              'Femoral anteversion\nTibial torsion\nHip dysplasia\nHindfoot valgus\nFixed deformity'
            ],
          ],
          headerColor: const Color(0xFF14B8A6),
        ),
        PearlBlock(
          'Board Pearl — SPLATT',
          'Split Anterior Tibialis Transfer (SPLATT): The anterior tibialis tendon is split and the lateral half is transferred to the cuboid or lateral cuneiform. This converts a dynamic varus deformity into a balanced foot. Classic procedure for equinovarus in hemiplegic CP.',
        ),

        HeaderBlock('Rehabilitation Interventions'),
        BulletCardBlock(
          title: 'CIMT — Constraint-Induced Movement Therapy',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Indicated for HEMIPLEGIC CP (unilateral involvement)',
            'Non-affected hand is constrained (cast or mitt) for 2-6 hours/day',
            'Forces use of the affected upper extremity',
            'Based on learned non-use theory (Taub)',
            'Evidence supports improved hand function and quality of movement',
            'Modified protocols for pediatric use (mCIMT): shorter constraint periods',
            'CIMT addresses LEARNED NON-USE of the hemiplegic hand',
          ],
        ),
        PearlBlock(
          'Board Pearl — CIMT',
          'Constraint-Induced Movement Therapy (CIMT) is specifically for HEMIPLEGIC CP. The unaffected hand is constrained 2-6 hours/day, forcing use of the affected hand. It is based on the concept of "learned non-use." Not appropriate for bilateral CP (diplegia/quadriplegia).',
        ),
        BulletCardBlock(
          title: 'Bimanual Therapy & Other Approaches',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Bimanual (HABIT): Alternative to CIMT; practices two-handed activities',
            'May be preferred when bimanual coordination is the primary goal',
            'Aquatic therapy: Buoyancy reduces gravity effect, facilitates movement',
            'Hippotherapy: Horse-riding therapy for trunk control and postural stability',
            'Functional electrical stimulation (FES): For dorsiflexor weakness',
            'Serial casting: Progressive stretch for dynamic contractures',
            'Goal-directed training: Activity-based, task-specific practice',
          ],
        ),

        HeaderBlock('Aging with Cerebral Palsy'),
        BulletCardBlock(
          title: 'Adult Issues in CP',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Health problems develop at the SAME RATE as the general population',
            'Most common complaint: NECK PAIN (secondary to osteoarthritis)',
            'Pain prevalence: 50% of spastic CP and 75% of dyskinetic CP have chronic pain',
            'Pain is often UNDER-RECOGNIZED and UNDER-TREATED in adults with CP',
            'Scoliosis: Higher incidence in NONAMBULATORY individuals (GMFCS IV-V)',
            'Near-normal reproductive capability (fertility is preserved)',
            'Cervical myelopathy can develop from degenerative changes',
            'Functional decline often begins in 3rd-4th decade',
            'Osteoporosis and fracture risk increased (especially nonambulatory)',
            'Fatigue is a major complaint — increases with age',
          ],
        ),
        PearlBlock(
          'Board Pearl — Neck Pain in Adult CP',
          'The most common complaint in adults with CP is NECK PAIN secondary to cervical osteoarthritis. This results from years of abnormal head/neck positioning, dystonia, and increased mechanical stress. Cervical spine degenerative changes develop earlier than in the general population.',
        ),
        PearlBlock(
          'Board Pearl — Pain in CP',
          '50% of individuals with spastic CP and 75% with dyskinetic CP experience chronic pain. Pain is the most under-recognized and under-treated comorbidity in adult CP. Sources include musculoskeletal (contractures, OA, hip displacement), neuropathic, and GI (GERD, constipation).',
        ),
        PearlBlock(
          'Board Pearl — Scoliosis in CP',
          'Scoliosis is more common and more severe in NONAMBULATORY CP (GMFCS IV-V). Unlike idiopathic scoliosis, neuromuscular scoliosis in CP is often a long C-curve involving the pelvis, progresses after skeletal maturity, and typically requires posterior spinal fusion extending to the pelvis.',
        ),

        HeaderBlock('Vocational Outcomes'),
        TableBlock(
          title: 'Vocational Potential by IQ',
          columns: ['IQ Range', 'Vocational Level', 'Expected Outcome'],
          rows: [
            ['IQ > 80', 'Competitive\nemployment', 'Independent employment\nin community settings'],
            ['IQ 50-79', 'Sheltered\nworkshop', 'Supported employment\nwith supervision'],
            ['IQ < 50', 'Day program', 'Unlikely to achieve\ncompetitive employment'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Employment Predictors',
          'The four key predictors of future employment in CP are: (1) IQ level (strongest predictor), (2) ambulation ability, (3) speech clarity, and (4) hand function. IQ >80 correlates with competitive employment. These predictors are frequently tested on boards.',
        ),
        PearlBlock(
          'Board Pearl — Reproduction in CP',
          'Adults with CP have NEAR-NORMAL reproductive capability. Fertility is generally preserved. Pregnancy is possible but may require specialized obstetric management due to pelvic deformities, spasticity, and potential medication interactions (e.g., teratogenicity of antiepileptic drugs).',
        ),
      ],
    ),
  ],
);
