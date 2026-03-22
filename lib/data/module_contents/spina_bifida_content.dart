import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final spinaBifidaContent = TopicData(
  id: 'spina-bifida',
  title: 'Spina Bifida (Myelodysplasia)',
  tabs: [
    // ============ TAB 1: Types & Epidemiology ============
    TopicTab(
      title: 'Types & Epidemiology',
      blocks: [
        HeaderBlock('Spina Bifida Overview'),
        TextBlock(
          'Spina bifida is a congenital defect resulting from failure of fusion of the posterior vertebral elements. The neural tube closure defect occurs around day 26 of gestation. Seventy-five percent of lesions affect the lumbar and lumbosacral segments.',
          isIntro: true,
        ),

        PearlBlock(
          'Board Pearl — Neural Tube Closure',
          'The neural tube closes around day 26 of gestation. Failure of posterior element fusion results in spina bifida. This is a critical embryologic time point — most women do not yet know they are pregnant, which is why periconceptual folic acid supplementation is essential.',
        ),

        HeaderBlock('Epidemiology'),
        BulletCardBlock(
          title: 'Geographic & Genetic Factors',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Highest incidence: British Isles — Ireland, Wales, Scotland',
            'Lowest incidence: Japan',
            '75% of lesions affect lumbar/lumbosacral segments',
            'Recurrence rate: 2.5-5% after one affected child',
            'Recurrence rate DOUBLES after two affected children',
            'Incidence in offspring of one affected parent: 4%',
          ],
        ),

        PearlBlock(
          'Board Pearl — Folic Acid Prevention',
          'Folic acid 0.4 mg daily periconceptually reduces NTD occurrence and recurrence. If the mother has had a prior NTD pregnancy, the dose increases to 4 mg/day (10x the standard dose). Folic acid must be started BEFORE conception to be effective.',
        ),

        HeaderBlock('Prenatal Diagnosis'),
        BulletCardBlock(
          title: 'Alpha-Fetoprotein (AFP)',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Elevated maternal serum AFP is a screening marker',
            'Reliable in 80% of OPEN neural tube defects',
            'Best detected at weeks 13-15 of gestation',
            'Amniocentesis AFP confirms elevated serum levels',
            'Ultrasound used for anatomic confirmation',
          ],
        ),

        PearlBlock(
          'Board Pearl — AFP Screening',
          'AFP is reliable in 80% of open NTDs at weeks 13-15 of gestation. It will NOT detect closed defects (spina bifida occulta). Elevated AFP is also seen in omphalocele, gastroschisis, and twin pregnancies.',
        ),

        HeaderBlock('Types of Spina Bifida'),
        TableBlock(
          title: 'Classification of Spina Bifida',
          columns: ['Type', 'Sac Contents', 'Key Features'],
          rows: [
            ['Occulta', 'No cystic sac', 'Failure of posterior element fusion only\nLumbosacral/sacral location\nNOT associated with Arnold-Chiari\n50% have skin markers (pigmented nevus, angioma, hirsute patch, dimple)'],
            ['Meningocele', 'Meninges +\nspinal fluid', 'Cystic sac WITHOUT spinal cord\n<10% of spina bifida cystica\nBetter neurologic prognosis'],
            ['Myelomeningocele', 'Meninges +\nspinal cord +\nspinal fluid', 'Overwhelming majority of cystica\nArnold-Chiari II in 80-90%\nHydrocephalus in ~90%\nMost clinically significant type'],
            ['Myelocele', 'Cystic cavity\nanterior to\nspinal cord', 'Cystic cavity in front of anterior wall\nof spinal cord\nMost severe form'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),

        PearlBlock(
          'Board Pearl — Occulta vs Cystica',
          'Spina bifida occulta is NOT associated with Arnold-Chiari malformation and has no cystic sac. Fifty percent of patients have a skin marker over the defect (pigmented nevus, angioma, hirsute patch, or dimple). Myelomeningocele is the most common and most clinically significant form of spina bifida cystica.',
        ),

        PearlBlock(
          'Board Pearl — Myelomeningocele Is the Big One',
          'Myelomeningocele constitutes the overwhelming majority of spina bifida cystica cases. The sac contains meninges, spinal cord, AND spinal fluid. It is associated with Arnold-Chiari Type II malformation in 80-90% and hydrocephalus in approximately 90% of cases.',
        ),
      ],
    ),

    // ============ TAB 2: Associated Conditions ============
    TopicTab(
      title: 'Associated Conditions',
      blocks: [
        HeaderBlock('Arnold-Chiari Type II Malformation'),
        BulletCardBlock(
          title: 'Hindbrain Herniation',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Present in 80-90% of myelomeningocele patients',
            'Hindbrain herniation through the foramen magnum',
            'Cerebellar tonsils and brainstem displaced downward into the cervical spinal canal',
            'Infant symptoms: Stridor, apnea, dysphagia',
            'Older children: Upper extremity weakness, neck pain, nystagmus',
          ],
        ),

        PearlBlock(
          'Board Pearl — Leading Cause of Death',
          'Central respiratory dysfunction (from Arnold-Chiari II brainstem compression) is the most frequent SINGLE cause of death in myelodysplasia. Infant stridor and apnea are ominous signs that require urgent evaluation for brainstem compression.',
        ),

        HeaderBlock('Hydrocephalus'),
        BulletCardBlock(
          title: 'VP Shunt Management',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Approximately 90% of myelomeningocele patients develop hydrocephalus',
            'Most require ventriculoperitoneal (VP) shunt placement',
            'Shunt malfunction signs: Headache, vomiting, irritability, lethargy, bulging fontanelle',
            'Shunt infections most common in first 6 months after placement',
            'Shunt revision may be needed multiple times throughout life',
          ],
        ),

        PearlBlock(
          'Board Pearl — Hydrocephalus Rate',
          'Approximately 90% of myelomeningocele patients require VP shunting. Shunt malfunction is the most common shunt complication. Always consider shunt malfunction in any myelomeningocele patient with new headache, vomiting, or change in mental status.',
        ),

        HeaderBlock('Tethered Spinal Cord'),
        BulletCardBlock(
          title: 'Clinical Presentation of Tethered Cord',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Presents as CHANGING neurologic status — not static deficits',
            'Progressive scoliosis (new or worsening curve)',
            'New urologic dysfunction (worsening incontinence pattern)',
            'New pain (back pain, leg pain)',
            'Especially common during growth spurts',
            'Diagnosis confirmed by MRI of the spine',
            'Surgical untethering may be required',
          ],
        ),

        PearlBlock(
          'Board Pearl — Tethered Cord Red Flags',
          'In a myelomeningocele patient, any CHANGE in neurologic status, new scoliosis, new urologic dysfunction, or new pain — especially during a growth spurt — should raise immediate concern for tethered cord. A static neurologic deficit is expected; a CHANGING one is not.',
        ),

        HeaderBlock('Syringomyelia'),
        BulletCardBlock(
          title: 'Syringomyelia in Myelodysplasia',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Fluid-filled cavity (syrinx) within the spinal cord',
            'Can cause progressive upper extremity weakness and sensory changes',
            'May present with worsening scoliosis or hand weakness',
            'Associated with Arnold-Chiari malformation',
            'Diagnosed by MRI of the spine',
          ],
        ),

        HeaderBlock('Latex Allergy'),
        BulletCardBlock(
          title: 'Latex Sensitivity in Myelomeningocele',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Prevalence: 18-73% of myelomeningocele patients',
            '500 times increased risk of anaphylaxis in the operating room',
            'Due to repeated early exposure to latex during surgeries and catheterizations',
            'ALL myelomeningocele patients should be treated as latex-allergic',
            'Universal latex precautions for every procedure and hospital visit',
            'Latex-free gloves, catheters, and equipment mandatory',
          ],
        ),

        PearlBlock(
          'Board Pearl — Latex Allergy Is Universal Precaution',
          'ALL myelomeningocele patients should be treated as latex-allergic regardless of testing results. The 500-fold increased risk of OR anaphylaxis makes this a critical safety issue. Universal latex precautions must be followed for every encounter.',
        ),

        HeaderBlock('Scoliosis in Myelodysplasia'),
        BulletCardBlock(
          title: 'Scoliosis by Lesion Level',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Scoliosis incidence: 70% with lesions ABOVE L2',
            'Scoliosis incidence: 40% with lesions BELOW L4',
            'Higher lesions = greater scoliosis risk and faster progression',
            'Neuromuscular scoliosis — bracing less effective than in idiopathic',
            'Surgical intervention often needed for progressive curves',
            'New or progressive scoliosis should prompt workup for tethered cord',
          ],
        ),

        PearlBlock(
          'Board Pearl — Scoliosis Rates by Level',
          'Scoliosis affects 70% of patients with lesion levels above L2 and 40% with lesions below L4. In any myelodysplasia patient with new or worsening scoliosis, always evaluate for tethered cord before attributing it to the primary lesion.',
        ),
      ],
    ),

    // ============ TAB 3: Functional Levels ============
    TopicTab(
      title: 'Functional Levels',
      blocks: [
        HeaderBlock('Functional Levels by Motor Level'),
        TextBlock(
          'The functional motor level in spina bifida determines ambulation potential, orthotic needs, and long-term mobility outcomes. This is one of the HIGHEST-YIELD topics for board examinations.',
          isIntro: true,
        ),

        PearlBlock(
          'Board Pearl — Level Determines Everything',
          'The motor level in spina bifida predicts ambulation potential, orthotic prescription, and long-term wheelchair dependence. Know the key muscle for each level and the corresponding functional outcome. This is extremely high yield for boards.',
        ),

        TableBlock(
          title: 'Motor Level, Key Muscles & Functional Outcomes',
          columns: ['Level', 'Key Muscles', 'Child Mobility', 'Adult Mobility'],
          rows: [
            ['T12', 'Totally paralyzed LE\n(no LE function)', 'Standing brace\nfor standing only;\nwheelchair for mobility', 'Wheelchair'],
            ['L1-L2', 'Hip flexors\n(iliopsoas)', 'Crutches + braces\n(HKAFO/RGO)', 'Wheelchair;\nhousehold\nambulation only'],
            ['L3', 'Quadriceps\n(knee extension)', 'Crutches + braces\n(KAFO);\nhousehold ambulation', '50% wheelchair;\n50% limited\ncommunity ambulation'],
            ['L3-L4', 'Quadriceps +\nmedial hamstrings', 'AFOs;\ncommunity ambulator', 'Community\nambulator\nwith AFOs'],
            ['L4', 'Tibialis anterior\n(dorsiflexion)', 'AFOs;\ncommunity ambulator', 'Community\nambulator\nwith AFOs'],
            ['L5', 'Medial hamstrings +\ntibialis anterior +\nperoneals +\nhip abductors', 'Crutches;\ncommunity\nambulation', 'Community\nambulator'],
            ['S1', 'Lateral hamstring +\nperoneals +\ngastrocsoleus (weak)', 'Community\nambulation', 'Community\nambulator'],
            ['S1-S2', 'Plantar flexion\npresent', 'Community\nambulator', 'Community\nambulator;\nmay need no orthosis'],
            ['S2-S3', 'Mild loss intrinsic\nfoot muscles only', 'Normal ambulation\npossible', 'Normal\nambulation\npossible'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),

        PearlBlock(
          'Board Pearl — L4 = Dorsiflexion = Community Ambulator',
          'L4 is a critical board-tested level: the tibialis anterior is present, giving the patient dorsiflexion. This makes the patient a community ambulator with AFOs. Remember: L4 = dorsiflexion = AFO = community ambulation.',
        ),

        PearlBlock(
          'Board Pearl — L3 = Quadriceps = 50/50',
          'At L3, the quadriceps are present (knee extension). In childhood these patients ambulate with crutches and KAFOs, but by adulthood approximately 50% become wheelchair-dependent. L3 is the "50/50 level" for adult ambulation.',
        ),

        PearlBlock(
          'Board Pearl — Thoracic Level = Wheelchair',
          'Patients with thoracic level lesions have totally paralyzed lower extremities. While standing frames may be used for physiologic benefits in childhood, all thoracic-level patients use a wheelchair for functional mobility by school age and beyond.',
        ),

        HeaderBlock('Community Ambulation Rates'),
        ScaleBlock(
          scaleName: 'Community Ambulation by Lesion Level',
          description: 'Percentage of patients achieving community ambulation by motor level',
          columns: ['Motor Level', 'Community Ambulation Rate', 'Notes'],
          rows: [
            ['Thoracic', '0-33%', 'Wheelchair dependent in adulthood'],
            ['High Lumbar (L1-L2)', '31%', 'Mostly household ambulators as adults'],
            ['Low Lumbar (L3-L5)', '38%', '95% of functional community ambulators are ages 15-31 years'],
            ['Sacral', '~100%', 'All achieve community ambulation'],
          ],
          boardPearl: '95% of functional community ambulators with low lumbar lesions are between 15-31 years old. After age 31, many transition to wheelchair use due to energy expenditure, weight gain, and joint degeneration.',
        ),

        PearlBlock(
          'Board Pearl — Sacral Level = Community Ambulation',
          'ALL patients with sacral-level lesions achieve community ambulation. Patients with S2-S3 lesions may have essentially normal ambulation with only mild loss of intrinsic foot muscles.',
        ),

        HeaderBlock('Orthotic Prescription by Level'),
        TableBlock(
          title: 'Orthotic Prescription Guide',
          columns: ['Motor Level', 'Orthosis', 'Assistive Device'],
          rows: [
            ['T12-L2', 'HKAFO or RGO\n(Reciprocating Gait Orthosis)', 'Crutches or walker;\nwheelchair for distance'],
            ['L3', 'KAFO\n(Knee-Ankle-Foot Orthosis)', 'Crutches or walker'],
            ['L4-L5', 'AFO\n(Ankle-Foot Orthosis)', 'Crutches may be needed;\nmay ambulate independently'],
            ['S1+', 'Shoe insert or\nno orthosis needed', 'None typically needed'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),

        PearlBlock(
          'Board Pearl — Orthotic Matching',
          'Match the orthosis to the motor level: T12-L2 = HKAFO/RGO/wheelchair, L3 = KAFO, L4-L5 = AFO, S1+ = shoe insert or none. The orthosis must control all joints at and below the weakest functional level.',
        ),

        PearlBlock(
          'Board Pearl — RGO for Thoracic/High Lumbar',
          'The Reciprocating Gait Orthosis (RGO) is used for thoracic and high lumbar lesions. It couples hip flexion on one side with hip extension on the other via a cable mechanism, enabling a reciprocal gait pattern. Despite this, most of these patients become full-time wheelchair users by adolescence.',
        ),
      ],
    ),

    // ============ TAB 4: Bowel & Bladder ============
    TopicTab(
      title: 'Bowel & Bladder',
      blocks: [
        HeaderBlock('Neurogenic Bladder'),
        TextBlock(
          'Over 90% of patients with myelomeningocele have neurogenic bladder dysfunction. Urinary management is critical to prevent renal damage, which is a leading cause of morbidity and mortality.',
          isIntro: true,
        ),

        HeaderBlock('Bladder Innervation'),
        TableBlock(
          title: 'Innervation of the Bladder',
          columns: ['Component', 'Spinal Level', 'Nerve', 'Function'],
          rows: [
            ['Sympathetic', 'T10-L2', 'Hypogastric nerve', 'Bladder storage\n(detrusor relaxation,\ninternal sphincter contraction)'],
            ['Parasympathetic', 'S2-S4', 'Pelvic nerve', 'Bladder emptying\n(detrusor contraction)'],
            ['Somatic', 'S2-S5', 'Pudendal nerve', 'External sphincter\ncontrol\n(voluntary continence)'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),

        PearlBlock(
          'Board Pearl — Bladder Innervation',
          'Sympathetic (T10-L2, hypogastric nerve) = storage. Parasympathetic (S2-S4, pelvic nerve) = emptying. Somatic (S2-S5, pudendal nerve) = voluntary sphincter control. Remember: "S2-S4 keeps urine off the floor" for parasympathetic voiding control.',
        ),

        HeaderBlock('Bladder Dysfunction Types'),
        BulletCardBlock(
          title: 'Hypertonic (Spastic) Bladder',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Most common bladder type in THORACIC lesions',
            'Upper motor neuron pattern — spastic detrusor',
            'Small-capacity, high-pressure bladder',
            'Detrusor-sphincter dyssynergia common',
            'High risk for vesicoureteral reflux and hydronephrosis',
            'Requires anticholinergic medication (oxybutynin) + intermittent catheterization',
          ],
        ),
        BulletCardBlock(
          title: 'Hypotonic (Flaccid) Bladder',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Most common bladder type in SACRAL lesions',
            'Lower motor neuron pattern — flaccid detrusor',
            'Large-capacity, low-pressure bladder',
            'Overflow incontinence — continuous dribbling',
            'Less dangerous than hypertonic but still requires management',
            'Intermittent catheterization is mainstay of treatment',
          ],
        ),

        PearlBlock(
          'Board Pearl — Bladder Type by Lesion Level',
          'Thoracic lesions = hypertonic (spastic) bladder (UMN pattern, high pressure, high risk). Sacral lesions = hypotonic (flaccid) bladder (LMN pattern, low pressure, overflow incontinence). The hypertonic bladder is MORE dangerous because high intravesical pressures cause reflux and renal damage.',
        ),

        HeaderBlock('Urologic Statistics'),
        BulletCardBlock(
          title: 'Key Numbers',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Urinary incontinence in 95% of myelomeningocele patients',
            'Hydronephrosis in 7-30% of infants at initial evaluation',
            'Vesicourethral reflux present at birth in 15-20%',
            'Urologic causes account for 40% of deaths between ages 5-30',
          ],
        ),

        PearlBlock(
          'Board Pearl — Renal Protection Is the Goal',
          'The primary goal of bladder management is to PREVENT RENAL DAMAGE by preventing urinary tract infections and vesicoureteral reflux. Renal failure from untreated neurogenic bladder was historically the leading cause of death in spina bifida. Urologic causes still account for 40% of deaths between ages 5-30.',
        ),

        HeaderBlock('Catheterization'),
        BulletCardBlock(
          title: 'Intermittent Catheterization Program',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Initiated when residual volume is 20 mL or greater',
            'Clean intermittent catheterization (CIC) — not sterile technique',
            'Self-catheterization is achievable by age 5-6 years',
            'Boys learn self-catheterization MORE EASILY than girls (anatomic visibility)',
            'Performed every 3-4 hours during the day',
            'Goal: Keep bladder volumes low to prevent reflux',
          ],
        ),

        PearlBlock(
          'Board Pearl — Self-Catheterization Age',
          'Children can learn self-catheterization by age 5-6 years. Boys learn more easily than girls due to easier visualization and access to the urethral meatus. Clean (not sterile) intermittent catheterization is the standard technique. Catheterization is initiated when residual volume reaches 20 mL or greater.',
        ),

        HeaderBlock('Bowel Management'),
        BulletCardBlock(
          title: 'Neurogenic Bowel',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Most myelomeningocele patients have neurogenic bowel dysfunction',
            'Bulbocavernosus or anocutaneous reflex presence = greater chance of bowel continence',
            'Timed bowel programs with consistent schedule are essential',
            'Digital stimulation, suppositories, or mini-enemas used for scheduled evacuation',
            'High-fiber diet and adequate fluid intake support bowel program',
            'Goal: Social continence — predictable, timed evacuation',
          ],
        ),

        PearlBlock(
          'Board Pearl — Bowel Continence Predictor',
          'The presence of the bulbocavernosus or anocutaneous reflex indicates intact sacral reflex arc (S2-S4) and predicts a GREATER chance of achieving bowel continence. Absence of these reflexes suggests a lower motor neuron bowel with less reflex-mediated emptying.',
        ),
      ],
    ),

    // ============ TAB 5: Outcomes & Considerations ============
    TopicTab(
      title: 'Outcomes & Considerations',
      blocks: [
        HeaderBlock('Cognitive & Academic Outcomes'),
        BulletCardBlock(
          title: 'Intellectual Function',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Intellectual function correlates INVERSELY with spinal cord level',
            'Higher lesion level = lower IQ (due to increased hydrocephalus severity)',
            'Shunted hydrocephalus is the primary factor affecting cognition',
            'Number of shunt revisions also inversely correlates with IQ',
            'Verbal IQ typically higher than performance IQ ("cocktail party syndrome")',
            'Learning disabilities common — especially in math, visual-spatial processing',
          ],
        ),

        PearlBlock(
          'Board Pearl — IQ and Lesion Level',
          'Intellectual function correlates inversely with spinal cord level — higher lesions are associated with lower IQ. This is primarily mediated through hydrocephalus severity and number of shunt revisions, not the spinal lesion itself.',
        ),

        HeaderBlock('Life Outcomes'),
        BulletCardBlock(
          title: 'Education, Employment & Independence',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '50% complete high school education',
            'Independent living achieved by 30-60%',
            'Employment rate: 25-50%',
            'Social isolation and depression are common barriers',
            'Transportation is a major barrier to community integration',
            'Transition planning should begin in early adolescence',
          ],
        ),

        HeaderBlock('Reproductive Considerations'),
        BulletCardBlock(
          title: 'Fertility & Offspring Risk',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Conception IS possible in women with spina bifida',
            'Men may have reduced fertility due to neurogenic dysfunction',
            'Incidence of NTD in offspring of one affected parent: 4%',
            'Folic acid supplementation (4 mg/day) recommended for affected women planning pregnancy',
            'Pregnancy classified as high-risk — requires multidisciplinary management',
          ],
        ),

        PearlBlock(
          'Board Pearl — Offspring Risk',
          'The incidence of neural tube defects in offspring of one affected parent is 4%. Women with spina bifida CAN conceive. They should take 4 mg/day folic acid (high-dose) periconceptually given their personal history of NTD.',
        ),

        HeaderBlock('Mortality'),
        BulletCardBlock(
          title: 'Causes of Death',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Central respiratory dysfunction: Most frequent single cause of death (Arnold-Chiari II brainstem compression)',
            'Urologic causes: 40% of deaths between ages 5-30 (renal failure, UTI/sepsis)',
            'Shunt malfunction: Can cause acute life-threatening increased ICP',
            'Improved survival with modern management — majority now survive to adulthood',
          ],
        ),

        PearlBlock(
          'Board Pearl — Causes of Death by Age',
          'In infancy, central respiratory dysfunction from Arnold-Chiari II is the most frequent single cause of death. Between ages 5-30, urologic causes account for 40% of deaths. Shunt malfunction remains a lifelong risk. Modern management has dramatically improved survival.',
        ),

        HeaderBlock('Orthopedic Management'),
        BulletCardBlock(
          title: 'Spine Deformities',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Scoliosis: 70% above L2, 40% below L4',
            'Kyphosis: Congenital kyphosis common in thoracolumbar lesions',
            'Lordosis: Compensatory in ambulatory patients',
            'Progressive curves require surgical intervention',
            'New scoliosis → always evaluate for tethered cord',
          ],
        ),
        BulletCardBlock(
          title: 'Hip, Knee & Foot Deformities',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Hip dislocations: Common in L3-L4 levels due to muscle imbalance (hip flexor/adductor stronger than extensors/abductors)',
            'Hip dislocation treatment controversial — surgery often does not improve function in non-ambulatory patients',
            'Knee contractures: Flexion contractures from hamstring spasticity; extension contractures from quad dominance',
            'Foot deformities: Clubfoot, vertical talus, cavovarus — vary by level',
            'Goal of orthopedic management: Maintain a plantigrade, braceable foot for ambulation',
          ],
        ),

        PearlBlock(
          'Board Pearl — Hip Surgery in Spina Bifida',
          'Hip dislocation surgery in spina bifida is controversial. For non-ambulatory patients (thoracic/high lumbar), surgical reduction of dislocated hips generally does NOT improve function and may cause complications. For ambulatory patients (L3-L5), hip stability is more important for preserving walking ability.',
        ),

        PearlBlock(
          'Board Pearl — Plantigrade Foot Is the Goal',
          'The goal of foot management in spina bifida is a plantigrade (flat on the ground), braceable foot. This allows effective orthotic use and maximizes ambulation potential. Rigid deformities that prevent bracing may require surgical correction.',
        ),

        HeaderBlock('Key Board Review Points'),
        BulletCardBlock(
          title: 'High-Yield Summary',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Neural tube closes at day 26 of gestation',
            'Folic acid: 0.4 mg standard, 4 mg if prior NTD pregnancy',
            '75% of lesions are lumbar/lumbosacral',
            'Myelomeningocele: Arnold-Chiari II (80-90%), hydrocephalus (90%)',
            'ALL myelomeningocele patients = latex precautions',
            'Central respiratory dysfunction = #1 cause of death (infants)',
            'Urologic causes = 40% of deaths ages 5-30',
            'L4 = tibialis anterior = dorsiflexion = AFO = community ambulator',
            'Self-catheterization by age 5-6; boys learn more easily',
            'IQ inversely correlates with lesion level',
            'Tethered cord: CHANGING neuro status, new scoliosis, new bladder dysfunction, new pain during growth spurts',
          ],
        ),
      ],
    ),
  ],
);
