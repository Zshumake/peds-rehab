import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final limbDeficienciesContent = TopicData(
  id: 'limb-deficiencies',
  title: 'Pediatric Limb Deficiencies',
  tabs: [
    // ============ TAB 1: Brachial Plexus Anatomy & Injury ============
    TopicTab(
      title: 'Brachial Plexus',
      blocks: [
        HeaderBlock('Brachial Plexus Birth Injury'),
        TextBlock(
          'Brachial plexus birth injury (BPBI) results in partial or complete paralysis of the affected upper extremity. Overall incidence is 0.4-4.6 per 1,000 live births. Spontaneous recovery occurs in 70-92% overall, but varies greatly by injury pattern.',
          isIntro: true,
        ),
        TableBlock(
          title: 'BPBI — Key Board Concepts',
          columns: ['Concept', 'Detail'],
          rows: [
            ['Most common type', 'Erb-Duchenne (C5-C6), ~70-80% of cases'],
            ['Waiter\'s tip posture', 'Adduction, internal rotation, elbow extension, pronation, wrist flexion'],
            ['Klumpke palsy', 'C8-T1; claw hand deformity; very rare in neonates (<2%)'],
            ['Horner syndrome', 'Miosis, ptosis, anhidrosis; indicates T1 avulsion; worst prognosis'],
            ['Strongest risk factor', 'Shoulder dystocia (~100x increased risk)'],
            ['Most common associated injury', 'Ipsilateral clavicle fracture (10-15%)'],
            ['Most common long-term deficit', 'Shoulder internal rotation contracture and glenohumeral dysplasia'],
          ],
          headerColor: const Color(0xFFEC4899),
        ),

        HeaderBlock('Brachial Plexus Anatomy'),
        TableBlock(
          title: 'Plexus Organization: Roots to Branches',
          columns: ['Level', 'Components', 'Formation'],
          rows: [
            ['Roots', 'C5, C6, C7, C8, T1', 'Ventral rami of spinal nerves'],
            ['Trunks', 'Upper (C5-C6), Middle (C7), Lower (C8-T1)', 'Root convergence'],
            ['Divisions', '6 total (ant + post from each trunk)', 'Trunk bifurcation'],
            ['Cords', 'Lateral, Posterior, Medial', 'Division recombination'],
            ['Terminal branches', 'Musculocutaneous, Axillary, Radial, Median, Ulnar', 'Cord termination'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        BulletCardBlock(
          title: 'Critical Proximal Branches',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Dorsal scapular nerve (C5 root): Rhomboids; weakness = C5 root involvement proximal to trunk',
            'Long thoracic nerve (C5-C7 roots): Serratus anterior; injury = scapular winging',
            'Suprascapular nerve (upper trunk): Supraspinatus and infraspinatus; frequently involved in Erb palsy',
            'Phrenic nerve (C3-C5): Diaphragm; ipsilateral hemidiaphragm paralysis in ~5% of BPBI',
          ],
        ),
        TableBlock(
          title: 'Key Myotomes',
          columns: ['Root Level', 'Key Muscles', 'Primary Function'],
          rows: [
            ['C5', 'Deltoid, biceps, supraspinatus, infraspinatus', 'Shoulder abduction, external rotation, elbow flexion'],
            ['C6', 'Biceps, brachioradialis, wrist extensors', 'Elbow flexion, supination, wrist extension'],
            ['C7', 'Triceps, wrist flexors, finger extensors', 'Elbow extension, wrist flexion, finger extension'],
            ['C8', 'FDP, FDS, finger flexors', 'Finger flexion, grip strength'],
            ['T1', 'Intrinsic hand muscles', 'Fine motor, finger abduction/adduction'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),

        HeaderBlock('Nerve Injury Classification'),
        TableBlock(
          title: 'Seddon and Sunderland Classification',
          columns: ['Seddon', 'Sunderland', 'Pathology', 'Prognosis'],
          rows: [
            ['Neurapraxia', 'Grade I', 'Focal demyelination; axon intact', 'Complete recovery, weeks to months'],
            ['Axonotmesis', 'Grade II', 'Axon disrupted, endoneurium intact', 'Good recovery (axon regrows ~1 mm/day)'],
            ['Axonotmesis', 'Grade III', 'Axon + endoneurium disrupted', 'Partial recovery, aberrant reinnervation'],
            ['Axonotmesis', 'Grade IV', 'Neuroma-in-continuity', 'No spontaneous recovery; surgery needed'],
            ['Neurotmesis', 'Grade V', 'Complete nerve transection', 'No spontaneous recovery; surgery required'],
            ['--', 'Grade VI (Mackinnon)', 'Mixed injury pattern', 'Variable prognosis'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl — Root Avulsion',
          'Root avulsion (preganglionic injury) is distinguished by PRESERVED SNAP despite clinical sensory loss, because the dorsal root ganglion remains connected to the peripheral nerve. Additional signs: Horner syndrome (T1), elevated hemidiaphragm (phrenic C3-C5), scapular winging (long thoracic C5-C7), rhomboid weakness (dorsal scapular C5).',
        ),
      ],
    ),

    // ============ TAB 2: BPBI Classification & Assessment ============
    TopicTab(
      title: 'BPBI Assessment',
      blocks: [
        HeaderBlock('Injury Patterns'),
        TextBlock(
          'BPBI ranges from upper plexus injuries (best prognosis) to total plexus palsy with Horner syndrome (worst prognosis). The Narakas classification is the most widely used stratification system.',
          isIntro: true,
        ),
        ComparisonCardBlock(
          title: 'Erb-Duchenne Palsy (C5-C6)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          icon: Icons.accessibility_new_rounded,
          description: 'Most common type (70-80%). Classic "waiter\'s tip" position. Hand grip PRESERVED (C8-T1 intact). Prognosis: 70-92% spontaneous recovery.',
          keyPoints: [
            'Shoulder adduction, internal rotation',
            'Elbow extension, forearm pronation, wrist flexion',
            'Lost: Shoulder abduction, external rotation, elbow flexion, supination',
            'Extended Erb (C5-C7): Adds wrist/finger extension loss',
          ],
        ),
        ComparisonCardBlock(
          title: 'Klumpke Palsy (C8-T1)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          icon: Icons.back_hand_rounded,
          description: 'Very rare as birth injury (<1-2%). Claw hand deformity. Horner syndrome indicates T1 avulsion. Poorer prognosis.',
          keyPoints: [
            'Affects intrinsic hand muscles, wrist/finger flexors',
            'MCP hyperextension with IP flexion (claw hand)',
            'Horner syndrome: Miosis, ptosis, anhidrosis',
            'Some experts question if isolated lower plexus birth injury truly exists',
          ],
        ),
        ComparisonCardBlock(
          title: 'Total Plexus Palsy (C5-T1)',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.warning_rounded,
          description: 'Accounts for 20-30%. Flail arm with complete paralysis. Absent Moro on affected side. Worst prognosis; most likely to need surgery.',
          keyPoints: [
            'No grip, no voluntary arm movement',
            'Horner syndrome common; indicates poor prognosis',
            'Phrenic nerve palsy: Elevated hemidiaphragm, respiratory distress',
            'With Horner: <5% spontaneous recovery',
          ],
        ),

        HeaderBlock('Narakas Classification'),
        TableBlock(
          title: 'Narakas Classification',
          columns: ['Group', 'Roots', 'Description', 'Spontaneous Recovery'],
          rows: [
            ['I', 'C5-C6', 'Upper Erb palsy', '~90%'],
            ['II', 'C5-C7', 'Extended Erb palsy', '~65%'],
            ['III', 'C5-T1', 'Total palsy WITHOUT Horner', '~50%'],
            ['IV', 'C5-T1', 'Total palsy WITH Horner', '<5%'],
          ],
          headerColor: const Color(0xFFEC4899),
        ),
        PearlBlock(
          'Board Pearl — Narakas',
          'Group I injuries almost always recover spontaneously (~90%). Group IV injuries almost NEVER recover spontaneously (<5%) and require early surgical exploration. Groups II and III are intermediate, requiring careful serial assessment.',
        ),

        HeaderBlock('Assessment Scales'),
        ScaleBlock(
          scaleName: 'Active Movement Scale (AMS)',
          description: 'Most widely used standardized assessment for BPBI. 15 muscle groups graded 0-7.',
          columns: ['Score', 'Description', 'Position'],
          rows: [
            ['0', 'No contraction', 'Gravity eliminated'],
            ['1', 'Contraction, no movement', 'Gravity eliminated'],
            ['2', 'Movement <=1/2 range', 'Gravity eliminated'],
            ['3', 'Movement >1/2 range', 'Gravity eliminated'],
            ['4', 'Full range movement', 'Gravity eliminated'],
            ['5', 'Movement <=1/2 range', 'Against gravity'],
            ['6', 'Movement >1/2 range', 'Against gravity'],
            ['7', 'Full movement', 'Against gravity'],
          ],
          boardPearl: 'Serial AMS assessments are the key tool for tracking recovery and guiding surgical decisions. 15 movements assessed including shoulder, elbow, forearm, wrist, and hand.',
        ),
        TableBlock(
          title: 'Clinical Assessment Tools',
          columns: ['Tool', 'Purpose', 'Key Detail'],
          rows: [
            ['Toronto Test Score', 'Recovery prediction at 3 months', 'Sum of 5 AMS scores; <=3.5 = poor prognosis, warrants surgery eval'],
            ['Cookie Test', 'Hand-to-mouth function', 'Tests elbow flexion + supination (C5-C6); failure by 6-9 mo = surgical indication'],
            ['Towel Test', 'Shoulder/elbow function', 'Inability to remove towel from face at 6 mo = poor recovery indicator'],
            ['Mallet Classification', 'Global shoulder function', 'Grades I-V for 5 shoulder movements; used after age 3-4 years'],
            ['Raimondi Hand Scale', 'Hand function grading', 'Grades 0-V for grasp patterns'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Toronto Test',
          'The Toronto Test at 3 months is the most widely used screening tool for microsurgical candidates. Score <=3.5 at 3 months predicts poor spontaneous recovery. It established the 3-month evaluation as a critical decision-making time point.',
        ),
        PearlBlock(
          'Board Pearl — Electrodiagnostics',
          'Preserved SNAP with clinical sensory loss = root avulsion (preganglionic injury). The DRG remains connected to the peripheral nerve, so sensory conduction is preserved even though sensory fibers are disconnected from the spinal cord. This finding has direct surgical planning implications.',
        ),
      ],
    ),

    // ============ TAB 3: BPBI Management ============
    TopicTab(
      title: 'BPBI Management',
      blocks: [
        HeaderBlock('Management of Brachial Plexus Birth Injury'),
        TextBlock(
          'Initial management for all BPBI is conservative. Surgical decision-making relies on serial assessment with the AMS, Toronto Test, and Cookie Test. The trend is toward earlier surgical referral for severe injuries.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Conservative Management',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Gentle passive ROM exercises begin within 1-2 weeks after birth',
            'Key movements: Shoulder external rotation/abduction, elbow extension, forearm supination, wrist/finger extension',
            'Positioning: Avoid prolonged internal rotation/adduction postures',
            'Sensory stimulation of affected limb to maintain cortical representation',
            'Serial AMS assessments: Monthly for first 3-6 months, then quarterly',
            'Parent education is the SINGLE most important factor in conservative management',
          ],
        ),

        HeaderBlock('Surgical Decision-Making Algorithm'),
        TableBlock(
          title: 'Decision Points by Age',
          columns: ['Age', 'Assessment', 'Action'],
          rows: [
            ['Birth', 'Document Narakas group, Horner status', 'If Group IV: Begin surgical planning + MRI/EDx'],
            ['1 month', 'Begin serial AMS', 'Conservative management continues'],
            ['3 months', 'Toronto Test Score', 'If <=3.5: Refer to BPBI surgery team'],
            ['6 months', 'Cookie Test, biceps function', 'No antigravity elbow flexion or failed Cookie Test: Surgery indicated'],
            ['9-12 months', 'Residual deficits', 'Primary nerve surgery still possible up to 9 months at some centers'],
            ['>12 months', 'Persistent deficits', 'Primary nerve surgery generally not beneficial; secondary procedures'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),

        HeaderBlock('Microsurgical Timing Controversy'),
        TableBlock(
          title: 'Three Approaches to Surgical Timing',
          columns: ['Approach', 'Timing', 'Rationale', 'Criticism'],
          rows: [
            ['Early', '3 months', 'Motor endplate viability declines with time; earlier = better outcomes', 'May operate on some who would recover spontaneously'],
            ['Intermediate', '6 months', 'More observation time; Toronto test screens, surgery at 6 mo for failures', 'May miss optimal window for some'],
            ['Late', '9 months', 'Maximize spontaneous recovery; reduce unnecessary surgery', 'Poorer shoulder outcomes with later surgery'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        PearlBlock(
          'Board Pearl — Surgical Timing Trend',
          'The trend is toward EARLIER surgical referral, particularly for severe injuries. Early referral at 3 months for EVALUATION allows timely planning. A child without antigravity elbow flexion by 6 months should be considered a microsurgical candidate at most centers.',
        ),

        HeaderBlock('Surgical Options'),
        BulletCardBlock(
          title: 'Primary Nerve Surgery',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Nerve grafting: Autologous sural nerve grafts to bridge gaps after neuroma resection; most common primary technique',
            'Oberlin transfer: Ulnar nerve fascicle (FCU) to biceps motor branch (musculocutaneous nerve); most well-known nerve transfer',
            'Double Oberlin (Mackinnon): Ulnar fascicle to biceps + median fascicle to brachialis; dual elbow flexion innervation',
            'Spinal accessory to suprascapular nerve: Restores shoulder abduction and external rotation',
            'Intercostal nerve transfers: Historically used for elbow flexion when local donors unavailable',
          ],
        ),
        PearlBlock(
          'Board Pearl — Oberlin Transfer',
          'The Oberlin transfer uses an expendable fascicle from the ulnar nerve (FCU) to provide short-distance, high-quality motor input directly to the biceps motor branch. It is the most well-known nerve transfer for brachial plexus reconstruction.',
        ),
        BulletCardBlock(
          title: 'Secondary/Late Reconstruction',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Shoulder: Subscapularis slide/release; latissimus/teres major transfer to external rotators; botox to internal rotators; humeral rotation osteotomy',
            'Elbow: Steindler flexorplasty; free functioning gracilis muscle transfer; triceps-to-biceps transfer',
            'Forearm: Pronator teres rerouting (converts pronator to supinator)',
          ],
        ),

        HeaderBlock('Long-Term Sequelae'),
        BulletCardBlock(
          title: 'Complications Even with Good Nerve Recovery',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Shoulder internal rotation contracture: Most common and functionally significant long-term problem',
            'Glenohumeral dysplasia: Progressive posterior subluxation, glenoid retroversion, biconcavity',
            'Muscle co-contractions: Simultaneous activation of antagonists from aberrant reinnervation',
            'Elbow flexion contracture: Common with C5-C6 injuries',
            'Forearm supination deficit: Common functional limitation',
            'Limb length discrepancy: Affected arm may be shorter',
          ],
        ),
        PearlBlock(
          'Board Pearl — Shoulder Dysplasia Prevention',
          'Shoulder dysplasia is progressive, driven by muscle imbalance acting on the growing skeleton. Early and aggressive management of internal rotation contracture (PT, botulinum toxin, timely surgery) can prevent or mitigate glenohumeral remodeling. Delayed treatment allows irreversible bony changes.',
        ),
        TableBlock(
          title: 'Prognostic Indicators Summary',
          columns: ['Indicator', 'Favorable', 'Unfavorable'],
          rows: [
            ['Injury pattern', 'Upper plexus (C5-C6)', 'Total palsy (C5-T1)'],
            ['Horner syndrome', 'Absent', 'Present'],
            ['Phrenic nerve palsy', 'Absent', 'Present'],
            ['Biceps at 3 months', 'AMS >=6 (antigravity)', 'AMS <3'],
            ['Toronto Test at 3 mo', '>3.5', '<=3.5'],
            ['Cookie Test 6-9 mo', 'Positive (hand to mouth)', 'Negative'],
            ['SNAP with sensory loss', 'Absent (postganglionic)', 'Present (preganglionic avulsion)'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
      ],
    ),

    // ============ TAB 4: Congenital Limb Deficiencies ============
    TopicTab(
      title: 'Congenital Limb',
      blocks: [
        HeaderBlock('Congenital Limb Deficiency'),
        TextBlock(
          'Congenital limb deficiencies occur primarily during the first trimester when mesodermal formation of the limb occurs at day 26 of gestation and continues with differentiation until 8 weeks. Risk factors include thalidomide exposure and maternal diabetes.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'ISPO Classification (Preferred System)',
          themeColor: const Color(0xFFEC4899),
          backgroundColor: const Color(0xFFFDF2F8),
          points: [
            'Classifies as transverse or longitudinal',
            'Transverse: No distal remaining portions (like an amputation)',
            'Longitudinal: Have distal portions present',
            'Transverse level named after segment beyond which there is no skeletal portion',
            'Longitudinal deficiencies name the bones that are affected',
            'Any bone not named is present and of normal form',
          ],
        ),
        PearlBlock(
          'Board Pearl — ISPO',
          'The ISPO classification is the preferred system. It classifies deficiencies as either transverse (no distal remaining portions) or longitudinal (have distal portions).',
        ),
        BulletCardBlock(
          title: 'Classic Terminology',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Acheiria: Absence of the hand (apodia = absence of the foot)',
            'Adactyly: Absence of digits (fingers or toes)',
            'Amelia: Absence of a limb',
            'Aphalangia: Absence of one or more phalanges',
            'Hemimelia: Absence of half a limb',
            'Meromelia: Partial absence of a limb',
            'Phocomelia ("seal limb"): Flipper-like extremity with absent proximal limb and normal hand/foot',
          ],
        ),

        HeaderBlock('Upper Extremity Deficiency'),
        PearlBlock(
          'Board Pearl — Most Common UE Deficiency',
          'The most common congenital upper extremity deficiency is a LEFT terminal transradial (below-elbow) deficiency. Most UE congenital deficiencies have NO hereditary implications.',
        ),
        TableBlock(
          title: 'Syndromes Associated with UE Limb Deficiency',
          columns: ['Syndrome', 'Key Association'],
          rows: [
            ['TAR (Thrombocytopenia-Absent Radius)', 'Thrombocytopenia'],
            ['Fanconi syndrome', 'Anemia/leukopenia (age 5-6 years)'],
            ['Holt-Oram syndrome', 'Congenital heart disease (ASD)'],
            ['Baller-Gerold syndrome', 'Craniosynostosis'],
            ['VACTERL association', 'Vertebral, Anal, Cardiac, TE fistula, Renal, Limb'],
          ],
          headerColor: const Color(0xFFEC4899),
        ),
        MnemonicBlock(
          'VACTERL',
          'Vertebral defects, Anal atresia, Cardiac defects (VSD most common), Tracheo-Esophageal fistula, Esophageal atresia, Renal anomalies, Limb anomalies (radial ray defects). An association (not syndrome) requiring 3+ features.',
        ),

        HeaderBlock('Lower Extremity Deficiency'),
        PearlBlock(
          'Board Pearl — Most Common LE Deficiency',
          'Fibular hemimelia (longitudinal fibular deficiency) is the most common congenital LOWER limb deficiency. Clinical features: Varus foot, short leg, unstable knee/ankle.',
        ),
        BulletCardBlock(
          title: 'PFFD (Proximal Femoral Focal Deficiency)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Longitudinal deficiency of the femur; 1 in 50,000 births; 10-15% bilateral',
            'Femur short and held in flexion, abduction, and external rotation',
            '70-80% of PFFD patients also have fibular deficiencies',
            'Treatment: Fusion of shortened femur to tibia + Syme amputation (severe); Van Ness rotation (controversial); shoe lifts',
          ],
        ),
        PearlBlock(
          'Board Pearl — PFFD',
          '70-80% of patients with PFFD have associated fibular deficiencies. The femur is characteristically short and held in flexion, abduction, and external rotation.',
        ),
      ],
    ),

    // ============ TAB 5: Prosthetics & Complications ============
    TopicTab(
      title: 'Prosthetics',
      blocks: [
        HeaderBlock('Pediatric Prosthetic Fitting'),
        TextBlock(
          'Prosthetic fitting follows attainment of normal developmental milestones. Children with congenital limb deficiency do NOT develop phantom sensation or pain, while children with acquired amputations DO.',
          isIntro: true,
        ),

        HeaderBlock('UE Prosthetic Fitting Timeline'),
        BulletCardBlock(
          title: 'Transradial (Below-Elbow) Deficiency',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'First fitting ~6-7 months: Passive mitt when child achieves sitting balance',
            'More sophisticated prosthesis at 11-13 months: When child walks, simple grasp/release, attention span >5 min',
            'By age 4-5 years: Child can operate all prosthetic components and controls',
            'Initial prosthesis uses self-suspending supracondylar socket',
          ],
        ),
        BulletCardBlock(
          title: 'Transhumeral (Above-Elbow) Deficiency',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Progression slightly delayed compared to transradial',
            'Body-powered hooks at 2-3 years (strength and cognitive ability required)',
            'Body-powered elbow may be used by age 4-5 years',
            'The higher the limb absence, the LESS the child accepts the prosthesis',
          ],
        ),
        MnemonicBlock(
          'Prosthetic Fitting Timeline: "6-12-3"',
          '6 months = passive terminal device (sitting age). 12 months = voluntary-opening terminal device (walking age). 3 years = myoelectric option (cognitive readiness).',
        ),

        HeaderBlock('LE Prosthetic Fitting'),
        BulletCardBlock(
          title: 'Lower Limb-Deficient Child',
          themeColor: const Color(0xFF06B6D4),
          backgroundColor: const Color(0xFFECFEFF),
          points: [
            'Prosthesis fitted when child pulls to standing (9-10 months)',
            'Fit jointless above-knee prosthesis to toddler initially',
            'Knee joint added as early as 18 months',
            'Normal heel-to-toe gait not until ~2 years',
            'Prosthetic heel-strike to toe-off not until age 5 or one-legged standing achieved',
            'SACH foot: Most common prosthetic foot for child amputees',
            'Energy-storing feet becoming more popular for active children',
          ],
        ),
        PearlBlock(
          'Board Pearl — SACH Foot',
          'The SACH (solid ankle cushion heel) foot is the most commonly prescribed prosthetic foot for child amputees. Energy-storing feet are becoming more popular for active children.',
        ),

        HeaderBlock('Acquired Amputations in Children'),
        BulletCardBlock(
          title: 'Key Facts',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Trauma is 2x more frequent cause than disease',
            'Childhood tumors (osteosarcoma, Ewing sarcoma ages 12-21) are most frequent disease cause',
            'Single limb loss >90%, with 60% involving lower extremity',
            'Boys affected more than girls (3:2 ratio)',
            'Joint disarticulation PREFERRED over through-bone amputation in children (preserves growth plate)',
            'Distal femoral epiphysis provides 70% of femoral growth',
          ],
        ),
        PearlBlock(
          'Board Pearl — Disarticulation',
          'In children, joint disarticulation is preferred over through-bone amputation because it preserves the epiphyseal growth plate for continued longitudinal growth. The distal femoral epiphysis provides 70% of femoral growth.',
        ),

        HeaderBlock('Terminal Overgrowth'),
        BulletCardBlock(
          title: 'Most Common Complication of Pediatric Amputation',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Terminal bony overgrowth is the MOST COMMON complication',
            'Occurs after through-bone amputation (NOT after disarticulation)',
            'Most frequently affects: Humerus > fibula > tibia > femur',
            'Appositional bone growth can pierce skin causing ulcers',
            'Treatment: Surgical revision',
          ],
        ),
        PearlBlock(
          'Board Pearl — Terminal Overgrowth',
          'Terminal overgrowth occurs most frequently in the humerus, then fibula, tibia, and femur. It does NOT occur after disarticulation (only after through-bone amputation). Treatment is surgical revision.',
        ),

        HeaderBlock('Phantom Sensation'),
        PearlBlock(
          'Board Pearl — Phantom Pain',
          'Children with CONGENITAL limb deficiency do NOT develop phantom pain. Children with ACQUIRED amputations DO experience phantom sensation. Risk increases with age at amputation, especially after age 10.',
        ),

        HeaderBlock('Krukenberg Procedure'),
        PearlBlock(
          'Board Pearl — Krukenberg',
          'The Krukenberg procedure separates the ulna and radius to create a sensate prehensile surface. Rarely used due to cosmetic appearance -- usually only for bilateral hand absence with visual impairment.',
        ),
      ],
    ),

    // ============ TAB 6: Board Summary ============
    TopicTab(
      title: 'Board Summary',
      blocks: [
        HeaderBlock('BPBI Quick Reference'),
        TableBlock(
          title: 'BPBI Assessment Scales Summary',
          columns: ['Scale', 'Purpose', 'Key Detail'],
          rows: [
            ['Active Movement Scale', 'Motor function grading', '0-7 scale, 15 movements; serial assessment'],
            ['Toronto Test Score', 'Recovery prediction', 'Sum of 5 AMS at 3 months; <=3.5 = poor prognosis'],
            ['Narakas Classification', 'Injury severity', 'Groups I-IV; Group IV = Horner = <5% recovery'],
            ['Cookie Test', 'Hand-to-mouth function', 'Elbow flexion + supination; failure by 6-9 mo = surgery'],
            ['Towel Test', 'Shoulder/elbow function', 'Failure at 6 mo = poor recovery indicator'],
            ['Mallet Classification', 'Shoulder function', 'Grades I-V; used after age 3-4 years'],
            ['Seddon Classification', 'Nerve injury type', 'Neurapraxia, axonotmesis, neurotmesis'],
            ['Sunderland Classification', 'Nerve injury grade', 'Grades I-VI (detailed pathological grading)'],
          ],
          headerColor: const Color(0xFFEC4899),
        ),

        HeaderBlock('Limb Deficiency Quick Reference'),
        TableBlock(
          title: 'High-Yield Facts',
          columns: ['Topic', 'Key Fact'],
          rows: [
            ['Most common UE congenital deficiency', 'LEFT terminal transradial (below-elbow)'],
            ['Most common LE congenital deficiency', 'Fibular hemimelia (longitudinal fibular deficiency)'],
            ['PFFD association', '70-80% also have fibular deficiencies'],
            ['ISPO classification', 'Preferred system: Transverse vs longitudinal'],
            ['Prosthetic foot for children', 'SACH foot most common'],
            ['Disarticulation advantage', 'Preserves epiphyseal growth plate'],
            ['Terminal overgrowth order', 'Humerus > fibula > tibia > femur'],
            ['Phantom pain — congenital', 'Does NOT occur'],
            ['Phantom pain — acquired', 'DOES occur; risk increases with age at amputation'],
            ['Erb-Duchenne C5-C6', 'Waiter\'s tip; 70-80% of BPBI; best prognosis'],
            ['Horner syndrome in BPBI', 'T1 avulsion; worst prognosis (<5% spontaneous recovery)'],
            ['Toronto Test cutoff', '<=3.5 at 3 months = poor prognosis'],
            ['Oberlin transfer', 'Ulnar nerve fascicle to biceps motor branch'],
            ['Root avulsion clue', 'Preserved SNAP with clinical sensory loss'],
            ['Surgery timing trend', 'Toward earlier intervention (3-6 months for severe)'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
      ],
    ),
  ],
);
