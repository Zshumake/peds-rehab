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

        HeaderBlock('Ankle-Foot Orthoses (AFOs)'),
        BulletCardBlock(
          title: 'SMO (Supramalleolar Orthosis)',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Controls subtalar motion (pronation/supination)',
            'Ends below the malleoli — does NOT control ankle dorsiflexion/plantar flexion',
            'Used for flexible flat foot and mild ankle instability',
          ],
        ),
        BulletCardBlock(
          title: 'Posterior Leaf Spring (PLS) AFO',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Flexible design — allows dorsiflexion, resists plantar flexion',
            'Narrow posterior trim line provides flexibility',
            'Primary indication: Foot drop (peroneal nerve palsy)',
            'NOT appropriate for significant spasticity or mediolateral instability',
          ],
        ),
        BulletCardBlock(
          title: 'Solid AFO',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Rigid design — prevents ALL ankle motion (dorsiflexion and plantar flexion)',
            'Wide posterior trim line provides maximum stability',
            'Indicated for significant spasticity or severe ankle instability',
            'Limits ability to advance tibia over foot during stance phase',
          ],
        ),
        BulletCardBlock(
          title: 'Hinged AFO',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Allows controlled dorsiflexion, blocks plantar flexion',
            'Mechanical ankle hinge permits sagittal plane motion',
            'Primary indication: Hemiplegic cerebral palsy',
            'Allows more normal gait pattern than solid AFO',
          ],
        ),
        BulletCardBlock(
          title: 'GRAFO (Ground Reaction / Floor Reaction AFO)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Promotes knee extension through ground reaction force vector',
            'Anterior shell or strap prevents tibial advancement',
            'Primary indication: Crouch gait (excessive knee flexion in stance)',
            'Used in diplegic CP with crouch gait pattern',
          ],
        ),
        PearlBlock(
          'Board Pearl — AFO Selection by CP Type',
          'Hemiplegic CP = hinged AFO (allows dorsiflexion). Diplegic CP = solid AFOs or GRAFOs. Crouch gait = GRAFO (promotes knee extension via ground reaction force). The key principle: match the orthosis to the biomechanical problem.',
        ),

        HeaderBlock('KAFOs, HKAFOs & RGOs'),
        BulletCardBlock(
          title: 'KAFO (Knee-Ankle-Foot Orthosis)',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Controls knee, ankle, and foot in all planes',
            'Indicated for quadriceps weakness and knee instability',
            'Used in spina bifida at L3 functional level',
            'Locked knee joint for stance stability, may unlock for sitting',
          ],
        ),
        BulletCardBlock(
          title: 'HKAFO & RGO',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'HKAFO: Controls hip, knee, and ankle — used in high-level spina bifida',
            'RGO (Reciprocating Gait Orthosis): Allows reciprocal gait pattern in paraplegia',
            'RGO uses a cable system linking hip joints so extension of one hip assists flexion of the other',
            'High energy cost of ambulation — many patients transition to wheelchair over time',
          ],
        ),

        HeaderBlock('Orthotic Prescription by Spina Bifida Level'),
        TableBlock(
          title: 'Spina Bifida: Motor Level & Orthotic Needs',
          columns: ['Motor Level', 'Key Muscles', 'Orthosis', 'Mobility'],
          rows: [
            ['T12-L2', 'Hip flexors only', 'HKAFO / RGO', 'Wheelchair primary,\ntherapeutic ambulation'],
            ['L3', 'Quadriceps\n(knee extension)', 'KAFO', 'Household ambulation,\nwheelchair for distance'],
            ['L4-L5', 'Tibialis anterior,\nmedial hamstrings', 'AFO', 'Community ambulation'],
            ['S1+', 'Gastrocnemius,\ngluteus medius', 'Shoe insert\nor none', 'Full community\nambulation'],
          ],
          headerColor: const Color(0xFFF59E0B),
        ),
        PearlBlock(
          'Board Pearl — Spina Bifida Orthotic Levels',
          'The key muscle for each level determines orthotic needs: L3 = quadriceps present = KAFO, L4 = tibialis anterior present = AFO, S1 = gastrocnemius present = shoe insert or none. Higher lesions (T12-L2) require HKAFO/RGO but most use wheelchair as primary mobility.',
        ),
      ],
    ),

    // ============ TAB 2: UE & Spinal Orthotics ============
    TopicTab(
      title: 'UE & Spinal',
      blocks: [
        HeaderBlock('Upper Extremity Orthotics'),

        BulletCardBlock(
          title: 'Hand & Wrist Splints',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Resting hand splint: Maintains wrist, fingers, and thumb in functional position at rest; prevents contracture',
            'Functional hand splint: Positions hand for optimal grasp and function during activity',
            'Wrist cock-up splint: Maintains wrist in extension to improve grip strength and tenodesis grasp',
            'Thumb spica splint: Immobilizes CMC and MCP joints of thumb; used for de Quervain, gamekeeper thumb, or thumb spasticity',
          ],
        ),

        HeaderBlock('Spinal Orthoses'),
        BulletCardBlock(
          title: 'Milwaukee Brace (CTLSO)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Cervical-Thoracic-Lumbar-Sacral Orthosis',
            'Extends from pelvis to neck ring with anterior throat mold and occipital pads',
            'Indicated for HIGH thoracic curves (apex above T8)',
            'Poorly tolerated by adolescents due to visibility and neck ring',
          ],
        ),
        BulletCardBlock(
          title: 'TLSO (Thoracolumbar-Sacral Orthosis)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Underarm brace — more cosmetically acceptable than Milwaukee',
            'Indicated for thoracolumbar and lumbar curves (apex below T8)',
            'Boston brace: Most common prefabricated underarm TLSO, uses corrective pads',
            'Wilmington brace: Custom-molded TLSO from total contact casting',
          ],
        ),
        BulletCardBlock(
          title: 'Brace Wear Guidelines for Scoliosis',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Recommended wear: 16-23 hours per day during growth',
            'Effectiveness depends on compliance — more hours = better outcomes',
            'Goal is to prevent curve progression, not correct existing curvature',
            'Bracing continued until skeletal maturity (Risser 4-5)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Scoliosis in DMD',
          'Bracing does NOT change the natural history of scoliosis in Duchenne muscular dystrophy. Scoliosis in DMD progresses rapidly once the child becomes a full-time wheelchair user. Only surgical intervention (spinal fusion) is effective in managing progressive neuromuscular scoliosis in DMD.',
        ),
      ],
    ),

    // ============ TAB 3: Wheelchair & Seating ============
    TopicTab(
      title: 'Wheelchair & Seating',
      blocks: [
        HeaderBlock('Wheelchair & Seating Systems'),

        HeaderBlock('Manual vs Power Wheelchairs'),
        BulletCardBlock(
          title: 'Manual Wheelchairs',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Appropriate when child has adequate upper extremity strength and endurance',
            'Ultralight frames reduce energy expenditure',
            'Growth-adjustable frames are essential for children',
            'Rigid frame more efficient than folding frame for active users',
          ],
        ),
        BulletCardBlock(
          title: 'Power Wheelchairs',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Traditionally introduced at age 5-6 years',
            'Emerging evidence: Children as young as 12-18 months can learn power mobility with innovative technology',
            'Cognitive prerequisites: Spatial awareness and problem-solving skills are essential predictors of success',
            'Multiple drive controls available: Joystick, head array, sip-and-puff, switch scanning',
            'Power seat functions: Tilt, recline, elevating leg rests, seat elevation',
          ],
        ),
        PearlBlock(
          'Board Pearl — Early Power Mobility',
          'Power mobility is no longer limited to school-age children. Research shows children as young as 12-18 months can learn to use power mobility devices. Early independent mobility promotes cognitive, language, and social development. Cognitive skills of spatial relation and problem-solving are the best predictors of power wheelchair success.',
        ),

        HeaderBlock('Seating & Positioning'),
        BulletCardBlock(
          title: 'Tilt vs Recline',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Tilt: Maintains hip angle while changing orientation in space — entire seat tilts posteriorly',
            'Recline: Opens the hip angle — backrest reclines relative to seat',
            'Tilt is PREFERRED for pressure relief because it redistributes pressure without creating shear forces',
            'Recline creates shear forces at the skin surface as the back slides against the backrest',
            'Combination tilt-in-space with recline provides maximum pressure relief and positioning options',
          ],
        ),
        ComparisonCardBlock(
          title: 'Tilt-in-Space',
          themeColor: const Color(0xFF16A34A),
          backgroundColor: const Color(0xFFF0FDF4),
          icon: Icons.airline_seat_recline_normal,
          description: 'Maintains hip angle constant while tilting entire seat posteriorly.',
          keyPoints: [
            'Preferred method for pressure relief',
            'No shear forces generated',
            'Maintains trunk-to-thigh relationship',
            'Better for children with fixed hip flexion contractures',
          ],
        ),
        ComparisonCardBlock(
          title: 'Recline',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.airline_seat_flat,
          description: 'Opens the hip angle by reclining the backrest relative to the seat.',
          keyPoints: [
            'Creates shear forces at skin surface',
            'Changes trunk-to-thigh angle',
            'Useful for catheterization and diaper changes',
            'May trigger extensor tone in children with spasticity',
          ],
        ),

        HeaderBlock('Positioning Principles'),
        BulletCardBlock(
          title: 'Seating Hierarchy',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Build from the base up: Pelvic stability FIRST (foundation of all seating)',
            '90-90-90 position: 90 degrees at hips, knees, and ankles as starting point',
            'Then add trunk support (lateral trunk supports for scoliosis)',
            'Then head support (headrest for poor head control)',
            'Pressure mapping used to guide wheelchair cushion selection',
            'Adaptive strollers available for young children who need positioning support',
          ],
        ),
        MnemonicBlock(
          'Seating Hierarchy',
          'Pelvis first, then Trunk, then Head — build from the base up. Think of it like building a house: foundation (pelvis), walls (trunk), roof (head). A stable pelvis is the foundation for all positioning.',
        ),
      ],
    ),

    // ============ TAB 4: Adaptive Equipment ============
    TopicTab(
      title: 'Adaptive Equipment',
      blocks: [
        HeaderBlock('Adaptive Equipment & Assistive Technology'),

        HeaderBlock('Gait Trainers'),
        BulletCardBlock(
          title: 'Anterior vs Posterior Gait Trainers',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Anterior gait trainer: Child faces forward with support in front — promotes forward lean',
            'Posterior gait trainer: Support is behind the child — PREFERRED because it promotes more upright posture',
            'Posterior walkers encourage trunk extension and more normalized gait pattern',
            'Various support options: Trunk, pelvic, forearm, and hand supports available',
          ],
        ),
        PearlBlock(
          'Board Pearl — Posterior vs Anterior Walkers',
          'Posterior gait trainers/walkers are preferred over anterior walkers for most children. Posterior support promotes a more upright posture, better hip extension, and a more normalized gait pattern. Anterior walkers encourage forward trunk lean and increased hip flexion.',
        ),

        HeaderBlock('Standing Frames'),
        BulletCardBlock(
          title: 'Types & Benefits of Standing Programs',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Supine stander: Child transferred from supine, tilted to upright — easiest for children with poor head/trunk control',
            'Prone stander: Child supported on anterior surface — encourages head/trunk extension',
            'Upright (vertical) stander: For children with better trunk control',
            'Benefits of standing programs:',
            '  - Improved bone mineral density (weight-bearing stimulus)',
            '  - Improved bowel and bladder function',
            '  - Hip joint development and contracture prevention',
            '  - Psychological and social benefits (eye-level interaction with peers)',
            '  - Improved respiratory function and alertness',
          ],
        ),

        HeaderBlock('Communication & Technology'),
        BulletCardBlock(
          title: 'AAC (Augmentative & Alternative Communication)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Low-tech: Picture boards, communication books, eye gaze boards',
            'Mid-tech: Single-message or sequential-message voice output devices',
            'High-tech: Dynamic display speech-generating devices, tablet-based apps',
            'Access methods: Direct selection, switch scanning, eye gaze tracking, head pointing',
            'AAC should supplement — not replace — natural communication attempts',
          ],
        ),
        BulletCardBlock(
          title: 'Environmental Controls',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Allow independent control of lights, TV, phone, doors, temperature',
            'Switch access, voice activation, or smartphone/tablet control',
            'Promote independence and self-determination for children with severe motor impairments',
          ],
        ),

        HeaderBlock('Daily Living Equipment'),
        BulletCardBlock(
          title: 'Adaptive Equipment for Daily Activities',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Adaptive seating for school: Classroom chairs with positioning supports, adjustable desks, wedge cushions',
            'Adaptive feeding equipment: Built-up handles, weighted utensils, plate guards, nosey cups, adaptive bottles',
            'Bath and toileting: Bath chairs, shower commodes, transfer benches, raised toilet seats, support rails',
            'Car seat considerations: Special needs car seats for children who cannot maintain upright posture',
            '  - Must meet FMVSS 213 crash testing standards',
            '  - Options include integrated harness systems and modified positioning',
          ],
        ),
      ],
    ),
  ],
);
