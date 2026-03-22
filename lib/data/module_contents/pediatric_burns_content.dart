import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final pediatricBurnsContent = TopicData(
  id: 'pediatric-burns',
  title: 'Pediatric Burns',
  tabs: [
    // ============ TAB 1: Epidemiology & Classification ============
    TopicTab(
      title: 'Epidemiology & Classification',
      blocks: [
        HeaderBlock('Epidemiology'),

        BulletCardBlock(
          title: 'Incidence & Demographics',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Burns are the #1 cause of nonmotor vehicle death in children ages 1-4',
            'Burns are the #2 cause of death in children ages 4-14',
            'Scald burns are the most common pediatric burn type (vs flame burns in adults)',
            'Scald burns are associated with child abuse/neglect — particularly immersion scalds',
            'Children <4 years old have a higher risk of death independent of burn size',
            'Male:female ratio is 2:1, increasing to 4:1 in adolescence',
          ],
        ),
        PearlBlock(
          'Board Pearl — Scald Burns & Abuse',
          'Scald burns are the most common type of burn in pediatrics (unlike adults where flame burns predominate). Always consider nonaccidental trauma with immersion scald patterns — stocking/glove distribution with sharp demarcation lines and uniform burn depth suggest intentional injury.',
        ),

        BulletCardBlock(
          title: 'Nonaccidental Burns & Mortality',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            '16% of all pediatric burn injuries are nonaccidental',
            '50% of nonaccidental burns result from abuse (the other 50% from neglect)',
            'Inhalation injury is an important predictor of mortality in burns',
            'Wall outlet electrical injuries account for <15% of pediatric electrical injuries',
          ],
        ),
        MnemonicBlock(
          'Suspect Abuse When Burns Show...',
          'Sharp Lines (stocking/glove immersion pattern), Symmetric distribution, Spared flexural creases (child held in flexed position during immersion), and Story inconsistent with injury pattern. Think "4 S\'s" for suspicious burn patterns.',
        ),

        HeaderBlock('Burn Classification by Depth'),

        BulletCardBlock(
          title: 'Superficial (Formerly 1st Degree)',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Involves epidermis only',
            'Appearance: Dry, warm, erythematous',
            'Sensation: Painful',
            'Healing: Heals without treatment in 3-7 days',
            'Example: Sunburn',
            'No scarring expected',
          ],
        ),
        BulletCardBlock(
          title: 'Partial Thickness (Formerly 2nd Degree)',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Involves epidermis + variable depth of dermis',
            'Superficial partial thickness: Red, painful, blistered, moist — heals in 2-3 weeks',
            'Deep partial thickness: Dry, white or mottled, hyposensitive — may require grafting',
            'Deep partial thickness burns may convert to full thickness if infected or poorly managed',
          ],
        ),
        BulletCardBlock(
          title: 'Full Thickness (Formerly 3rd Degree)',
          themeColor: const Color(0xFFB91C1C),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Involves ALL layers of skin (epidermis + full dermis)',
            'Appearance: White, avascular, dry, leathery (eschar)',
            'Sensation: Anesthetic (nerve endings destroyed)',
            'Will NOT heal without skin grafting',
            'No blanching with pressure',
            'Hair follicles destroyed — hair pulls out easily',
          ],
        ),
        PearlBlock(
          'Board Pearl — Burn Depth Recognition',
          'The key distinguishing features: Superficial = painful and red. Superficial partial thickness = painful with blisters. Deep partial thickness = decreased sensation and white appearance. Full thickness = anesthetic, leathery, and avascular. Pain DECREASES as burn depth INCREASES because nerve endings are progressively destroyed.',
        ),

        TableBlock(
          title: 'Burn Depth Comparison',
          columns: ['Feature', 'Superficial', 'Partial Thickness', 'Full Thickness'],
          rows: [
            ['Depth', 'Epidermis only', 'Epidermis +\nvariable dermis', 'All skin layers'],
            ['Appearance', 'Dry, red', 'Blistered (superficial)\nWhite (deep)', 'White, leathery,\navascular'],
            ['Sensation', 'Painful', 'Painful (superficial)\nHyposensitive (deep)', 'Anesthetic'],
            ['Blanching', 'Yes', 'Yes (superficial)\nNo (deep)', 'No'],
            ['Healing', 'Spontaneous\n3-7 days', '2-3 weeks (superficial)\nMay need grafting (deep)', 'Requires\nskin grafting'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
      ],
    ),

    // ============ TAB 2: Burn Sizing ============
    TopicTab(
      title: 'Burn Sizing',
      blocks: [
        HeaderBlock('Pediatric Burn Size Estimation'),

        TextBlock(
          'Accurate burn size estimation is critical for fluid resuscitation and determining need for hospitalization. Pediatric body proportions differ significantly from adults, making adult estimation tools inaccurate for children.',
          isIntro: true,
        ),

        BulletCardBlock(
          title: 'Lund & Browder Chart',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'The MOST ACCURATE method for pediatric burn sizing',
            'Uses age-adjusted body surface area percentages',
            'Accounts for the disproportionately larger head and smaller legs in young children',
            'Should be used preferentially over Rule of 9s in all pediatric patients',
          ],
        ),
        PearlBlock(
          'Board Pearl — Lund & Browder',
          'The Lund & Browder chart is the gold standard for pediatric burn sizing because it adjusts body surface area percentages by age. The Rule of 9s overestimates leg burns and underestimates head burns in young children.',
        ),

        HeaderBlock('Modified Rule of 9s for Children'),
        BulletCardBlock(
          title: 'Key Modifications',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Child head = 18% (vs 9% in adults) — double the adult percentage',
            'Each child leg = 14% (vs 18% in adults) — reduced from adult percentage',
            'Trunk percentages remain the same as adults',
            'Modification rule: 9% is taken from the legs and added to the head for a child <1 year old',
            '1% is returned from the head to the legs each year until age 9',
            'By age 9, proportions approximate adult Rule of 9s',
          ],
        ),
        MnemonicBlock(
          'Rule of 9s Pediatric Modification',
          'At birth, move 9% from legs to head (head = 18%, each leg = 14%). Then "give back" 1% per year from head to legs. By age 9, the child has adult proportions (head = 9%, each leg = 18%).',
        ),

        HeaderBlock('Burn Size Estimation by Age'),
        TableBlock(
          title: 'Body Surface Area Percentages by Age (Lund & Browder)',
          columns: ['Body Area', 'Birth-1yr', '1-4yr', '5-9yr', '10-14yr', '15yr'],
          rows: [
            ['Head', '19%', '17%', '13%', '11%', '9%'],
            ['Neck', '2%', '2%', '2%', '2%', '2%'],
            ['Anterior Trunk', '13%', '13%', '13%', '13%', '13%'],
            ['Posterior Trunk', '13%', '13%', '13%', '13%', '13%'],
            ['Each Buttock', '2.5%', '2.5%', '2.5%', '2.5%', '2.5%'],
            ['Genitalia', '1%', '1%', '1%', '1%', '1%'],
            ['Each Upper Arm', '4%', '4%', '4%', '4%', '4%'],
            ['Each Lower Arm', '3%', '3%', '3%', '3%', '3%'],
            ['Each Hand', '2.5%', '2.5%', '2.5%', '2.5%', '2.5%'],
            ['Each Thigh', '5.5%', '6.5%', '8%', '8.5%', '9%'],
            ['Each Lower Leg', '5%', '5%', '5.5%', '6%', '6.5%'],
            ['Each Foot', '3.5%', '3.5%', '3.5%', '3.5%', '3.5%'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
        PearlBlock(
          'Board Pearl — Age-Based Proportions',
          'Notice that the head percentage decreases with age (19% at birth to 9% at age 15) while the thigh percentage increases (5.5% at birth to 9% at age 15). This reflects the changing body proportions as children grow. The neck, trunk, buttocks, genitalia, arms, hands, and feet remain relatively constant.',
        ),

        HeaderBlock('Hospitalization Criteria'),
        ScaleBlock(
          scaleName: '5-10-20 Hospitalization Rule',
          description: 'Burn size thresholds requiring inpatient admission',
          columns: ['Threshold', 'Criteria'],
          rows: [
            ['>5% TBSA', 'Full thickness burns'],
            ['>10% TBSA', 'Partial or full thickness in children'],
            ['>20% TBSA', 'Any burn regardless of age'],
          ],
          boardPearl: 'Remember 5-10-20: >5% full thickness, >10% TBSA in children, >20% TBSA overall all require hospitalization.',
        ),
        MnemonicBlock(
          '5-10-20 Rule',
          '>5% full thickness, >10% TBSA in children, >20% TBSA overall — all require hospitalization. Think "5 Full, 10 Child, 20 All."',
        ),

        BulletCardBlock(
          title: 'Other Hospitalization Indications',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Burns to eyes, ears, face, hands, feet, or genitalia',
            'ALL inhalation injuries — regardless of burn size',
            'ALL electrical burns — regardless of burn size',
            'Burns with concomitant trauma (fractures, TBI, etc.)',
            'Burns complicated by other medical problems (diabetes, immunosuppression)',
            'Suspected child abuse or neglect',
          ],
        ),
        PearlBlock(
          'Board Pearl — Special Area Burns',
          'Burns to the face, hands, feet, genitalia, and major joints always require hospitalization regardless of size. These areas are at high risk for functional impairment and contracture formation. All electrical and inhalation injuries are also automatic admits.',
        ),
      ],
    ),

    // ============ TAB 3: Positioning & Splinting ============
    TopicTab(
      title: 'Positioning & Splinting',
      blocks: [
        HeaderBlock('Anti-Deformity Positioning'),

        TextBlock(
          'The fundamental principle of burn rehabilitation positioning: the position of COMFORT promotes CONTRACTURE. Anti-deformity positioning places burned areas in the opposite position of the expected contracture.',
          isIntro: true,
        ),
        MnemonicBlock(
          'COMFORT = CONTRACTURE',
          'The position of comfort is the position of contracture. Patients naturally assume flexed, adducted positions that feel comfortable but will lead to contracture if maintained. Anti-deformity positioning is the OPPOSITE of the comfortable position. Always position AGAINST the anticipated contracture.',
        ),

        HeaderBlock('Positioning by Body Area'),
        TableBlock(
          title: 'Contracture Prevention Positioning (Table 10-18)',
          columns: ['Body Area', 'Contracture\nPredisposition', 'Anti-Contracture\nPosition'],
          rows: [
            ['Anterior Neck', 'Flexion', 'Extension;\nNO pillows'],
            ['Anterior Axilla', 'Shoulder\nadduction', '90° abduction;\nneutral rotation'],
            ['Posterior Axilla', 'Shoulder\nextension', 'Shoulder flexion\n(arms overhead)'],
            ['Elbow/Forearm', 'Flexion &\npronation', 'Extension;\nsupinated'],
            ['Wrists', 'Flexion', '15-20° extension'],
            ['MCPs', 'Hyperextension', '70-90° flexion'],
            ['IPs', 'Flexion', 'Full extension'],
            ['Palmar Burn', 'Finger flexion;\nthumb opposition', 'All joints extension;\nthumb radially\nabducted'],
            ['Chest/Trunk', 'Lateral &\nanterior flexion', 'Straight;\nno lateral flexion'],
            ['Hips', 'Flexion,\nadduction,\nexternal rotation', 'Extension;\n10° abduction;\nneutral rotation'],
            ['Knees', 'Flexion', 'Extension'],
            ['Ankles', 'Plantar flexion', '90° (neutral)\ndorsiflexion'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
        PearlBlock(
          'Board Pearl — Neck Positioning',
          'For anterior neck burns, the neck must be maintained in EXTENSION with NO pillows. This is one of the most commonly tested positioning questions. Allowing neck flexion (the position of comfort) leads to severe flexion contracture that limits cervical range of motion.',
        ),
        PearlBlock(
          'Board Pearl — Axillary Burns',
          'Anterior axillary burns tend toward shoulder adduction — position in 90° abduction. Posterior axillary burns tend toward shoulder extension — position in shoulder flexion. The axilla is the most commonly involved area for burn contractures.',
        ),
        PearlBlock(
          'Board Pearl — Hand Positioning',
          'The "intrinsic plus" or anti-deformity position for the burned hand: MCPs flexed 70-90°, IPs extended, thumb radially abducted. This is OPPOSITE the claw hand deformity (MCP hyperextension, IP flexion) that develops without proper positioning.',
        ),

        HeaderBlock('Splinting for Burns'),
        TableBlock(
          title: 'Hand & Foot Burn Splinting (Table 10-19)',
          columns: ['Burn Location', 'Splint Position'],
          rows: [
            ['Dorsal Hand', 'MCP flexion 70-90°;\nIP extension;\nthumb radial abduction'],
            ['Volar (Palmar)\nHand', 'MCP & IP full\nextension;\nfingers abducted;\nthumb palmar abduction'],
            ['Dorsal Foot', 'Ankle & toes in\nplantar flexion'],
            ['Sole of Foot', 'Ankle dorsiflexion;\ntoes neutral'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
        PearlBlock(
          'Board Pearl — Dorsal vs Volar Hand Burns',
          'Dorsal hand burns: Splint in MCP flexion and IP extension (intrinsic plus position) because dorsal burns cause MCP hyperextension contracture. Volar hand burns: Splint in full extension with fingers abducted because palmar burns cause finger flexion contracture. The splint position is always OPPOSITE the expected contracture.',
        ),
        MnemonicBlock(
          'Hand Burn Splinting',
          'Dorsal burn = "intrinsic plus" (MCPs flexed, IPs extended). Volar burn = "flat hand" (everything extended, fingers spread). The splint OPPOSES the contracture: dorsal skin shortening pulls MCPs into hyperextension, so splint in flexion. Palmar skin shortening pulls fingers into flexion, so splint in extension.',
        ),
      ],
    ),

    // ============ TAB 4: Rehabilitation ============
    TopicTab(
      title: 'Rehabilitation',
      blocks: [
        HeaderBlock('Burn Rehabilitation Principles'),

        TextBlock(
          'Rehabilitation of the pediatric burn patient begins immediately and continues throughout recovery. Early intervention is critical to prevent contracture, maintain function, and promote independence.',
          isIntro: true,
        ),

        HeaderBlock('Splinting'),
        BulletCardBlock(
          title: 'Splinting Principles',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Initiated at the first indication of developing skin tightening',
            'Position of comfort = position of contracture — splint in anti-deformity position',
            'Small children do NOT tend to lose strength or mobility in splints if removed for regular exercise',
            'Splints should be checked and adjusted frequently as edema changes',
            'Splinting is continued until the scar has matured',
          ],
        ),
        PearlBlock(
          'Board Pearl — Pediatric Splinting',
          'Unlike adults, small children generally do not lose strength or mobility when splinted, as long as the splints are removed regularly for exercise. This makes aggressive splinting programs well-tolerated in the pediatric population.',
        ),

        HeaderBlock('Range of Motion'),
        BulletCardBlock(
          title: 'ROM Progression',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Begin once the patient is medically stable',
            'Progress from gentle repetitive ROM to more aggressive stretching as tolerated',
            'Active and active-assisted ROM is PREFERABLE to passive ROM',
            'Active ROM promotes patient participation and self-efficacy',
            'Passive ROM reserved for patients unable to perform active movement',
            'ROM exercises should be performed multiple times daily',
          ],
        ),
        PearlBlock(
          'Board Pearl — Active vs Passive ROM',
          'Active and active-assisted ROM is always preferable to passive ROM in burn rehabilitation. Active exercise promotes patient engagement, provides functional strengthening, and is less likely to cause tissue disruption at graft sites.',
        ),

        HeaderBlock('Activities of Daily Living'),
        BulletCardBlock(
          title: 'ADL Participation',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Encourage participation in ADLs as soon as possible when medically stable',
            'Self-care activities provide meaningful ROM exercise',
            'Feeding, grooming, and dressing activities promote upper extremity function',
            'Adaptive equipment may be needed initially but should be weaned as function improves',
            'Play-based activities are essential for pediatric engagement in therapy',
          ],
        ),

        HeaderBlock('Exercise & Ambulation'),
        BulletCardBlock(
          title: 'Exercise Programming',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Children frequently experience loss of strength and motor function after burns',
            'Exercise programs should emphasize flexibility, strength, AND endurance',
            'Ambulation should begin 48-72 hours post-injury when vital signs are stable',
            'Early ambulation prevents deconditioning and deep vein thrombosis',
            'Resistance exercise is safe and effective in pediatric burn patients',
            'Aerobic conditioning helps restore cardiopulmonary function',
          ],
        ),
        MnemonicBlock(
          '48-72 Hour Rule',
          'Ambulation should begin 48-72 hours post-burn injury when vital signs are stable. Early mobilization is critical — it prevents deconditioning, DVT, contracture, and promotes independence. Programs should address all three components: Flexibility, Strength, Endurance (FSE).',
        ),

        HeaderBlock('Physical Modalities'),
        BulletCardBlock(
          title: 'Modality Use in Burns',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Fluidotherapy: Helpful for scar therapy — provides desensitization and active ROM',
            'Paraffin: Helpful for scar therapy — softens and moisturizes scar tissue',
            'Ultrasound: Use EXTREME CAUTION near epiphyseal (growth) plates',
            'Ultrasound near growth plates may cause PREMATURE EPIPHYSEAL CLOSURE',
            'Pressure garments: Worn 23 hours/day to minimize hypertrophic scarring',
            'Silicone sheets: Used in combination with pressure for scar management',
          ],
        ),
        PearlBlock(
          'Board Pearl — Ultrasound Precaution',
          'Ultrasound must be used with extreme caution near epiphyseal plates in children. It may cause premature epiphyseal closure, leading to growth disturbances and limb length discrepancy. This is a commonly tested safety precaution in pediatric rehabilitation.',
        ),

        HeaderBlock('Burns Requiring Special Attention'),
        BulletCardBlock(
          title: 'Neck Burns',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Position in cervical hyperextension — NO pillows',
            'Thermoplastic conformers (neck splints) are used to maintain extension',
            'Triple-component neck conformer for circumferential burns',
            'Monitor for developing microstomia with facial burns',
            'Neck contractures severely limit function and are difficult to correct surgically',
          ],
        ),
        BulletCardBlock(
          title: 'Axillary Burns',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'The axilla is the MOST COMMONLY involved area for burn contractures',
            'Airplane splint maintains shoulder in 90° abduction',
            'Must differentiate anterior vs posterior axillary burns for proper positioning',
            'Anterior axilla: Position in abduction and slight flexion',
            'Posterior axilla: Position in flexion (arms overhead)',
            'Aggressive ROM program essential to prevent contracture',
          ],
        ),
        PearlBlock(
          'Board Pearl — Axillary Contracture',
          'The axilla is the most commonly involved area for burn contracture formation. The airplane splint (maintaining 90° shoulder abduction) is the primary splinting intervention. Early and aggressive ROM is essential because axillary contractures significantly limit upper extremity function.',
        ),
        BulletCardBlock(
          title: 'Hand & Foot Burns',
          themeColor: const Color(0xFFB91C1C),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Rapid contracture formation due to small anatomic size in children',
            'Fingers and toes must be wrapped SEPARATELY to prevent web space syndactyly',
            'Splinting is UNIVERSAL for maintaining ROM in hand and foot burns',
            'Dorsal hand burns: Intrinsic plus position (MCP flexion, IP extension)',
            'Volar hand burns: Full extension with fingers abducted',
            'Early active ROM is critical — hands and feet stiffen quickly',
            'Edema control with elevation is essential in the acute phase',
          ],
        ),
        MnemonicBlock(
          'Special Burn Areas — NAH',
          'Neck (hyperextension, no pillows, thermoplastic conformers), Axilla (most common contracture area, airplane splint at 90°), Hands/Feet (rapid contractures, wrap digits separately, universal splinting). These three areas require the most aggressive positioning and rehabilitation intervention.',
        ),
        PearlBlock(
          'Board Pearl — Wrapping Digits Separately',
          'In hand and foot burns, each finger and toe must be wrapped individually to prevent web space contracture (burn syndactyly). If digits are wrapped together, the healing skin bridges across the web spaces, requiring surgical release. This is a fundamental principle of pediatric burn wound care.',
        ),
      ],
    ),
  ],
);
