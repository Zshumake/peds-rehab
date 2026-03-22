import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final limbDeficienciesContent = TopicData(
  id: 'limb-deficiencies',
  title: 'Pediatric Limb Deficiencies',
  tabs: [
    // ============ TAB 1: Classification Systems ============
    TopicTab(
      title: 'Classification',
      blocks: [
        HeaderBlock('Congenital Limb Deficiency'),
        TextBlock(
          'Congenital limb deficiencies occur primarily during the first trimester when mesodermal formation of the limb occurs at day 26 of gestation and continues with differentiation until 8 weeks of gestation. Risk factors include thalidomide exposure and maternal diabetes.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Three Classification Systems',
          themeColor: const Color(0xFFEC4899),
          backgroundColor: const Color(0xFFFDF2F8),
          points: [
            'ISPO (International Society for Prosthetics and Orthotics) — preferred system',
            'Original (Classic) classification',
            'Frantz classification',
          ],
        ),
        PearlBlock(
          'Board Pearl',
          'The ISPO classification is the preferred system. It classifies deficiencies as either transverse (no distal remaining portions) or longitudinal (have distal portions). The transverse level is named after the segment beyond which there is no skeletal portion.',
        ),

        HeaderBlock('ISPO Classification System'),
        BulletCardBlock(
          title: 'ISPO Principles',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Classifies as transverse or longitudinal',
            'Transverse: No distal remaining portions (like an amputation)',
            'Longitudinal: Have distal portions present',
            'Transverse level named after segment beyond which there is no skeletal portion',
            'Longitudinal deficiencies name the bones that are affected',
            'Any bone not named is present and of normal form',
          ],
        ),

        HeaderBlock('Original (Classic) Classification'),
        BulletCardBlock(
          title: 'Classic Terminology',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Acheiria — missing hand or foot',
            'Adactyly — absent metacarpal or metatarsal',
            'Amelia — absence of a limb',
            'Aphalangia — absent finger or toe',
            'Hemimelia — absence of half a limb',
            'Meromelia — partial absence of a limb',
            'Phocomelia ("seal limb") — flipper-like extremity with absent or markedly hypoplastic proximal limb and normal/nearly normal hand or foot',
          ],
        ),

        TableBlock(
          title: 'Classification Comparison',
          columns: ['Original (Classic)', 'Frantz', 'ISPO'],
          rows: [
            ['Upper extremity\namelia', 'Terminal\ntransverse', 'Transverse upper\narm, total'],
            ['Fibula\nhemimelia', 'Intercalary/normal foot\nLongitudinal/absent rays\nFibular deficiency', 'Longitudinal fibular\ndeficiency\n(total or partial)'],
            ['Upper extremity\nphocomelia', 'Complete UE phocomelia\nDistal/absent radius ulna\nProximal/absent humerus', 'Longitudinal total,\nhumerus, ulna, radius\nCarpal, metacarpal,\nphalangeal (total or partial)'],
          ],
          headerColor: const Color(0xFFEC4899),
        ),

        HeaderBlock('Frantz Classification'),
        BulletCardBlock(
          title: 'Frantz System',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Describes deficiencies as terminal or intercalary',
            'Terminal: Complete loss of the distal extremity',
            'Intercalary: Absence of intermediate parts with preserved proximal and distal parts',
            'Further divided into horizontal and longitudinal deficits',
          ],
        ),
      ],
    ),

    // ============ TAB 2: Upper Extremity ============
    TopicTab(
      title: 'Upper Extremity',
      blocks: [
        HeaderBlock('Congenital Upper Extremity Deficiency'),
        TextBlock(
          'The incidence of congenital UE deficiency is 4.1 per 10,000 live births. Most cases have no hereditary implications. Exceptions include deficiencies involving hands/feet, central ray deficiencies, and adactyly involving the first four digits with the fifth intact.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl',
          'The most common congenital upper extremity deficiency is a LEFT terminal transradial (below-elbow) deficiency. Most UE congenital deficiencies have NO hereditary implications.',
        ),

        HeaderBlock('Associated Syndromes'),
        TableBlock(
          title: 'Syndromes Seen with UE Limb Deficiencies',
          columns: ['Syndrome', 'Associated Problem'],
          rows: [
            ['Thrombocytopenia with absence\nof radius (TAR)', 'Thrombocytopenia'],
            ['Fanconi syndrome\n(anemia/leukopenia at 5-6 yr)', 'Anemia, leukopenia'],
            ['Holt-Oram syndrome\n(congenital heart disease, ASD)', 'Congenital heart disease'],
            ['Baller-Gerold syndrome\n(craniosynostosis)', 'Craniosynostosis'],
            ['VACTERL (or VATER)\nMultiorgan involvement', 'Vertebral, Anal atresia,\nCardiac, TE fistula,\nRenal, Limb deficiency'],
          ],
          headerColor: const Color(0xFFEC4899),
        ),
        PearlBlock(
          'Board Pearl',
          'Craniofacial anomalies are associated with limb deficiencies. Know the five associated syndromes: TAR, Fanconi, Holt-Oram, Baller-Gerold, and VACTERL.',
        ),
        MnemonicBlock(
          'VACTERL',
          'Vertebral defects, Anal atresia, Cardiac defects, Tracheo-Esophageal fistula, Renal anomalies, Limb anomalies',
        ),

        HeaderBlock('Transradial Deficiency'),
        BulletCardBlock(
          title: 'Most Common Congenital UE Deficiency',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Left terminal transradial is the most common congenital UE deficiency',
            'Prosthetic fitting follows attainment of normal developmental milestones',
            'First fitting ~6-7 months: Passive mitt when child achieves sitting balance and can practice placing objects',
            'More sophisticated prosthesis at 11-13 months: When child begins to walk, performs simple grasp/release, and has attention span >5 minutes',
            'By age 4-5 years: Child can operate all types of prosthetic components and controls',
            'Initial prosthesis uses self-suspending design with supracondylar socket, preferred by parents',
          ],
        ),

        HeaderBlock('Transhumeral Deficiency'),
        BulletCardBlock(
          title: 'Above-Elbow Deficiency',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Initial prosthesis suspended by harness or silicone suction',
            'Progression slightly delayed compared to transradial (transhumeral prosthesis can be more of an encumbrance)',
            'Infant will have greater difficulty rolling compared to transradial prosthesis',
            'Active terminal devices prescribed shortly after child begins to walk',
            'Body-powered hooks used at 2-3 years when child is strong enough and has cognitive ability',
            'Body-powered elbow may be used by age 4-5 years',
            'The higher the limb absence, the less the child accepts the prosthesis',
            'Transradial patients wear prostheses more than transhumeral patients',
          ],
        ),

        HeaderBlock('Krukenberg Procedure'),
        PearlBlock(
          'Board Pearl — Krukenberg',
          'The Krukenberg procedure reconstructs the forearm and creates a sensate prehensile surface by separating the ulna and the radius in the forearm. Rarely used due to dramatic cosmetic appearance — usually only for bilateral hand absence with visual impairment.',
        ),

        HeaderBlock('UE Revision Amputation'),
        BulletCardBlock(
          title: 'Revision Surgery',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Required in 10% of UE congenital limb deficiencies',
            'Treatment directed at centralization of the hand and reconstructing the thumb',
            'Examples: Radial club hand, ulnar club hand',
            'These represent longitudinal deficiencies of the forearm',
            'Vilkke procedure: Attaches a toe to the residual limb to create a pincer grip',
          ],
        ),
      ],
    ),

    // ============ TAB 3: Lower Extremity ============
    TopicTab(
      title: 'Lower Extremity',
      blocks: [
        HeaderBlock('Congenital Lower Extremity Deficiency'),

        HeaderBlock('Fibula'),
        BulletCardBlock(
          title: 'Fibular Deficiency',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Fibular longitudinal deficiency (fibular hemimelia) is the MOST COMMON congenital lower limb deficiency',
            'Bilateral deficiency occurs 25% of the time',
            'Unilateral deficiency creates limb length discrepancy',
            'If leg length inequality is severe, a Syme\'s amputation may be performed with fitting of a Syme\'s prosthesis',
            'Longitudinal deficiency of the fibula occurs in 1 per million births',
            'Clinical picture: Varus foot, short leg, unstable knee/ankle, or both',
            'Treatment of choice for longitudinal deficiency: Knee disarticulation',
          ],
        ),
        PearlBlock(
          'Board Pearl',
          'Fibular hemimelia (longitudinal fibular deficiency) is the most common congenital LOWER limb deficiency. Left transradial is the most common congenital UPPER limb deficiency.',
        ),

        HeaderBlock('Tibia'),
        BulletCardBlock(
          title: 'Tibial Deficiency',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Transtibial deficiency is more common than transfemoral deficiency',
            'Longitudinal deficiency of the tibia occurs in 1 per million births',
            'Partial tibial deficiency: 30% autosomal dominant inherited pattern',
            'If tibial segment long enough, surgeon creates synostosis with intact fibula and amputates foot — provides stable walking surface without a prosthesis',
          ],
        ),

        HeaderBlock('Femur — PFFD'),
        BulletCardBlock(
          title: 'Proximal Femoral Focal Deficiency (PFFD)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Also known as longitudinal deficiency of the femur',
            'Occurs in 1 per 50,000 births; 10-15% are bilateral',
            'Absence of proper development of the proximal femur',
            'Can include stunting or shortening of the entire femur',
            'Femur is typically short and held in flexion, abduction, and external rotation',
            '70-80% of patients with PFFD also have associated fibular deficiencies',
          ],
        ),
        PearlBlock(
          'Board Pearl — PFFD',
          '70-80% of patients with PFFD have associated fibular deficiencies. The femur is characteristically short and held in flexion, abduction, and external rotation.',
        ),

        HeaderBlock('PFFD Treatment Options'),
        BulletCardBlock(
          title: 'Surgical Options for PFFD',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Severe forms: Fusion of shortened femur to tibia + Syme\'s amputation of foot → above-knee prosthesis',
            'Van Ness Rotation: Controversial procedure — rotates foot 180° so ankle joint functions as knee joint and ankle motion controls prosthesis',
            'Nonstandard prosthesis or shoe lifts with no surgical conversion',
          ],
        ),

        HeaderBlock('LE Prosthetic Fitting Timetable'),
        BulletCardBlock(
          title: 'Fitting for Lower Limb-Deficient Child',
          themeColor: const Color(0xFF06B6D4),
          backgroundColor: const Color(0xFFECFEFF),
          points: [
            'Prosthesis fitted when child is ready to pull up to standing (9-10 months)',
            'Fit jointless, above-the-knee prosthesis to the toddler initially',
            'Normal child does not establish heel-to-toe gait until around 2 years',
            'Prosthetic heel strike to toe-off not attained until age 5 or until one-legged standing is achieved',
            'Knee joint usually added as early as 18 months of age',
          ],
        ),

        HeaderBlock('LE Prosthetic Components'),
        BulletCardBlock(
          title: 'Components for Children',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'SACH (solid ankle cushion heel) foot: Most common prosthetic foot prescribed for child amputees',
            'Energy-storing feet becoming more popular for active children',
            'Single axis knees: Durable and lightweight (with or without locks)',
            'Polycentric knees: For long residual limbs where knee center matching is difficult',
            'Fluid-controlled knees: Smoother gait, reserved until adolescence',
            'Suction socket not prescribed until child can assist with donning (~5 years)',
            'Pelvic belt acceptable for above-knee suspension in young children',
          ],
        ),
        PearlBlock(
          'Board Pearl — SACH Foot',
          'The SACH (solid ankle cushion heel) foot is the most commonly prescribed prosthetic foot for child amputees. Energy-storing feet are becoming more popular for active children.',
        ),
      ],
    ),

    // ============ TAB 4: Acquired Amputations & Complications ============
    TopicTab(
      title: 'Acquired & Complications',
      blocks: [
        HeaderBlock('Acquired Amputations in Children'),
        TextBlock(
          'Acquired amputation in children occurs two times more frequently from trauma than from disease. The management differs significantly from adults due to continued growth and development.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Causes of Acquired Amputation',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Trauma: Motor vehicle, motorcycle, train accidents (majority of childhood acquired amputations)',
            'Home accidents: Burns, fireworks',
            'Disease: Childhood tumors are most frequent disease-related cause',
            'Osteogenic sarcoma and Ewing\'s sarcoma most common malignant tumors (ages 12-21)',
            'Vascular insufficiency/gangrene',
            'Meningococcemia: Emboli can cause autoamputation of all four limbs',
            'Single limb loss >90%, with 60% involving lower extremity',
            'Boys affected more than girls (3:2 ratio)',
          ],
        ),

        HeaderBlock('Growth Considerations'),
        BulletCardBlock(
          title: 'Unique Pediatric Amputation Issues',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Joint disarticulation preferred over transmetaphyseal/transdiaphyseal amputation in growing children',
            'Disarticulation preserves the epiphyseal growth plate for continued longitudinal growth',
            'Knee disarticulation preserves distal femoral epiphysis (70% of femoral growth)',
            'Loss of distal femoral epiphysis results in significantly shorter residual limb',
            'As the child grows, the limb with amputation will not grow as large — cosmetic fix needed',
            'If epiphyseal growth plates are damaged during surgery, expandable prostheses allow periodic lengthening',
          ],
        ),
        PearlBlock(
          'Board Pearl — Disarticulation',
          'In children, joint disarticulation is preferred over through-bone amputation because it preserves the epiphyseal growth plate, allowing continued longitudinal growth. In the femur, 70% of growth occurs from the distal epiphysis.',
        ),

        HeaderBlock('Terminal Overgrowth'),
        BulletCardBlock(
          title: 'Most Common Complication of Pediatric Amputation',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Terminal bony overgrowth at the transected end of a long bone is the MOST COMMON complication',
            'Occurs in immature children after amputation (NOT after disarticulation)',
            'Most frequently affects: Humerus, fibula, tibia, and femur (in that order)',
            'Appositional growth can be so significant that bone pierces skin and causes ulcers',
            'Treatment of choice: Surgical revision',
            'Other complications: Bone spur formation, adventitious bursae, stump scarring requiring socket modifications',
          ],
        ),
        PearlBlock(
          'Board Pearl — Terminal Overgrowth',
          'Terminal overgrowth occurs most frequently in the humerus, then fibula, tibia, and femur. It does NOT occur after disarticulation (only after through-bone amputation). Treatment is surgical revision — NOT simply trimming the bone.',
        ),

        HeaderBlock('Prosthetic Fitting After Acquired Amputation'),
        BulletCardBlock(
          title: 'Fitting Considerations',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Fitting timetable same as congenital except for post-operative swelling',
            'Temporary or preparatory prosthesis while postop swelling subsides',
            'Intraoperative prosthetic fitting may be performed for LE amputees',
            'Advantages of intraoperative fitting: Early walking, decreased edema and pain',
            'Good candidates: Teenagers or young adults undergoing tumor amputation',
            'Poor candidates: Young children who don\'t understand weight-bearing restrictions, immunocompromised children',
            'Prostheses need replacement every 15-18 months in growing children',
            'Annual replacement until age 5, then every 2 years until age 12, then every 3-4 years',
          ],
        ),

        HeaderBlock('Phantom Sensation & Pain'),
        BulletCardBlock(
          title: 'Phantom Limb in Children',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Children with CONGENITAL limb deficiency do NOT develop phantom sensation or pain — even after surgical conversion',
            'Children with ACQUIRED amputations DO retain awareness of the amputated part',
            'Sensation may be uncomfortable or painful',
            'The OLDER the child at time of amputation, the greater the chance of phantom pain',
            'Phantom pain especially likely if amputation occurs after age 10',
          ],
        ),
        PearlBlock(
          'Board Pearl — Phantom Pain',
          'Children with congenital limb deficiency do NOT develop phantom pain. Children with acquired amputations DO experience phantom sensation. Risk increases with age at amputation, especially after age 10.',
        ),

        HeaderBlock('General Functional Issues'),
        BulletCardBlock(
          title: 'Functional Considerations',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Children with isolated limb deficiency/amputation can achieve age-level academic skills',
            'Amputees preserve energy by decreasing walking speed',
            'Motorized wheelchairs traditionally introduced at age 5-6 (as young as 12-18 months with innovative technology)',
            'Cognitive skills of spatial relation and problem-solving are essential predictors of power mobility success',
            'Children with bilateral UE deficiencies will use their feet for fine motor tasks and should be encouraged to do so',
          ],
        ),

        MnemonicBlock(
          'Prosthetic Fitting Timeline: "6-12-3"',
          '6 months = passive terminal device (sitting age). 12 months = voluntary-opening terminal device (walking age). 3 years = myoelectric option (cognitive readiness).',
        ),
      ],
    ),
  ],
);
