import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final bonesJointsContent = TopicData(
  id: 'bones-joints',
  title: 'Diseases of the Bones & Joints',
  tabs: [
    // ============ TAB 1: DDH & Hip Conditions ============
    TopicTab(
      title: 'DDH & Hip',
      blocks: [
        HeaderBlock('Developmental Dysplasia of the Hip (DDH)'),
        TextBlock(
          'DDH encompasses a spectrum of hip joint abnormalities ranging from mild acetabular dysplasia to frank dislocation. It affects approximately 1-2 per 1,000 live births for frank dislocation and 10-20 per 1,000 for instability or dysplasia. The left hip is affected in roughly 60% of cases because the most common fetal position (left occiput anterior) presses the left hip against the maternal sacrum.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Epidemiology & Risk Factors',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Incidence: 1-2 per 1,000 (dislocation); 10-20 per 1,000 (instability/dysplasia)',
            'Strong female predominance (F:M ratio 4:1 to 8:1)',
            'Left hip affected in ~60% of cases (left occiput anterior fetal position)',
            'Risk factors: Breech presentation, female sex, firstborn status, positive family history, oligohydramnios',
            'Children with metatarsus adductus or torticollis at birth have increased incidence',
            'Maternal history of dislocated hip increases risk (1 in 25 non-breech, 1 in 15 breech)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Asymmetric Skin Folds',
          'Asymmetric skin folds are suggestive but NOT diagnostic of DDH; they are present in approximately 25% of normal infants. Do not rely on this finding alone for diagnosis.',
        ),

        HeaderBlock('Clinical Examination Maneuvers'),
        TableBlock(
          title: 'DDH Physical Examination Tests',
          columns: ['Test', 'Technique', 'What It Detects'],
          rows: [
            ['Barlow', 'Hip flexed 90\u00b0;\nadduction with\nposterior force', 'Dislocatable hip\n(pushes it OUT)'],
            ['Ortolani', 'Hip flexed 90\u00b0;\nabduction with\nanterior lift', 'Reducible hip\n(puts it back IN)'],
            ['Galeazzi', 'Hips/knees flexed;\ncompare knee heights', 'Unilateral dislocation\n(lower knee height)'],
            ['Trendelenburg', 'Stand on affected\nleg; observe pelvis', 'Abductor weakness\n(pelvis drops opposite)'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        ComparisonCardBlock(
          title: 'Barlow Test',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.arrow_downward_rounded,
          description: 'Determines if a hip can be PROVOKED (dislocated). The hip at rest is in the joint; the maneuver pushes it out.',
          keyPoints: [
            'With leg flexed and adducted, push femur posteriorly with thumb',
            'Positive = hip dislocates posteriorly (palpable clunk)',
            'B = Bad \u2014 pushes it OUT (provocative maneuver)',
          ],
        ),
        ComparisonCardBlock(
          title: 'Ortolani Test',
          themeColor: const Color(0xFF16A34A),
          backgroundColor: const Color(0xFFF0FDF4),
          icon: Icons.arrow_upward_rounded,
          description: 'Determines if a dislocated hip can be REDUCED (put back in). The hip at rest is dislocated.',
          keyPoints: [
            'Gently abduct hip while applying anterior pressure over greater trochanter',
            'Positive = palpable clunk as femoral head reduces over acetabular lip',
            'O = OK \u2014 puts it back IN (reductive maneuver)',
            'A high-pitched "click" at full abduction is NOT a positive Ortolani (fascial snap)',
          ],
        ),
        ComparisonCardBlock(
          title: 'Galeazzi (Allis) Test',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          icon: Icons.straighten_rounded,
          description: 'Checks for leg length discrepancy suggesting unilateral hip dislocation.',
          keyPoints: [
            'Flex hips and knees bilaterally, look at knee heights',
            'Positive = unequal knee heights (affected side lower)',
            'Same sign seen in congenital short femur',
          ],
        ),
        MnemonicBlock(
          'DDH Exam Maneuvers',
          'Barlow = Bad (provokes dislocation, pushes OUT). Ortolani = OK (reduces dislocation, puts back IN). This distinction is among the most frequently tested concepts in board examinations.',
        ),
        PearlBlock(
          'Board Pearl — DDH Exam',
          'Positive findings on Barlow/Ortolani should be confirmed by imaging and should NOT be repeated over and over. These tests are now done under ultrasound observation to avoid missing bilateral dislocations.',
        ),

        FlowchartBlock(
          title: 'DDH Workup Algorithm',
          themeColor: const Color(0xFFF97066),
          nodes: [
            FlowchartNode(
              label: 'Clinical Suspicion',
              detail: 'Risk factors (breech, female, family history) or abnormal Barlow/Ortolani exam findings',
              isDecision: true,
              branches: ['Positive exam or risk factors present'],
            ),
            FlowchartNode(
              label: 'Ultrasound (<6 months)',
              detail: 'Preferred imaging when femoral head is cartilaginous; Graf classification for morphology',
              isDecision: true,
              branches: ['Age <6 months'],
            ),
            FlowchartNode(
              label: 'X-ray (>6 months)',
              detail: 'AP pelvis radiograph when ossific nucleus is visible; assess Shenton line and acetabular index',
              isDecision: true,
              branches: ['Age >6 months'],
            ),
            FlowchartNode(
              label: 'Graf Type I \u2014 Normal',
              detail: 'Alpha angle >60 degrees; no treatment needed; routine follow-up and observation',
            ),
            FlowchartNode(
              label: 'Graf Type IIc-IV \u2014 Abnormal',
              detail: 'Significant dysplasia, subluxation, or dislocation requiring intervention',
              isDecision: true,
              branches: ['Abnormal morphology confirmed'],
            ),
            FlowchartNode(
              label: 'Pavlik Harness',
              detail: 'First-line for age <6 months with Graf Type IIc-III; 85-95% success rate; positions hip in flexion and abduction',
            ),
            FlowchartNode(
              label: 'Closed Reduction',
              detail: 'If Pavlik harness fails after 3-4 weeks or late presentation at 6-18 months; performed under anesthesia with hip spica casting',
            ),
            FlowchartNode(
              label: 'Open Reduction + Osteotomy',
              detail: 'Reserved for age >18 months or failed closed reduction; may include pelvic and/or femoral osteotomy',
            ),
          ],
        ),

        HeaderBlock('DDH Imaging'),
        BulletCardBlock(
          title: 'Imaging Modalities',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Ultrasound: Preferred modality before 4-6 months (femoral head is cartilaginous)',
            'Radiographs: Useful after 4-6 months when ossific nucleus appears',
            'AAP recommends targeted ultrasound screening for girls born breech at 6 weeks',
            'Ultrasound also recommended for equivocal exam findings',
          ],
        ),
        TableBlock(
          title: 'Graf Ultrasound Classification',
          columns: ['Type', 'Alpha Angle', 'Interpretation'],
          rows: [
            ['I', '>60\u00b0', 'Normal hip'],
            ['IIa', '50-59\u00b0', 'Physiologic immaturity\n(acceptable if <3 months)'],
            ['IIb', '50-59\u00b0', 'Delayed ossification\n(>3 months; requires Tx)'],
            ['IIc', '43-49\u00b0', 'Critical zone\n(significant dysplasia)'],
            ['III', '<43\u00b0', 'Subluxated hip'],
            ['IV', 'N/A (dislocated)', 'Dislocated hip'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        PearlBlock(
          'Board Pearl — Graf Classification',
          'The Graf classification is the standard for ultrasound-based grading of infant hip morphology. Type I (alpha angle >60\u00b0) is normal. Type IIa is acceptable immaturity in infants <3 months but Type IIb (same angle but >3 months) requires treatment.',
        ),

        HeaderBlock('DDH Treatment'),
        BulletCardBlock(
          title: 'Management by Age',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Pavlik harness: First-line treatment if diagnosed before 6 months of age',
            'Positions hip in 100-110\u00b0 flexion and <70\u00b0 abduction',
            'Success rate: 85-95% when initiated before 6 months',
            'Full-time wear for 6-12 weeks, then gradual weaning',
            'AVN rates with proper Pavlik use: 0-5%',
            'If Pavlik fails: Closed reduction under general anesthesia with hip spica casting',
            'Open reduction: Reserved for hips that cannot be concentrically reduced, typically after 12-18 months',
          ],
        ),
        PearlBlock(
          'Board Pearl — Pavlik Harness Danger',
          'Forced abduction beyond 70\u00b0 in the Pavlik harness increases the risk of avascular necrosis (AVN) of the femoral head. The harness is contraindicated in infants >6 months, in teratologic dislocations, and after a failed 3-4 week trial.',
        ),

        HeaderBlock('Nontraumatic Hip Pain or Limp'),
        TableBlock(
          title: 'Differential Diagnosis of Hip Pain by Age',
          columns: ['Feature', 'Toxic Synovitis', 'Legg-Calve-Perthes', 'SCFE'],
          rows: [
            ['Age', '3-6 years', '4-10 years\n(peak 5-7)', '10-16 years'],
            ['Sex', 'Boys > Girls', 'Boys >> Girls\n(4-5:1)', 'Boys > Girls'],
            ['Body habitus', 'Normal', 'Normal', 'Obese,\nendomorphic'],
            ['Presentation', 'Acute hip pain,\nlimp, limited IR', 'Limp, groin/thigh\npain, limited IR', 'Limp, hip/knee pain\nobligatory ER\nwith flexion\n(Drehmann sign)'],
            ['Labs', 'Normal or\nslight ESR rise', 'Normal', 'Normal'],
            ['X-ray', 'Normal', 'Small/sclerotic\nfemoral head,\nwidened joint space', 'Klein line fails to\nintersect femoral\nhead on frog-leg\nlateral'],
            ['Treatment', 'Rest, NSAIDs\nResolves 3-5 days', 'Containment:\nRest, abduction brace\nor osteotomy', 'Urgent surgical\npinning in situ\n(DO NOT reduce)'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        PearlBlock(
          'Board Pearl — Hip Pain Triad',
          'Toxic synovitis = young child (3-6yr), acute, resolves in days. Legg-Calve-Perthes = school-age (4-10yr), AVN of femoral head, boys 4-5:1. SCFE = obese adolescent (10-16yr), externally rotated leg, needs surgical pinning urgently to prevent further displacement.',
        ),

        HeaderBlock('Legg-Calve-Perthes Disease (LCPD)'),
        BulletCardBlock(
          title: 'Overview',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Idiopathic osteonecrosis of the femoral head in children aged 4-10 years',
            'Incidence: ~1 in 1,200 children; M:F ratio 4-5:1',
            'Bilateral in 10-15% (usually asynchronous)',
            'When bilateral, consider endocrine disorders (hypothyroidism, GH deficiency)',
          ],
        ),
        TableBlock(
          title: 'Waldenstrom Stages of LCPD',
          columns: ['Stage', 'Radiographic Findings'],
          rows: [
            ['Initial\n(Necrosis)', 'Increased density of femoral\nhead; widened joint space'],
            ['Fragmentation', 'Mixed lytic and sclerotic areas\nas necrotic bone resorbed'],
            ['Re-ossification', 'New bone formation;\nhead begins to reform'],
            ['Remodeling', 'Final head shape established\nby skeletal maturity'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        TableBlock(
          title: 'Herring Lateral Pillar Classification',
          columns: ['Group', 'Lateral Pillar Height', 'Prognosis'],
          rows: [
            ['A', 'Full height maintained', 'Good'],
            ['B', '>50% height maintained', 'Intermediate'],
            ['B/C', '~50% height', 'Guarded'],
            ['C', '<50% height', 'Poor'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl — LCPD Prognosis',
          'Age at onset is the single most important prognostic factor. Children <6 years at onset generally have favorable outcomes regardless of classification. Children >8 years with Group B/C or C involvement have poor prognoses and typically require surgical containment (femoral or pelvic osteotomy).',
        ),
        TableBlock(
          title: 'Stulberg Classification (Outcome at Skeletal Maturity)',
          columns: ['Class', 'Description', 'Outcome'],
          rows: [
            ['I', 'Normal spherical\nfemoral head', 'Good'],
            ['II', 'Spherical head with\ncoxa magna, short neck,\nor steep acetabulum', 'Good'],
            ['III', 'Ovoid (non-spherical)\nbut congruent head', 'Fair'],
            ['IV', 'Flat head with\nflat acetabulum', 'Fair'],
            ['V', 'Flat head with normal\nacetabulum (incongruent)', 'Poor \u2014\nearly arthritis'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl — Head at Risk Signs',
          '"Head at risk" signs on radiography include the Gage sign, calcification lateral to the epiphysis, lateral subluxation, and a horizontal physis. These findings suggest a worse prognosis.',
        ),

        HeaderBlock('Slipped Capital Femoral Epiphysis (SCFE)'),
        BulletCardBlock(
          title: 'Overview & Presentation',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Posterior and inferior displacement of proximal femoral epiphysis through the physis',
            'Most common adolescent hip disorder; incidence ~10.8 per 100,000',
            'Classic patient: Overweight adolescent boy aged 10-16 years',
            'Risk factors: Obesity, African American race, hypothyroidism, GH therapy, renal osteodystrophy',
            'Bilateral in 18-50% (often sequential)',
            'Antalgic gait with the affected limb externally rotated',
            'Obligatory external rotation with hip flexion (Drehmann sign)',
            'Limited internal rotation and abduction',
          ],
        ),
        PearlBlock(
          'Board Pearl — Knee Pain = Hip Pathology',
          'Any adolescent with knee or thigh pain should have hip radiographs to rule out SCFE. Referred pain to the knee or medial thigh is a common board question pitfall. A frog-leg lateral radiograph is most sensitive; the Klein line will fail to intersect the femoral head. Classic analogy: "ice cream falling off the cone."',
        ),
        TableBlock(
          title: 'SCFE Stability Classification (Loder)',
          columns: ['Stability', 'Definition', 'AVN Risk'],
          rows: [
            ['Stable', 'Able to weight-bear\n(\u00b1 crutches)', '0-10%'],
            ['Unstable', 'Unable to weight-bear', '24-47%'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl — SCFE Treatment',
          'Stable SCFE: In situ percutaneous single screw fixation. NEVER attempt to manipulate or reduce a stable SCFE \u2014 forced reduction dramatically increases AVN risk by compromising the already tenuous blood supply. Unstable SCFE is an orthopedic emergency requiring urgent surgical stabilization.',
        ),
        PearlBlock(
          'Board Pearl — SCFE Endocrine Workup',
          'Bilateral SCFE, particularly in a younger child (<10 years) or a child of normal weight, should prompt an endocrine evaluation for hypothyroidism, growth hormone deficiency, or renal osteodystrophy.',
        ),
      ],
    ),

    // ============ TAB 2: Foot, Knee & Upper Extremity ============
    TopicTab(
      title: 'Foot & Knee',
      blocks: [
        HeaderBlock('Foot & Ankle Conditions'),

        HeaderBlock('Club Foot (Talipes Equinovarus)'),
        TextBlock(
          'Clubfoot occurs in 1-2 per 1,000 live births with a M:F ratio of 2:1. Approximately 50% are bilateral. 80% are idiopathic; the remainder are associated with neuromuscular conditions (myelomeningocele, arthrogryposis, trisomy 18, amniotic band syndrome). PITX1 gene mutations have been implicated.',
          isIntro: true,
        ),
        TableBlock(
          title: 'CAVE Mnemonic \u2014 Clubfoot Deformities',
          columns: ['Letter', 'Deformity Component'],
          rows: [
            ['C', 'Cavus \u2014 high medial arch\n(forefoot pronation relative to hindfoot)'],
            ['A', 'Adductus \u2014 forefoot deviated\nmedially'],
            ['V', 'Varus \u2014 hindfoot inverted'],
            ['E', 'Equinus \u2014 ankle fixed in\nplantarflexion (tight Achilles)'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        MnemonicBlock(
          'CAVE \u2014 Club Foot Deformities',
          'Cavus (midfoot), Adductus (forefoot), Varus (hindfoot), Equinus (hindfoot). These are the four components found on physical examination.',
        ),

        HeaderBlock('The Ponseti Method'),
        BulletCardBlock(
          title: 'Gold Standard Treatment',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Achieves correction in 90-95% of idiopathic clubfoot cases',
            'Reduced need for extensive surgery from 70-90% to <5%',
            'Step 1: Serial manipulation and casting (5-7 weekly long-leg casts)',
            'Correction order: Cavus FIRST (supinate forefoot), then adductus + varus simultaneously, equinus LAST',
            'Step 2: Percutaneous Achilles tenotomy in ~80% of cases for residual equinus',
            'Step 3: Foot abduction orthosis (Denis Browne bar) \u2014 full-time 3 months, then sleep/naps for 4 years',
          ],
        ),
        PearlBlock(
          'Board Pearl — Ponseti Correction Order',
          'The equinus is corrected LAST because premature dorsiflexion with persistent varus and adductus creates a rocker-bottom deformity. The cavus is corrected first by supinating the forefoot to align with the hindfoot.',
        ),
        PearlBlock(
          'Board Pearl — Bracing Compliance',
          'Relapse rates without orthosis compliance are 20-40%, compared with <5% with good compliance. Bracing adherence is the single most important factor in preventing recurrence. The orthosis maintains the foot in 60-70\u00b0 external rotation with 10-15\u00b0 dorsiflexion.',
        ),
        BulletCardBlock(
          title: 'Pirani Scoring System',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Quantifies clubfoot severity using 6 parameters (3 hindfoot, 3 midfoot)',
            'Each scored 0 (normal), 0.5 (moderate), or 1 (severe); total range 0-6',
            'Hindfoot: Posterior crease severity, emptiness of heel, rigidity of equinus',
            'Midfoot: Curvature of lateral border, medial crease severity, coverage of lateral talar head',
          ],
        ),

        HeaderBlock('Other Foot Conditions'),
        BulletCardBlock(
          title: 'Metatarsus Varus (Adductus)',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Adduction of the forefoot on the hindfoot, heel in normal position or slightly valgus',
            'Flexible deformities secondary to intrauterine position \u2014 usually resolve',
            'Rigid deformities may require splinting',
            '85% correct by age 3-4 years',
          ],
        ),
        BulletCardBlock(
          title: 'Talipes Calcaneovalgus',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Excessive dorsiflexion at the ankle and eversion of the foot',
            'Usually due to intrauterine position',
            'Treatment includes stretching and rarely splinting',
          ],
        ),
        BulletCardBlock(
          title: 'Flat Foot, Cavus Foot, Claw Toes',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Flat foot: Normal in infants \u2014 arch develops with weight-bearing',
            'Cavus foot: Unusually high longitudinal arch; associated with neurologic conditions (polio, CMT, Friedreich ataxia)',
            'Claw toes: MTP joints hyperextended, IP joints flexed; seen in motor weakness disorders (CMT, pes cavus)',
          ],
        ),

        HeaderBlock('Knee & Leg Conditions'),

        HeaderBlock('Genu Varum & Genu Valgum'),
        BulletCardBlock(
          title: 'Normal Physiologic Alignment',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Infants generally have bowing of the legs (genu varum) as a normal finding',
            'By 12-18 months: Legs straighten and progress to mild knock-knee (genu valgum)',
            'By 6-7 years: Legs gradually assume ultimate adult configuration',
            'Physiologic bowing resolves on its own \u2014 no treatment needed',
          ],
        ),

        HeaderBlock('Blount Disease (Tibia Vara)'),
        BulletCardBlock(
          title: 'Pathologic Bowing',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Abnormal function of the medial portion of the proximal tibial growth plate',
            'Most common morphologic cause of bowing in young children',
            'Found most commonly in OBESE children who walk early (9-10 months)',
            'More common in African Americans',
            'Should be suspected in ALL children with persistent bowing after age 2 years',
            'Treatment: Osteotomy of proximal tibia and fibula (may need to be repeated)',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Blount Disease',
          'Blount disease is the most common morphologic (pathologic) cause of bowing in young children. Think of an obese early walker with persistent tibial bowing after age 2. Physiologic bowing resolves by 18 months.',
        ),

        HeaderBlock('Apophysitis Conditions'),
        TableBlock(
          title: 'Traction Apophysitis Conditions \u2014 Comparison',
          columns: ['Condition', 'Location', 'Age', 'Key Features'],
          rows: [
            ['Osgood-Schlatter', 'Tibial\ntubercle', '10-15 yr', 'Patellar tendon\ninsertion; bilateral\n20-30%; self-limited'],
            ['Sinding-Larsen-\nJohansson', 'Inferior\npatella', '10-14 yr', 'Proximal patellar\ntendon attachment;\nsame mechanism'],
            ['Sever Disease', 'Calcaneal\napophysis', '8-14 yr', 'Achilles tendon\ninsertion; most common\nheel pain in children'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        PearlBlock(
          'Board Pearl \u2014 Traction Apophysitis',
          'All three share the same pathophysiology: repetitive microtrauma at a tendon-apophysis junction during rapid growth. They are self-limited and do not require surgery. Osgood-Schlatter = tibial tubercle, Sinding-Larsen-Johansson = inferior patella, Sever = calcaneus.',
        ),
        BulletCardBlock(
          title: 'Osgood-Schlatter Disease',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Traction apophysitis of the anterior tibial tubercle',
            'Children aged 10-15 years during rapid growth; bilateral in 20-30%',
            'Equal sex distribution with increasing female sports participation',
            'Treatment: Activity modification, ice, NSAIDs, quad stretching/strengthening, patellar tendon straps',
            'X-ray: May show fragmentation or prominence of tibial tubercle apophysis',
            'Self-limited; resolves with skeletal maturity',
          ],
        ),

        HeaderBlock('Upper Extremity Conditions'),
        BulletCardBlock(
          title: 'Little League Elbow (Medial Epicondyle Apophysitis)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Medial epicondyle apophysitis from repetitive valgus stress during throwing',
            'Medial elbow pain exacerbated by throwing (especially pitching)',
            'Treatment: Rest, modification of throwing mechanics, adherence to pitch count guidelines',
          ],
        ),
        BulletCardBlock(
          title: 'Little League Shoulder',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Stress fracture through the proximal humeral physis from repetitive overhead throwing',
            'Radiographs may show widening of the proximal humeral physis',
            'Treatment: Rest and gradual return to sport',
          ],
        ),
        BulletCardBlock(
          title: 'Osteochondritis Dissecans (OCD)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Separation of articular cartilage and underlying subchondral bone',
            'In young throwers: Capitellum (lateral elbow) from valgus overload',
            'In adolescents: Lateral femoral condyle of knee is most common location overall',
            'Stable lesions in skeletally immature patients may heal with activity restriction',
            'Unstable or displaced lesions require surgical fixation or removal',
          ],
        ),

        HeaderBlock('Nursemaid\'s Elbow (Radial Head Subluxation)'),
        BulletCardBlock(
          title: 'Nursemaid\'s Elbow',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Radial head and neck displaced distal to the annular ligament',
            'Results from longitudinal pull or sudden traction to the upper extremity',
            'Typical scenario: Child <6 years lifted by hand over curb/object',
            'Sudden pain onset, child refuses to move the arm',
            'Hand function is normal, elbow X-ray usually normal',
            'Reduction achieved by supination and extension of the forearm',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Nursemaid\'s Elbow',
          'Child <6 years, sudden pull on hand, refuses to move arm, X-ray normal. Reduction by supination and extension. The key mechanism is longitudinal traction on an extended, pronated forearm.',
        ),
      ],
    ),

    // ============ TAB 3: Neck, Spine & Scoliosis ============
    TopicTab(
      title: 'Spine & Scoliosis',
      blocks: [
        HeaderBlock('Congenital Muscular Torticollis (CMT)'),
        BulletCardBlock(
          title: 'Epidemiology & Presentation',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Unilateral shortening or fibrosis of the SCM; incidence 0.3-2% of live births',
            'Right SCM affected in ~75% of cases',
            '"Olive sign" (fibromatosis colli): Palpable SCM mass in ~20%; resolves by 4-6 months',
            'Associated DDH in 10-20% \u2014 ALL CMT patients need hip screening',
            'Associated plagiocephaly in 80-90%',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Torticollis Direction',
          'Head tilts TOWARD the affected (tight) SCM and chin rotates AWAY. Right torticollis = head tilted right, chin rotated LEFT. Before diagnosing CMT, exclude posterior fossa tumors, Klippel-Feil syndrome, atlantoaxial rotary subluxation, and ocular torticollis.',
        ),
        BulletCardBlock(
          title: 'Treatment',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Passive ROM stretching, tummy time, and environmental repositioning effective in 90-95% by age 1 year',
            'Stretch contracted SCM 15-29 times per session, 4-6 times daily (every diaper change)',
            'Right torticollis: Tilt head LEFT, rotate face RIGHT',
            'Mobile placement: For right torticollis, place mobile to RIGHT of crib',
            'If normal ROM not obtained by 1 year: Persistent facial asymmetry will result',
            'Surgical SCM release considered if persists beyond 12-18 months despite consistent therapy',
          ],
        ),

        HeaderBlock('Adolescent Idiopathic Scoliosis (AIS)'),
        TextBlock(
          'AIS is defined as a lateral spinal curvature of 10\u00b0 or greater (Cobb angle) with no identifiable underlying cause, occurring in patients aged 10-18 years. The prevalence of curves >10\u00b0 is 2-3% of adolescents. While small curves affect males and females equally, the F:M ratio increases to 8:1 for curves >30\u00b0.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Functional vs Structural Scoliosis',
          columns: ['Functional', 'Structural'],
          rows: [
            ['Muscle spasm', 'Congenital (bar, block, hemivertebra)'],
            ['Paraspinal strain', 'Idiopathic (adolescent most common)'],
            ['Herniated disc (unilateral)', 'Neuromuscular (CP, DMD, spina bifida)'],
            ['Postural', 'Acquired (fracture, overuse, degenerative)'],
          ],
          headerColor: const Color(0xFFF97316),
        ),

        HeaderBlock('Scoliosis Evaluation'),
        BulletCardBlock(
          title: 'Adams Forward Bending Test & Cobb Method',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Adams test: Child bends forward, examiner looks for trunk asymmetry (rib hump)',
            'Scoliometer reading \u22657\u00b0 warrants referral',
            'Screening recommended: Ages 10-12 for girls, 13-14 for boys',
            'Cobb angle: Measured on PA standing X-ray \u2014 angle between endplates of most tilted vertebrae at top and bottom of curve',
          ],
        ),
        TableBlock(
          title: 'Cobb Angle Management Guidelines',
          columns: ['Cobb Angle', 'Management'],
          rows: [
            ['<10\u00b0', 'Normal variant; not classified\nas scoliosis'],
            ['10-24\u00b0', 'Observation with serial\nradiographs every 6-12 months'],
            ['25-40\u00b0', 'Bracing (TLSO/Boston brace)'],
            ['40-50\u00b0+', 'Surgical intervention\n(posterior spinal fusion)'],
            ['>50\u00b0', 'Will progress ~1\u00b0/year even\nafter skeletal maturity'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),

        HeaderBlock('Risser Sign'),
        TableBlock(
          title: 'Risser Staging \u2014 Skeletal Maturity',
          columns: ['Grade', 'Iliac Apophysis Ossification', 'Implication'],
          rows: [
            ['0', 'None', 'Significant growth remaining'],
            ['1', '0-25% (lateral)', 'Substantial growth'],
            ['2', '25-50%', 'Moderate growth'],
            ['3', '50-75%', 'Decreasing growth'],
            ['4', '75-100% (not fused)', 'Minimal growth'],
            ['5', 'Complete fusion', 'Skeletal maturity'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        PearlBlock(
          'Board Pearl \u2014 Curve Progression Risk',
          'The highest risk for curve progression is Risser 0-1 with a Cobb angle \u226520\u00b0 (68% progression risk). Bracing is most effective at Risser 0-2.',
        ),

        HeaderBlock('BrAIST Trial \u2014 Landmark Evidence'),
        BulletCardBlock(
          title: 'Bracing in Adolescent Idiopathic Scoliosis Trial',
          themeColor: const Color(0xFF16A34A),
          backgroundColor: const Color(0xFFF0FDF4),
          points: [
            'Landmark RCT published 2013 (Weinstein et al.); stopped early for efficacy',
            'Enrolled 242 patients: Risser 0-2, Cobb 25-40\u00b0, ages 10-15 years',
            'Bracing success: 72% vs 48% with observation alone',
            'Dose-response: \u226513 hours/day wear achieved 90-93% success',
            'Lowest quartile of wear (0-6 hrs/day) had outcomes WORSE than observation',
            'Braces prescribed for \u226518 hours/day',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Left Thoracic Curve Red Flag',
          'A right thoracic curve is the most common AIS pattern. A LEFT thoracic curve is a red flag that should prompt MRI to rule out syringomyelia, Chiari malformation, or spinal cord tumor.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Neuromuscular vs Idiopathic Scoliosis',
          'Neuromuscular scoliosis: Long, C-shaped curves, more rapidly progressive, continue past skeletal maturity. Pelvic obliquity threatens seated balance. Bracing delays but rarely prevents surgery. Surgical fusion often extends to the pelvis. Complication rates 25-50%.',
        ),
        BulletCardBlock(
          title: 'Pulmonary Impact',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Thoracic curves exceeding 50-60\u00b0 may compromise pulmonary function',
            'Results in restrictive lung disease with decreased total vital capacity',
            'Most common abnormality: Decreased vital capacity on the concave side',
          ],
        ),

        HeaderBlock('Scheuermann Disease'),
        BulletCardBlock(
          title: 'Juvenile Kyphosis',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Rigid kyphotic deformity of the thoracic > thoracolumbar spine',
            'Typically presents during adolescence, more common in males',
            'Occurs in 0.5-8% of the population',
            'Diagnosis (Sorenson criteria): \u22653 consecutive vertebrae with >5\u00b0 anterior wedging',
            'Other findings: Irregular endplates, Schmorl nodes, increased disc narrowing',
            'Treatment: <50\u00b0 = PT, anti-inflammatories; 50-75\u00b0 = TLSO brace; >75\u00b0 = surgery',
          ],
        ),

        HeaderBlock('Spondylolisthesis'),
        BulletCardBlock(
          title: 'Vertebral Slippage',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Slippage of one vertebral body relative to the one below',
            '2-4 times more common in males, but progression more common in females',
            'Presents with back pain radiating to buttocks/legs, worsens with extension',
            'Isthmic type (pars interarticularis fracture): Most common type in children',
            'Pars defect at L5 in 67%, L4 in 15-30%',
            'Frequency of pars defect: 4.5% children, 6% adolescents, up to 12% in gymnasts',
            'Dysplastic (congenital) type: Malformation of facet joints at lumbosacral junction',
            'Treatment: <50% slip = anti-inflammatories, bracing, PT (avoid extension); >50% = surgical fusion',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Spondylolisthesis',
          'In adults, degenerative spondylolisthesis is most common. In children, dysplastic and isthmic types are most common. Isthmic (pars fracture) is the most common type overall in pediatrics, occurring most frequently at L5.',
        ),
      ],
    ),

    // ============ TAB 4: OI & Fractures ============
    TopicTab(
      title: 'OI & Fractures',
      blocks: [
        HeaderBlock('Osteogenesis Imperfecta (OI)'),
        TextBlock(
          'OI is a heritable disorder of type I collagen (COL1A1/COL1A2 gene mutations) with an incidence of 1 in 15,000-20,000 live births. The Sillence classification originally described 4 types, now expanded to >15 molecular subtypes.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Sillence Classification of OI',
          columns: ['Type', 'Severity', 'Inheritance', 'Key Features'],
          rows: [
            ['I\n(Mild)', 'Mild;\nmost common\n(~50%)', 'AD', 'Blue sclerae; mild short\nstature or normal height;\nfractures decrease after\npuberty; DI in ~50%;\nhearing loss ~50%\n(2nd-3rd decade, mixed)'],
            ['II\n(Perinatal\nLethal)', 'Most severe\n(~10%)', 'New AD\nmutation', 'Lethal in perinatal\nperiod; beaded ribs;\nsevere long bone\ndeformity'],
            ['III\n(Severe)', 'Severe\n(~10%)', 'Variable', 'Most severe compatible\nwith survival; progressive\ndeformity; very short\nstature; gray/blue\nsclerae; DI'],
            ['IV\n(Moderate)', 'Moderate\n(~10%)', 'AD', 'Normal to gray sclerae;\nvariable severity;\nmoderate short stature'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        PearlBlock(
          'Board Pearl \u2014 OI Collagen Defects',
          'Type I OI has a QUANTITATIVE defect (reduced production of normal collagen). Types II-IV have QUALITATIVE defects (structurally abnormal collagen). Wormian bones (extra bones within cranial sutures) are characteristic of OI on skull radiographs.',
        ),
        PearlBlock(
          'Board Pearl \u2014 OI vs Non-Accidental Trauma',
          'Distinguishing OI from child abuse is a critical board skill. Both present with multiple fractures. OI is suggested by: blue sclerae, family history, wormian bones, dentinogenesis imperfecta, hearing loss, and joint hypermobility. These findings are absent in abuse.',
        ),
        BulletCardBlock(
          title: 'OI Treatment & Rehabilitation',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Bisphosphonate therapy (IV pamidronate or zoledronate): Standard of care for moderate-severe OI',
            'Reduces fracture rates, increases BMD, decreases bone pain',
            'Rehabilitation: Safe mobility, fracture prevention, aquatic therapy, strengthening within protected limits',
            'Low-impact activities: Swimming, cycling, walking encouraged for mild OI',
            'Intramedullary rodding (e.g., Fassier-Duval telescoping rods) for long bones in moderate-severe OI',
            'Hydrotherapy: Buoyancy reduces fracture risk while allowing resistance exercise',
            'Wheelchair sports and adaptive recreation for severe forms',
          ],
        ),

        HeaderBlock('Salter-Harris Fracture Classification'),
        TextBlock(
          'The Salter-Harris classification categorizes physeal (growth plate) fractures of long bones in children. The physis is the weakest link in the pediatric bone-ligament complex \u2014 forces that would cause ligamentous injury in adults produce physeal fractures in children.',
          isIntro: true,
        ),
        TableBlock(
          title: 'SALTR Mnemonic \u2014 Salter-Harris Types',
          columns: ['Type', 'Mnemonic', 'Pattern', 'Frequency', 'Prognosis'],
          rows: [
            ['I', 'Slipped\n(Straight\nacross)', 'Through\nphysis only;\nepiphysis\nslips', '6%', 'Good'],
            ['II', 'Above', 'Through\nphysis and\nmetaphysis\n(Thurston-\nHolland\nfragment)', '75%\n(most\ncommon)', 'Good'],
            ['III', 'Lower\n(beLow)', 'Through\nphysis and\nepiphysis\n(intra-\narticular)', '8%', 'Fair \u2014\nrequires\nanatomic\nreduction'],
            ['IV', 'Through\n(Two)', 'Through\nmetaphysis,\nphysis, and\nepiphysis', '10%', 'Fair to\npoor \u2014\nusually\nrequires\nORIF'],
            ['V', 'Rammed\n(cRush)', 'Crush injury\nto physis', '1%', 'Poor \u2014\ngrowth\narrest\ncommon'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        MnemonicBlock(
          'SALTR \u2014 Salter-Harris Classification',
          'S = Slipped/Straight across (Type I, through physis only). A = Above (Type II, metaphysis + physis). L = Lower (Type III, epiphysis + physis). T = Through/Two (Type IV, all three). R = Rammed/cRush (Type V, crush injury).',
        ),
        PearlBlock(
          'Board Pearl \u2014 Salter-Harris Type I',
          'Type I fractures may have a completely NORMAL radiograph. Diagnosis is clinical, based on tenderness localized to the physis. If a child has point tenderness at the growth plate after trauma, treat as SH-I even if X-rays are negative.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Thurston-Holland Fragment',
          'The Thurston-Holland fragment \u2014 a triangular metaphyseal fragment \u2014 is pathognomonic for a Salter-Harris Type II fracture. Types III, IV, and V carry the highest risk of growth disturbance.',
        ),

        HeaderBlock('Fracture Remodeling in Children'),
        BulletCardBlock(
          title: 'Pediatric Remodeling Principles',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Greatest remodeling capacity: Younger children, fractures near the physis, angulation in the plane of joint motion',
            'Remodeling capacity decreases with age; minimal after age 10-12 years',
            'Rotational deformity does NOT remodel and must be corrected at time of treatment',
            'Physeal fractures causing growth arrest may produce angular deformity (partial arrest) or limb length discrepancy (complete arrest)',
            'Thicker, more biologically active periosteum leads to faster fracture healing in children',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Rotational Deformity',
          'The pediatric skeleton has remarkable remodeling capacity for angulated fractures, but rotational deformity does NOT remodel. This must be corrected at the time of treatment.',
        ),

        HeaderBlock('The Limping Child \u2014 Differential by Age'),
        TableBlock(
          title: 'Differential Diagnosis of the Limping Child',
          columns: ['Age Group', 'Key Diagnoses'],
          rows: [
            ['1-3 years', 'Toddler\'s fracture, septic\narthritis, DDH (late), JIA,\nleukemia'],
            ['4-10 years', 'Legg-Calve-Perthes, transient\nsynovitis, septic arthritis,\nJIA, bone tumors (Ewing,\nosteosarcoma)'],
            ['11-16 years', 'SCFE, Osgood-Schlatter, OCD,\nstress fractures, bone tumors'],
            ['Any age', 'Septic arthritis (emergency),\nosteomyelitis, fracture,\nmalignancy, JIA'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl \u2014 Toddler\'s Fracture',
          'A toddler\'s fracture is a spiral or oblique fracture of the distal tibial shaft from low-energy twisting. It may be occult on initial radiographs \u2014 bone scan or repeat films at 10-14 days may be necessary.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Transient Synovitis vs Septic Arthritis',
          'The Kocher criteria distinguish these: non-weight-bearing, ESR >40, fever >38.5\u00b0C, and WBC >12,000. With all 4 criteria positive, probability of septic arthritis is 99.6%. Transient synovitis is the most common cause of acute hip pain in children aged 3-8 years.',
        ),

        HeaderBlock('Board-Critical Summary Table'),
        TableBlock(
          title: 'Key Pediatric MSK Conditions at a Glance',
          columns: ['Condition', 'Age', 'Sex', 'Key Finding'],
          rows: [
            ['DDH', 'Birth', 'F >> M\n(4-8:1)', 'Barlow/Ortolani;\nUS before 6 mo'],
            ['Clubfoot', 'Birth', 'M > F\n(2:1)', 'CAVE deformities'],
            ['LCPD', '4-10 yr', 'M >> F\n(4-5:1)', 'Herring lateral\npillar classification'],
            ['SCFE', '10-16 yr', 'M > F', 'Klein line on\nfrog-leg lateral;\nobligatory ER'],
            ['Osgood-\nSchlatter', '10-15 yr', 'M = F', 'Tibial tubercle\ntenderness'],
            ['AIS', '10-18 yr', 'F >> M\n(large curves)', 'Cobb angle on\nPA standing film'],
            ['CMT', 'Birth', 'R SCM\n75%', 'Head tilt toward,\nchin away'],
            ['OI Type I', 'Childhood', 'M = F', 'Blue sclerae,\nfractures,\nwormian bones'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
      ],
    ),
  ],
);
