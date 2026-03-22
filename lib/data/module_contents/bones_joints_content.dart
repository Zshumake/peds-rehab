import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final bonesJointsContent = TopicData(
  id: 'bones-joints',
  title: 'Diseases of the Bones & Joints',
  tabs: [
    // ============ TAB 1: Foot & Ankle ============
    TopicTab(
      title: 'Foot & Ankle',
      blocks: [
        HeaderBlock('Foot & Ankle Conditions'),

        HeaderBlock('Metatarsus Varus'),
        BulletCardBlock(
          title: 'Metatarsus Varus (Adductus)',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Adduction of the forefoot on the hind foot, with heel in normal position or slightly valgus',
            'Flexible deformities are secondary to intrauterine position and usually resolve',
            'Rigid deformities may require splinting',
            '85% correct by age 3-4 years',
          ],
        ),

        HeaderBlock('Club Foot (Talipes Equinovarus)'),
        BulletCardBlock(
          title: 'Clinical Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Congenital malalignment of the talocalcaneonavicular complex',
            'Incidence: 1 per 1,000 live births',
            'Hereditary pattern; may be part of a generalized syndrome',
            'May be associated with spinal anomalies',
            'Patients exhibit calf atrophy and leg length discrepancy',
          ],
        ),
        MnemonicBlock(
          'CAVE — Club Foot Deformities',
          'Cavus (midfoot), Adductus (forefoot), Varus (hindfoot), Equinus (hindfoot). These are the four components of the clubfoot deformity found on physical examination.',
        ),
        PearlBlock(
          'Board Pearl — Ponseti Method',
          'The Ponseti method of serial casting and manipulation is the first-line treatment for clubfoot. Success is highest when initiated in the first month of life. The French physiotherapy (functional) method using daily manipulation with bracing/splinting is used less frequently. Surgical correction is the last line of treatment for resistant, persistent, or relapsed deformity.',
        ),

        HeaderBlock('Talipes Calcaneovalgus'),
        BulletCardBlock(
          title: 'Calcaneovalgus',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Excessive dorsiflexion at the ankle and eversion of the foot',
            'Usually due to intrauterine position',
            'Treatment includes stretching and rarely splinting',
          ],
        ),

        HeaderBlock('Other Foot Conditions'),
        BulletCardBlock(
          title: 'Flat Foot, Cavus Foot, Claw Toes',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Flat foot: Normal condition in infants — arch develops with weight-bearing',
            'Cavus foot: Unusually high longitudinal arch; may be associated with neurologic conditions (poliomyelitis, CMT, Friedreich ataxia)',
            'Claw toes: MTP joints hyperextended, IP joints flexed; seen in motor weakness disorders (CMT, pes cavus)',
          ],
        ),
      ],
    ),

    // ============ TAB 2: Knee & Leg ============
    TopicTab(
      title: 'Knee & Leg',
      blocks: [
        HeaderBlock('Knee & Leg Conditions'),

        HeaderBlock('Genu Varum (Bowleg)'),
        BulletCardBlock(
          title: 'Normal Physiologic Bowing',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Infants generally have bowing of the legs as a normal finding',
            'By 12-18 months: Legs straighten and progress to mild knock-knee (genu valgum)',
            'By 6-7 years: Legs gradually assume ultimate configuration',
            'Physiologic bowing resolves on its own — no treatment needed',
          ],
        ),

        HeaderBlock('Blount Disease (Tibia Vara)'),
        BulletCardBlock(
          title: 'Pathologic Bowing',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Due to abnormal function of the medial portion of the proximal tibial growth plate',
            'Results in bowing of the proximal tibia',
            'Most common morphologic cause of bowing in young children',
            'Found most commonly in OBESE children who walk at 9-10 months',
            'More common in African Americans',
            'Should be suspected in ALL children with persistent bowing after age 2 years',
            'Treatment: Osteotomy of proximal tibia and fibula (may need to be repeated)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Blount Disease',
          'Blount disease is the most common morphologic (pathologic) cause of bowing in young children. Think of an obese early walker with persistent tibial bowing after age 2. Physiologic bowing resolves by 18 months.',
        ),

        HeaderBlock('Osgood-Schlatter Disease'),
        BulletCardBlock(
          title: 'Tibial Tubercle Apophysitis',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Traction apophysitis of the anterior tibial tubercle',
            'Typically seen in active adolescents, boys > girls (3:1)',
            'Results from chronic stress at patellar tendon insertion on tibial tubercle',
            'Common, self-limited cause of anterior knee pain in adolescents',
            'Up to 50% have bilateral involvement',
            'Pain from inflammation/repeated microfractures of apophyseal cartilage',
            'Tibial tubercle becomes prominent over time from osseous healing',
          ],
        ),
        BulletCardBlock(
          title: 'Diagnosis & Treatment',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Tenderness to palpation over tibial tubercle and distal patellar tendon',
            'X-ray may be normal or show soft tissue swelling and fragmentation',
            'Ultrasound useful for confirmation and follow-up',
            'MRI more sensitive (patellar tendon thickening, fragmentation of ossification center)',
            'Treatment: Activity restriction (4-8 weeks), avoid deep knee bending and high-impact activities',
            'Low bike seat position (flexed knee) is beneficial',
          ],
        ),

        HeaderBlock('Medial Epicondylar Apophysitis'),
        PearlBlock(
          'Board Pearl — Little Leaguer Elbow',
          'Medial epicondylar apophysitis (Little Leaguer elbow) results from repetitive valgus stress on the medial epicondylar ossification center, typically from throwing (especially pitching). Treatment is rest and instruction on proper body mechanics.',
        ),

        HeaderBlock('Subluxation of the Radial Head'),
        BulletCardBlock(
          title: 'Nursemaid\'s Elbow',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
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
          'Board Pearl',
          'Nursemaid\'s elbow: Child <6 years, sudden pull on hand, refuses to move arm, X-ray normal. Reduction by supination and extension. The key mechanism is longitudinal traction on an extended, pronated forearm.',
        ),
      ],
    ),

    // ============ TAB 3: Hip Conditions ============
    TopicTab(
      title: 'Hip',
      blocks: [
        HeaderBlock('Hip Conditions'),

        HeaderBlock('Developmental Dysplasia of the Hip (DDH)'),
        TextBlock(
          'DDH is the preferred term for what was previously called congenital dislocation of the hip. It includes hip subluxation, hip dislocation, and acetabular dysplasia — all implying instability of the hip.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Epidemiology & Risk Factors',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Usually diagnosed at birth; acetabular dysplasia may present months later',
            'Incidence: ~1 per 1,000 births',
            'More common in breech babies and females',
            'Maternal history of dislocated hip increases risk (1 in 25 non-breech, 1 in 15 breech)',
            'Children with metatarsus adductus or torticollis at birth have increased incidence',
          ],
        ),

        HeaderBlock('Clinical Exam Maneuvers'),
        ComparisonCardBlock(
          title: 'Barlow Test',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.arrow_downward_rounded,
          description: 'Determines if a dislocated hip can be PROVOKED (pushed out). The hip at rest is near normal or reduced.',
          keyPoints: [
            'With leg flexed and adducted, push femur posteriorly with thumb',
            'Positive = hip dislocates posteriorly (palpable clunk)',
            'B = Bad — pushes it OUT',
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
            'O = OK — puts it back IN',
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
            'Same sign seen in congenital short femur (less common finding)',
          ],
        ),
        MnemonicBlock(
          'DDH Exam Maneuvers',
          'Barlow = Bad (provokes dislocation, pushes OUT). Ortolani = OK (reduces dislocation, puts back IN). Galeazzi = unequal knee heights with hips/knees flexed.',
        ),
        PearlBlock(
          'Board Pearl — DDH Confirmation',
          'Positive findings on Barlow/Ortolani should be confirmed by ultrasound or X-ray and should NOT be repeated over and over. These tests are done under US observation now to avoid missing bilateral dislocations.',
        ),

        HeaderBlock('DDH Treatment'),
        BulletCardBlock(
          title: 'Management by Age',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'First few months: Pavlik harness or hip spica cast',
            'Maintains hip in 90-120° flexion and limits adduction',
            'Worn for 3-4 months with good results',
            'AVOID forced hip abduction in brace/splint — may cause AVN of femoral head',
            'If diagnosis delayed until walking age, surgery may be needed',
          ],
        ),

        HeaderBlock('Nontraumatic Hip Pain or Limp'),
        TableBlock(
          title: 'Differential Diagnosis of Hip Pain by Age',
          columns: ['Feature', 'Toxic Synovitis', 'Legg-Calve-Perthes', 'SCFE'],
          rows: [
            ['Age', '3-6 years', '4-10 years', '9-15 years'],
            ['Sex', 'Boys > Girls', 'Boys > Girls (4:1)', 'Boys > Girls'],
            ['Body habitus', 'Normal', 'Normal', 'Obese,\nendomorphic'],
            ['Presentation', 'Acute hip pain,\nlimp, limited IR', 'Limp, groin/thigh\npain, limited IR', 'Limp, hip/knee pain\ndecreased IR,\nexternal rotation'],
            ['Labs', 'Normal or\nslight ESR increase', 'Normal', 'Normal'],
            ['X-ray', 'Normal', 'Small/sclerotic\nfemoral head,\nwidened joint space', 'Epiphysis displaced\nposterior/inferior,\nwidened physis'],
            ['Treatment', 'Rest, NSAIDs\nResolves 3-5 days', 'Rest, abduction brace\nVarus osteotomy if severe', 'Surgical pinning\n(prevent further slip)'],
            ['Prognosis', 'Good, <10%\nrecurrence', 'Good if <6 years\nand <50% femoral\nhead involvement', 'Variable'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        PearlBlock(
          'Board Pearl — Hip Pain Triad',
          'Toxic synovitis = young child (3-6yr), acute, resolves in days. Legg-Calve-Perthes = school-age (4-10yr), AVN of femoral head, boys 4:1. SCFE = obese adolescent (9-15yr), externally rotated leg, needs surgical pinning urgently to prevent further displacement.',
        ),
      ],
    ),

    // ============ TAB 4: Neck & Spine ============
    TopicTab(
      title: 'Neck & Spine',
      blocks: [
        HeaderBlock('Neck Conditions'),

        HeaderBlock('Congenital Torticollis ("Wry Neck")'),
        BulletCardBlock(
          title: 'Epidemiology & Presentation',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Incidence: 1 per 250 live births, 75% involving the right side',
            'Persistent torticollis in 10-20%, with additional 25% having mild asymmetry',
            '"Olive sign": Soft, nontender enlargement of the SCM on physical exam',
            'Olive sign appears in first 6 weeks, subsides within 4-6 months',
            'Secondary deformities: Ipsilateral facial flattening (plagiocephaly), orbital asymmetry, ipsilateral hip dysplasia',
          ],
        ),
        PearlBlock(
          'Board Pearl — Torticollis Direction',
          'The head tilts TOWARD the affected (tight) SCM and the chin rotates AWAY. Right torticollis = head tilted right, chin rotated LEFT. Left torticollis = head tilted left, chin rotated RIGHT. The most common cause of congenital torticollis is fibrosis of the SCM.',
        ),
        BulletCardBlock(
          title: 'Conservative Treatment',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Stretch contracted SCM 15-29 times per session, 4-6 times daily (every diaper change)',
            'Right torticollis: Tilt head LEFT (ear to left shoulder), rotate face RIGHT (chin to right shoulder)',
            'Left torticollis: Tilt head RIGHT, rotate face LEFT',
            'Mobile placement: For right torticollis, place mobile to RIGHT of crib',
            'If normal ROM not obtained by 1 year: Persistent facial asymmetry will result',
            'Surgical intervention considered when no improvement by 18-24 months',
          ],
        ),
        BulletCardBlock(
          title: 'Important Associations',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Slightly higher incidence of DDH in children with muscular torticollis — hips need evaluation',
            'Must rule out cervical hemivertebra (stretching exercises would be of no benefit)',
            'Must rule out atlantoaxial rotary subluxation',
            'X-rays show C1-C2 rotation in muscular torticollis',
          ],
        ),

        HeaderBlock('Scoliosis'),
        TextBlock(
          'Scoliosis is a three-dimensional deformity with lateral curvature and vertebral rotation. The most common type in adolescents is idiopathic, with a right thoracic curve being most frequent.',
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

        HeaderBlock('Evaluation of Scoliosis'),
        BulletCardBlock(
          title: 'Adams Forward Bending Test & Cobb Method',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Adams test: Child bends forward, examiner looks for trunk asymmetry (rib hump)',
            'Rotary prominence on convex side of curve indicates vertebral rotation',
            'Cobb angle: Measured on PA X-ray — angle between endplates of the most tilted vertebrae at top and bottom of the curve',
            'If lines of endplates intersect within the film, angle is measured directly',
            'If lines don\'t intersect, perpendiculars are drawn and the angle between them is measured',
          ],
        ),

        HeaderBlock('Treatment of Scoliosis'),
        ScaleBlock(
          scaleName: 'Treatment by Cobb Angle',
          description: 'Management guidelines for idiopathic scoliosis in growing children',
          columns: ['Cobb Angle', 'Idiopathic', 'Neuromuscular'],
          rows: [
            ['1-20°', 'Observation', 'Observation'],
            ['20-40°', 'Bracing (TLSO/Milwaukee)', 'Surgery (sooner if rapidly progressive)'],
            ['>40°', 'Surgery', 'Surgery'],
          ],
          boardPearl: 'During rapid adolescent growth, progressive curves increase ~1° per month. If thoracic curves kept <50° and lumbar <40° by skeletal maturity, the likelihood of curve increasing during adult life is small.',
        ),
        PearlBlock(
          'Board Pearl — Scoliosis Treatment Thresholds',
          'Observe <25°, brace 25-40°, surgery >40-50°. Scoliosis is unusual in DMD until the child becomes a full-time wheelchair user. Children with spina bifida and no neurologic function below the thoracolumbar region have a high incidence of progressive scoliosis.',
        ),
        BulletCardBlock(
          title: 'Pulmonary Impact',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Thoracic curves exceeding 50-60° may compromise pulmonary function',
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
            'Most common cause of back pain in children (after spondylolysis)',
            'Typically presents during adolescence, more common in males',
            'Occurs in 0.5-8% of the population',
            'Diagnosis: ≥3 consecutive vertebrae with >5° anterior wedging (Sorenson criteria)',
            'Other findings: Irregular endplates, Schmorl nodes, increased disc narrowing',
            'Treatment: <50° = conservative (PT, anti-inflammatories); 50-75° = TLSO brace; >75° = surgery',
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
            'Isthmic type (pars interarticularis fracture) is most common type in children',
            'Pars defect at L5 in 67%, L4 in 15-30%',
            'Frequency of pars defect: 4.5% children, 6% adolescents, up to 12% in gymnasts',
            'Dysplastic (congenital) type: Malformation of facet joints at lumbosacral junction',
            'Treatment: <50% slip = anti-inflammatories, bracing, PT (avoid extension); >50% = surgical fusion',
          ],
        ),
        PearlBlock(
          'Board Pearl — Spondylolisthesis',
          'In adults, degenerative spondylolisthesis is most common. In children, dysplastic and isthmic types are most common. Isthmic (pars fracture) is the most common type overall in pediatrics, occurring most frequently at L5.',
        ),
      ],
    ),
  ],
);
