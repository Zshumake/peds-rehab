import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final orthoticsAtContent = TopicData(
  id: 'orthotics-at',
  title: 'Orthotics & Assistive Technology',
  tabs: [
    // ============ TAB 1: Lower Extremity Orthotics ============
    TopicTab(
      title: 'LE Orthotics',
      blocks: [
        HeaderBlock('Lower Extremity Orthotics'),
        TextBlock(
          'The ankle-foot orthosis (AFO) is the most commonly prescribed orthosis in pediatric rehabilitation. Approximately 50-80% of children with CP use some form of LE orthosis, varying by GMFCS level: ~30% at GMFCS I, 60-70% at GMFCS II, and >80% at GMFCS III+.',
          isIntro: true,
        ),

        HeaderBlock('Ankle-Foot Orthoses (AFOs)'),
        BulletCardBlock(
          title: 'SMO (Supramalleolar Orthosis)',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Extends just above the malleoli with trim lines below malleolar tips',
            'Rigid footplate with medial/lateral walls encompassing hindfoot and midfoot',
            'Controls hindfoot valgus and varus (mediolateral stability at subtalar joint)',
            'Does NOT control sagittal plane motion -- permits dorsiflexion and plantarflexion',
            'Indications: Pes planovalgus (most common), mild hypotonia with foot/ankle instability (Down syndrome), GMFCS I-II with isolated alignment issues',
            'INAPPROPRIATE for equinus, crouch gait, or any sagittal plane deviation',
          ],
        ),
        BulletCardBlock(
          title: 'Posterior Leaf Spring (PLS) AFO',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Thin, narrow posterior upright with inherent flexibility at ankle; rigid footplate',
            'Narrow trim lines behind malleoli allow the posterior strut to flex during push-off',
            'Provides dorsiflexion assistance during SWING phase (prevents foot drop)',
            'Flexibility allows some plantarflexion in terminal stance (permits third rocker/push-off)',
            'Minimal control of knee kinematics during stance; limited mediolateral stability',
            'Indications: Foot drop (dorsiflexor weakness), hemiplegic CP with adequate quad strength, GMFCS I-II',
            'NOT appropriate for crouch gait (allows dorsiflexion -- cannot generate knee extension moment)',
          ],
        ),
        BulletCardBlock(
          title: 'Solid (Rigid) AFO',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Rigid construction with trim lines anterior to malleoli, blocking ALL ankle motion',
            'Can be set in neutral or slight dorsiflexion (~5 deg) for biomechanical tuning',
            'Eliminates all sagittal plane ankle motion, creating rigid lever arm during stance',
            'Set in slight dorsiflexion: shifts GRF vector anteriorly relative to knee, promoting knee EXTENSION',
            'Indications: Moderate-severe spasticity with equinus, poor selective motor control, crouch gait (set in DF), recurvatum gait (set in DF), GMFCS II-IV',
            'Limitation: Eliminates third rocker (heel rise), reducing push-off power and gait velocity',
          ],
        ),
        BulletCardBlock(
          title: 'Hinged AFO',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Rigid frame with mechanical hinge at ankle joint',
            'Plantarflexion stops (PF stops) block PF beyond neutral (90 deg)',
            'ALLOWS controlled dorsiflexion in stance (tibial advancement over foot)',
            'Permits third rocker (heel rise) for more normal gait pattern than solid AFO',
            'REQUIRES adequate quadriceps strength to control tibial advancement rate',
            'Indications: Equinus gait with adequate quad strength, post-BoNT (maintain range + allow motion), GMFCS I-II with dynamic equinus + preserved proximal strength',
            'CONTRAINDICATED in crouch gait -- allows DF, child collapses into crouch if quads weak',
          ],
        ),
        BulletCardBlock(
          title: 'GRAFO (Ground Reaction / Floor Reaction AFO)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Solid AFO set in ~5 deg DF with anterior tibial shell (clamshell or anterior strap)',
            'Anterior component prevents tibia from advancing forward over foot',
            'Directs GRF vector ANTERIOR to knee joint center, creating knee EXTENSION moment',
            'This external extension force compensates for weak quadriceps',
            'PRIMARY indication: CROUCH GAIT (the defining AFO for crouch gait)',
            'Also for weak quads with excessive DF during stance; GMFCS II-III',
            'Contraindications: Knee flexion contracture >10-15 deg (cannot generate extension moment), equinus (wrong biomechanical problem)',
            'Mechanism requires BOTH: (1) ankle in DF tipping tibia forward AND (2) anterior shell preventing tibial collapse forward',
          ],
        ),

        // --- AFO Selection Summary ---
        TableBlock(
          title: 'AFO Selection Summary',
          columns: ['AFO Type', 'Controls', 'Allows', 'Key Indication', 'Contraindication'],
          rows: [
            ['SMO', 'Hindfoot\nvalgus/varus', 'Full ankle\nROM', 'Pronation,\nmild hypotonia', 'Any sagittal\nplane deviation'],
            ['PLS', 'Foot drop\n(swing)', 'PF in stance', 'Isolated\ndorsiflexor\nweakness', 'Crouch gait'],
            ['Solid AFO', 'All ankle\nmotion', 'Nothing', 'Moderate-severe\nequinus; crouch', 'Need for\nthird rocker'],
            ['Hinged AFO', 'PF\n(with PF stop)', 'DF in stance', 'Dynamic equinus\nwith strong quads', 'Crouch gait;\nweak quads'],
            ['GRAFO', 'DF + PF\n(anterior shell)', 'Neither', 'CROUCH GAIT', 'Knee flexion\ncontracture\n>10-15 deg'],
          ],
          headerColor: const Color(0xFFF59E0B),
        ),
        PearlBlock(
          'Board Pearl — AFO Selection by CP Type',
          'Hemiplegic CP with foot drop = PLS or hinged AFO. Hemiplegic CP with true equinus + strong quads = hinged AFO. Diplegic CP with equinus = solid AFO. CROUCH GAIT = GRAFO (the answer is almost always GRAFO). Key principle: match the orthosis to the biomechanical problem. The hinged AFO REQUIRES adequate quad strength.',
        ),

        // --- AFO by Gait Pattern ---
        HeaderBlock('AFO Prescription by CP Gait Type'),
        TableBlock(
          title: 'Winters-Gage-Hicks Classification (Hemiplegic Gait)',
          columns: ['Type', 'Gait Pattern', 'Affected Joints', 'Recommended AFO'],
          rows: [
            ['I', 'Drop foot in\nswing only;\nnormal stance', 'Ankle\n(swing phase)', 'PLS AFO'],
            ['II', 'True equinus\nthroughout\ngait cycle', 'Ankle\n(stance + swing)', 'Hinged AFO\nor Solid AFO'],
            ['III', 'Equinus +\nknee recurvatum\nor stiff knee', 'Ankle + knee', 'Solid AFO'],
            ['IV', 'Equinus + knee\n+ hip + pelvis\ninvolvement', 'Ankle + knee\n+ hip + pelvis', 'Solid AFO +\nconsider multilevel\nsurgery'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        TableBlock(
          title: 'Diplegic Gait Patterns & AFO Selection',
          columns: ['Gait Pattern', 'Description', 'Recommended AFO'],
          rows: [
            ['True equinus\n(Group 1)', 'Toe-walking\nwithout significant\nknee involvement', 'PLS or Hinged AFO\n(with PF stop)'],
            ['Jump gait\n(Group 2)', 'Equinus + knee\nflexion + hip\nflexion; "bouncing"', 'Solid AFO or\nHinged AFO'],
            ['Apparent equinus\n(Group 3)', 'Knee flexion causes\napparent equinus;\nankle may be neutral/DF', 'Solid AFO\nor GRAFO'],
            ['Crouch gait\n(Group 4)', 'Excessive DF with\npersistent knee flexion', 'GRAFO'],
            ['Stiff knee gait', 'Reduced knee flexion\nduring swing phase', 'AFO alone\ninsufficient;\nconsider BoNT\nor rectus femoris\ntransfer'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        PearlBlock(
          'Board Pearl — AFO Tuning',
          'AFO tuning optimizes the AFO-footwear combination to achieve an ideal shank-to-vertical angle during stance. Shank inclined too far forward promotes KNEE FLEXION (crouch). Shank too vertical promotes KNEE HYPEREXTENSION (recurvatum). Heel height in the shoe and AFO ankle angle must be calibrated together.',
        ),
      ],
    ),

    // ============ TAB 2: KAFO/HKAFO/Spinal Orthotics ============
    TopicTab(
      title: 'KAFO & Spinal',
      blocks: [
        HeaderBlock('KAFOs, HKAFOs & RGOs'),

        HeaderBlock('Orthotic Prescription by Spina Bifida Level'),
        TextBlock(
          'Orthotic prescription for children with myelomeningocele is determined by neurological motor level. The functional level is often 1-2 levels below the anatomic level due to weakness, orthopedic deformities, obesity, and high energy cost of walking.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Spina Bifida: Motor Level, Orthosis & Ambulatory Status',
          columns: ['Level', 'Key Muscles', 'Orthosis', 'Ambulatory Status'],
          rows: [
            ['Thoracic', 'No LE motor\nfunction', 'HKAFO,\nparapodium, or\nstanding frame', 'Standing/therapeutic\nonly; wheelchair\nprimary'],
            ['L1-L2\n(High lumbar)', 'Iliopsoas\n(hip flexion)', 'KAFO +\nforearm crutches', 'Household/exercise\nambulation;\nwheelchair for\ncommunity'],
            ['L3', 'Quadriceps\n(knee extension)', 'KAFO +\nforearm crutches', 'Household to\nlimited community\nambulation'],
            ['L4', 'Tibialis anterior\n(ankle DF)', 'AFO (hinged or\nsolid) + crutches\nor canes', 'Community\nambulation\nwith devices'],
            ['L5', 'Peroneals,\npartial glut med\nand hip extensors', 'AFO (PLS\nor SMO)', 'Community\nambulation;\nTrendelenburg\ngait common'],
            ['S1-S2', 'Gastrocnemius-\nsoleus, gluteals', 'SMO or shoe\ninsert, or none', 'Community\nambulation;\nmild gait\ndeviations'],
            ['S2-S3', 'Foot intrinsics,\nbladder/bowel\nsphincters', 'None or SMO', 'Normal or\nnear-normal gait;\nbladder issues\npersist'],
          ],
          headerColor: const Color(0xFFF59E0B),
        ),
        BulletCardBlock(
          title: 'KAFO (Knee-Ankle-Foot Orthosis)',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Controls knee, ankle, and foot in all planes',
            'Indicated for quadriceps weakness and knee instability',
            'Used in spina bifida at L3 functional level',
            'Locked knee joint for stance stability, may unlock for sitting',
            'Energy cost of walking with KAFOs and crutches is 3-5x normal',
          ],
        ),
        BulletCardBlock(
          title: 'HKAFO & RGO (Reciprocating Gait Orthosis)',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'HKAFO: Controls hip, knee, and ankle -- used in thoracic/high lumbar spina bifida',
            'RGO: Bilateral HKAFOs linked by cable mechanism at hips',
            'Hip flexion on one side mechanically drives hip extension on the contralateral side',
            'Enables reciprocal walking pattern in patients with no voluntary hip/knee control',
            'Indication: Thoracic/L1-L2 spina bifida or thoracic SCI in children',
            'Energy expenditure 3-5x normal -- most ultimately transition to wheelchair for community mobility',
            'Best understood as a tool for therapeutic standing and exercise ambulation',
          ],
        ),
        PearlBlock(
          'Board Pearl — Spina Bifida Ambulatory Decline',
          'Ambulatory status in spina bifida commonly declines with age. Many children with L3-L4 levels who walk with KAFOs during childhood transition to wheelchair use as adolescents/adults due to increasing body mass, declining energy, and joint deterioration. The rehab team should proactively plan for this transition rather than viewing it as a failure.',
        ),

        HeaderBlock('Spinal Orthoses'),
        BulletCardBlock(
          title: 'Scoliosis Bracing Fundamentals',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Indication: Adolescent idiopathic scoliosis (AIS) Cobb angle 25-45 deg in skeletally immature patients (Risser 0-2)',
            'Goal: Prevent curve progression to surgical threshold of 50 degrees',
            'Below 25 deg: observation only',
            'Above 45-50 deg: bracing ineffective -- refer for surgical evaluation',
            'BrAIST Trial (Weinstein 2013, NEJM): Bracing success 72% vs 48% with observation',
            'Dose-response: >12-13 hrs/day achieved up to 90% success; <6 hrs/day = no better than observation',
            'First rigorous RCT-level evidence confirming efficacy of bracing for AIS',
          ],
        ),
        TableBlock(
          title: 'Types of Scoliosis Braces',
          columns: ['Orthosis', 'Type', 'Indication', 'Wear Time'],
          rows: [
            ['Boston Brace\n(TLSO)', 'Prefabricated\nwith corrective\npads', 'Lumbar/TL curves\n(apex at or\nbelow T8)', '16-23 hrs/day'],
            ['Wilmington\nBrace (TLSO)', 'Custom-molded\ntotal contact', 'Similar to\nBoston;\nimproved fit', '16-23 hrs/day'],
            ['Milwaukee\nBrace (CTLSO)', 'Pelvic girdle +\nneck ring +\nuprights', 'High thoracic\ncurves (apex\nabove T8)', '23 hrs/day'],
            ['Charleston\nBending Brace', 'Nighttime\novercorrection', 'Single lumbar/TL\ncurves <35 deg', 'Nighttime only\n(8-10 hrs)'],
            ['Providence\nBrace', 'Nighttime\novercorrection\n(CAD/CAM)', 'Similar to\nCharleston', 'Nighttime only'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        BulletCardBlock(
          title: 'Key Bracing Rules',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Curves 25-45 deg with Risser 0-2: BRACE',
            'Curves <25 deg: Observation only',
            'Curves >45-50 deg: Bracing ineffective; surgical evaluation',
            'Neuromuscular scoliosis: Bracing less effective; curves often progress despite bracing; earlier surgical fusion may be needed',
            'Neuromuscular scoliosis prevalence: 2% at GMFCS I up to 75-100% at GMFCS V; >90% in DMD after loss of ambulation; 60-90% in SMA',
            'Milwaukee brace largely replaced by TLSO designs due to poor cosmetic acceptance',
            'Boston brace: Most commonly prescribed scoliosis orthosis in North America',
            'Nighttime-only braces: Attractive compliance advantage but NOT for double curves or curves >35 deg',
          ],
        ),
        PearlBlock(
          'Board Pearl — Scoliosis in DMD',
          'Bracing does NOT change the natural history of scoliosis in DMD. Scoliosis progresses rapidly once the child becomes a full-time wheelchair user (>90% prevalence). Only surgical intervention (posterior spinal fusion when curve >20-25 deg) is effective. Surgery must be performed before FVC declines excessively.',
        ),

        HeaderBlock('Upper Extremity Orthotics'),
        BulletCardBlock(
          title: 'Hand & Wrist Splints',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Resting hand splint: Maintains wrist, fingers, thumb in functional position at rest; prevents contracture',
            'Functional hand splint: Positions hand for optimal grasp and function during activity',
            'Wrist cock-up splint: Maintains wrist extension to improve grip strength and tenodesis grasp',
            'Thumb spica splint: Immobilizes CMC and MCP joints of thumb; used for de Quervain, gamekeeper thumb, or thumb spasticity',
          ],
        ),
      ],
    ),

    // ============ TAB 3: Wheelchair, Seating & AT ============
    TopicTab(
      title: 'Wheelchair & AT',
      blocks: [
        HeaderBlock('Wheelchair & Seating Systems'),

        HeaderBlock('Power Mobility'),
        BulletCardBlock(
          title: 'Early Power Mobility',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Current evidence supports introducing power mobility as early as 12-18 MONTHS of age',
            'Self-initiated movement drives cognitive, social, and language development through experience-dependent neural mechanisms',
            'Restriction of mobility leads to learned helplessness and secondary developmental delays',
            'Candidacy: Any child with mobility limitations who could benefit from independent exploration (CP GMFCS III-V, thoracic/high lumbar SB, SMA)',
            'Devices: Permobil Explorer Mini (12 months+), Wizzybug (14 months-5 years), Go Baby Go modified ride-on cars (low cost)',
            'No minimum cognitive level required -- children with significant intellectual disability can learn joystick/switch operation',
            'Early power mobility does NOT reduce motivation to walk -- complements rather than replaces walking goals',
          ],
        ),
        BulletCardBlock(
          title: 'Power Wheelchair Features',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Multiple drive controls: Joystick, head array, sip-and-puff, switch scanning',
            'Power seat functions: Tilt, recline, elevating leg rests, seat elevation',
            'Cognitive prerequisites: Spatial awareness and problem-solving are the BEST predictors of power wheelchair success',
            'Growth-adjustable frames essential for children',
          ],
        ),
        PearlBlock(
          'Board Pearl — Early Power Mobility',
          'Power mobility is no longer limited to school-age children. Children as young as 12-18 months can learn power mobility. Two myths definitively refuted: (1) There is NO minimum cognitive level required. (2) Early power mobility does NOT reduce motivation to walk. Spatial relations and problem-solving are the best predictors of success.',
        ),

        HeaderBlock('Seating & Positioning'),
        BulletCardBlock(
          title: 'The Seating Hierarchy (Bottom-Up)',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Fundamental principle: Proximal stability enables distal function',
            '1. PELVIS (Foundation): Stabilize FIRST. Correct obliquity, rotation, posterior tilt. Firm contoured seat base with ASIS/PSIS alignment',
            '2. TRUNK (Second): Add lateral trunk supports for trunk lean, anterior support for forward collapse, posterior support as needed',
            '3. HEAD (Last): Headrest, suboccipital supports, forehead straps, circumferential head supports based on degree of impairment',
            '90-90-90 Rule: Starting position = 90 deg at hips, knees, and ankles (modified per individual)',
            'Pressure mapping: Essential for children at risk of pressure injury (insensate skin in SB, SCI)',
          ],
        ),
        MnemonicBlock(
          'Seating Hierarchy',
          '"Fix the pelvis, free the hands." A child with an unstable pelvis uses their upper extremities for postural support rather than functional activities. Pelvis first, then Trunk, then Head -- like building a house: foundation (pelvis), walls (trunk), roof (head).',
        ),
        ComparisonCardBlock(
          title: 'Tilt-in-Space',
          themeColor: const Color(0xFF16A34A),
          backgroundColor: const Color(0xFFF0FDF4),
          icon: Icons.airline_seat_recline_normal,
          description: 'Maintains hip angle constant while tilting entire seat posteriorly.',
          keyPoints: [
            'PREFERRED method for pressure relief',
            'No shear forces generated',
            'Maintains trunk-to-thigh relationship',
            'Better for children with fixed hip flexion contractures',
            'Redistributes pressure without changing postural alignment',
          ],
        ),
        ComparisonCardBlock(
          title: 'Recline',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.airline_seat_flat,
          description: 'Opens the hip angle by reclining the backrest relative to the seat.',
          keyPoints: [
            'Creates SHEAR forces at skin surface',
            'Changes trunk-to-thigh angle',
            'Useful for catheterization and diaper changes',
            'May trigger extensor tone in children with spasticity',
            'Differs from tilt because it changes postural alignment',
          ],
        ),

        HeaderBlock('AAC (Augmentative & Alternative Communication)'),
        TextBlock(
          'Approximately 25-30% of children with CP have communication impairments requiring AAC. An estimated 2 million Americans use some form of AAC. AAC should be introduced EARLY alongside speech therapy, not as a last resort.',
        ),
        TableBlock(
          title: 'AAC Device Continuum',
          columns: ['Category', 'Examples', 'Access', 'Typical Users'],
          rows: [
            ['Low-tech', 'Picture boards,\ncommunication\nbooks, eye-gaze\nboards', 'Direct selection,\npartner-assisted\nscanning', 'All levels;\nbackup systems'],
            ['Mid-tech', 'BigMack (single\nmessage), GoTalk\n(multi-message)', 'Direct selection,\nswitch activation', 'Young children;\nlimited language'],
            ['High-tech', 'Proloquo2Go,\nTouchChat, LAMP,\nTobii Dynavox', 'Touch, eye-gaze,\nswitch scanning,\nhead pointing', 'Complex\ncommunication\nneeds'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        BulletCardBlock(
          title: 'AAC Access Methods',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Direct selection: Touch screen, eye gaze, head pointing',
            'Switch scanning: Single or dual switch with visual/auditory scanning; for limited motor access',
            'Eye-tracking/eye-gaze: Rapidly expanding for severe motor impairment (GMFCS V); direct selection via eye movement',
            'AAC does NOT inhibit speech development; it can FACILITATE verbal language acquisition',
            'AAC should supplement -- not replace -- natural communication attempts',
          ],
        ),

        HeaderBlock('Additional Adaptive Equipment'),
        BulletCardBlock(
          title: 'Gait Trainers & Walkers',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Anterior gait trainer: Child faces forward with support in front -- promotes forward lean',
            'Posterior gait trainer: Support behind the child -- PREFERRED (promotes more upright posture)',
            'Posterior walkers encourage trunk extension and more normalized gait pattern',
            'Anterior walkers encourage forward trunk lean and increased hip flexion',
          ],
        ),
        BulletCardBlock(
          title: 'Standing Frames',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Supine stander: Transferred from supine, tilted to upright -- easiest for poor head/trunk control',
            'Prone stander: Supported on anterior surface -- encourages head/trunk extension',
            'Upright (vertical) stander: For children with better trunk control',
            'Benefits: Improved bone mineral density, improved bowel/bladder function, hip joint development, contracture prevention, psychosocial benefits (eye-level interaction), improved respiratory function',
          ],
        ),
        PearlBlock(
          'Board Pearl — Posterior vs Anterior Walkers',
          'Posterior gait trainers/walkers are PREFERRED over anterior walkers for most children. Posterior support promotes more upright posture, better hip extension, and a more normalized gait pattern. Anterior walkers encourage forward trunk lean.',
        ),
      ],
    ),

    // ============ TAB 4: Outcome Measures ============
    TopicTab(
      title: 'Outcome Measures',
      blocks: [
        HeaderBlock('Pediatric Outcome Measures'),
        TextBlock(
          'Selecting the appropriate outcome measure requires understanding whether the tool is a classification system, screening tool, diagnostic measure, or evaluative measure -- and what it is specifically designed to detect.',
          isIntro: true,
        ),

        HeaderBlock('GMFCS (Classification)'),
        BulletCardBlock(
          title: 'Gross Motor Function Classification System (GMFCS)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            '5-level CLASSIFICATION system for children with CP',
            'Based on self-initiated movement: sitting, walking, wheeled mobility',
            'GMFCS-E&R (Expanded & Revised, 2008): Age bands from birth through 18 years',
            'Level I: Walks without limitations; limitations in advanced motor skills',
            'Level II: Walks with limitations; difficulty with uneven surfaces, stairs',
            'Level III: Walks using handheld mobility device; wheelchair for long distances',
            'Level IV: Self-mobility with limitations; primarily wheelchair; may walk short distances with walker',
            'Level V: Transported in manual wheelchair; dependent for all mobility',
          ],
        ),
        PearlBlock(
          'Board Pearl — GMFCS vs GMFM',
          'GMFCS = CLASSIFICATION tool. It is STABLE over time and does NOT change with intervention. A child classified as GMFCS III at age 2 stays Level III for life. It serves as a powerful PROGNOSTIC tool. GMFM = EVALUATIVE tool. It MEASURES CHANGE over time and tracks progress with therapy or after surgery. Do NOT confuse these -- this distinction is a core board concept.',
        ),

        HeaderBlock('GMFM (Evaluative)'),
        BulletCardBlock(
          title: 'Gross Motor Function Measure (GMFM-88 & GMFM-66)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'GMFM-88: 88 items across 5 dimensions scored 0-3 each',
            'Dimensions: A-Lying/Rolling (17), B-Sitting (20), C-Crawling/Kneeling (14), D-Standing (13), E-Walking/Running/Jumping (24)',
            'GMFM-66: Rasch-analyzed 66-item version -- INTERVAL-level measurement (preferred for research)',
            'EVALUATIVE measure -- specifically designed to detect CHANGE over time',
            'Criterion-referenced: Compared to what a typically developing 5-year-old can do',
            'Gold standard for measuring gross motor change in children with CP',
          ],
        ),
        BulletCardBlock(
          title: 'Motor Growth Curves by GMFCS Level',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'GMFCS I: Plateau GMFM-66 score ~90-100 at age 5-6 years',
            'GMFCS II: Plateau ~70-80 at age 5-7 years',
            'GMFCS III: Plateau ~50-60 at age 5-7 years',
            'GMFCS IV: Plateau ~30-40 at age 4-6 years',
            'GMFCS V: Plateau ~15-25 at age 3-5 years',
            'GMFCS IV-V may show DECLINE after ages 7-8 as body outgrows motor capacity',
            'This decline is an expected trajectory, not a treatment failure',
          ],
        ),

        HeaderBlock('Functional Measures'),
        BulletCardBlock(
          title: 'WeeFIM (Functional Independence Measure for Children)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            '18 items scored on 7-point scale (1 = total assist to 7 = complete independence)',
            'Ages 6 months to 7 years (developmental age); can be used in older children with disabilities',
            '3 domains: Self-care (8 items), Mobility (5 items), Cognition (5 items)',
            'Score range: 18 (total dependence) to 126 (complete independence)',
            'Measures BURDEN OF CARE -- how much help does the child need?',
            'A child may be CAPABLE of a task but still require assistance (WeeFIM measures what actually happens)',
          ],
        ),
        BulletCardBlock(
          title: 'PEDI (Pediatric Evaluation of Disability Inventory)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Ages 6 months to 7.5 years (developmental age)',
            '3 domains: Self-care (73 items), Mobility (59 items), Social function (65 items)',
            'TWO scales per domain:',
            '  - Functional Skills = CAPABILITY (what the child CAN do; scored 0/1 dichotomously)',
            '  - Caregiver Assistance = PERFORMANCE (how much help the child actually needs; 6-point scale)',
            'Third scale: Amount of equipment/environmental modification required',
            'Uniquely measures BOTH capability and performance within the same instrument',
            'Aligns with ICF distinction between capacity and performance',
          ],
        ),
        BulletCardBlock(
          title: 'PEDI-CAT (Computer Adaptive Test)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Computer adaptive version with major advances over original PEDI',
            'Extended age range: Birth to 20 years (vs 6 months-7.5 years)',
            '4 domains: Daily Activities, Mobility, Social/Cognitive, RESPONSIBILITY (unique addition)',
            'Responsibility domain: Measures child\'s role in managing own life tasks (self-determination, transition readiness)',
            'Adaptive algorithm selects ~15-20 items per domain (vs 197 total items in original PEDI)',
            'Item response theory scoring: Scaled scores 20-80',
          ],
        ),

        HeaderBlock('Developmental Screening & Assessment'),
        BulletCardBlock(
          title: 'Bayley-4 (Bayley Scales of Infant Development)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'GOLD STANDARD DIAGNOSTIC assessment for infant/toddler development',
            'Ages 1 to 42 months',
            '5 scales: Cognitive, Language (Receptive + Expressive), Motor (Fine + Gross), Social-Emotional, Adaptive Behavior',
            'Norm-referenced: Composite mean = 100, SD = 15',
            'Score <70 (>2 SD below mean): Significant developmental delay',
            'Score 70-84 (1-2 SD below mean): Mild delay or at risk',
            'DIAGNOSTIC tool -- NOT a screening tool',
            'Used extensively in NICU follow-up programs and EI research',
          ],
        ),
        BulletCardBlock(
          title: 'Denver II',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'SCREENING tool -- NOT diagnostic (identifies who needs further evaluation)',
            'Ages birth to 6 years; clinician-administered',
            '4 domains: Personal-Social, Fine Motor-Adaptive, Language, Gross Motor',
            '125 items on single-page form with age-based norms',
            'Results: Normal, Suspect, Untestable',
            'High sensitivity but limited specificity (significant false-positive rate)',
            'A "suspect" result must be followed by diagnostic evaluation (Bayley-4)',
          ],
        ),
        BulletCardBlock(
          title: 'ASQ-3 (Ages & Stages Questionnaire)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'PARENT-COMPLETED screening questionnaire (practical for population-level screening)',
            'Ages 1 to 66 months; 21 age-specific questionnaires',
            '5 domains: Communication, Gross Motor, Fine Motor, Problem-Solving, Personal-Social',
            '30 items per questionnaire (6 per domain); scored Yes (10), Sometimes (5), Not Yet (0)',
            'Scores below cutoff trigger referral for further evaluation',
            'ASQ:SE-2 companion screens specifically for social-emotional/behavioral concerns',
          ],
        ),

        HeaderBlock('Other Important Measures'),
        BulletCardBlock(
          title: 'GAS, COPM & Spasticity Scales',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'GAS (Goal Attainment Scaling): Individualized outcome measure with 5 levels (-2 to +2); T-score mean 50, SD 10; valuable for BoNT outcome studies',
            'COPM (Canadian Occupational Performance Measure): Client-centered interview; rates importance, performance, and satisfaction (1-10); change of 2+ points = clinically significant',
            'Modified Ashworth Scale: Most widely used for spasticity; does NOT distinguish spasticity from contracture',
            'Modified Tardieu Scale: Velocity-dependent; R2-R1 = dynamic component; SUPERIOR for guiding treatment',
          ],
        ),
        TableBlock(
          title: 'Outcome Measures Summary',
          columns: ['Measure', 'Type', 'Age Range', 'Key Feature'],
          rows: [
            ['GMFCS', 'Classification', '0-18 years', 'Stable; predictive;\nNOT evaluative'],
            ['GMFM-66', 'Evaluative', 'CP (any age)', 'Interval-level;\ndetects change'],
            ['WeeFIM', 'Evaluative', '6 mo-7 yr\n(dev age)', '18 items; 7-pt scale;\nburden of care'],
            ['PEDI', 'Evaluative', '6 mo-7.5 yr\n(dev age)', 'Capability AND\nperformance'],
            ['PEDI-CAT', 'Evaluative', 'Birth-20 yr', 'CAT algorithm;\n4 domains incl.\nResponsibility'],
            ['Bayley-4', 'Diagnostic', '1-42 months', 'Norm-referenced;\n5 scales; NOT a\nscreener'],
            ['Denver II', 'Screening', 'Birth-6 yr', 'Clinician-admin;\n4 domains'],
            ['ASQ-3', 'Screening', '1-66 months', 'Parent-completed;\n5 domains'],
            ['MAS', 'Evaluative', 'Any age', 'Does NOT distinguish\nspasticity from\ncontracture'],
            ['Tardieu', 'Evaluative', 'Any age', 'R2-R1 guides\ntreatment'],
            ['GAS', 'Evaluative', 'Any age', 'Individualized goals;\nT-score mean 50'],
            ['COPM', 'Evaluative', 'Any age', 'Client-centered;\nperformance +\nsatisfaction'],
          ],
          headerColor: const Color(0xFF059669),
        ),
        PearlBlock(
          'Board Pearl — Classification vs Evaluative vs Screening vs Diagnostic',
          'GMFCS = CLASSIFICATION (stable, predictive). GMFM = EVALUATIVE (detects change). Denver II and ASQ-3 = SCREENING (identify who needs further evaluation). Bayley-4 = DIAGNOSTIC (confirms and quantifies delay). WeeFIM = burden of care. PEDI = capability AND performance. PEDI-CAT adds Responsibility domain. Tardieu is superior to Ashworth for treatment planning.',
        ),
      ],
    ),
  ],
);
