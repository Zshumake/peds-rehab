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

        TextBlock(
          'Burns are a leading cause of injury-related morbidity in children, with approximately 100,000 children seeking burn treatment annually in the United States. Mortality has declined to less than 3% for hospitalized pediatric burns, though inhalation injury remains associated with 40-60% of burn deaths.',
          isIntro: true,
        ),

        BulletCardBlock(
          title: 'Incidence & Demographics',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Peak age: 1 to 5 years (toddlers and preschoolers)',
            'Scald burns: Leading mechanism in children <5 years (60-80% of pediatric burns)',
            'Flame burns: Leading mechanism in children >5 years and adolescents',
            'Contact burns: Third most common mechanism (hot irons, stoves, curling irons)',
            'Non-accidental trauma (NAT): 10-20% of all pediatric burns',
            'Male:female ratio approximately 2:1, increasing with age',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Scald vs Flame by Age',
          'Scald burns from hot liquids (bathwater, spilled beverages, cooking) overwhelmingly predominate in young children due to exploratory behavior, short stature, and limited ability to escape a heat source. In older children and adolescents, flame burns become the leading mechanism. Always consider NAT with immersion scald patterns.',
        ),

        HeaderBlock('Burn Depth Classification'),

        TableBlock(
          title: 'Burn Depth Classification',
          columns: ['Classification', 'Depth', 'Appearance', 'Sensation', 'Healing'],
          rows: [
            ['Superficial\n(1st degree)', 'Epidermis\nonly', 'Red, dry,\nno blisters\n(sunburn-like)', 'Painful', '3-7 days;\nno scarring'],
            ['Superficial\nPartial Thickness\n(Superficial 2nd)', 'Epidermis +\npapillary\ndermis', 'Pink, moist,\nblisters,\nblanches', 'Very\npainful', '7-14 days;\nminimal\nscarring'],
            ['Deep Partial\nThickness\n(Deep 2nd)', 'Epidermis +\nreticular\ndermis', 'Pale, mottled,\nless moisture,\nmay blister', 'Decreased\nsensation', '14-35 days;\nmay need\ngrafting'],
            ['Full Thickness\n(3rd degree)', 'Entire epidermis\n+ dermis into\nsubcutaneous', 'White, waxy,\nleathery, dry\neschar', 'Insensate', 'Will NOT heal\nspontaneously;\nrequires grafting'],
            ['Fourth Degree\n(Subdermal)', 'Through skin\ninto muscle,\nbone, tendon', 'Charred,\nexposed deep\nstructures', 'Insensate', 'Requires\nexcision;\namputation\nmay be needed'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
        PearlBlock(
          'Board Pearl -- Pain Inversely Correlates with Depth',
          'Superficial partial-thickness burns are the MOST painful because intact nerve endings in the papillary dermis are exposed and stimulated. Full-thickness burns are insensate because nerve endings are destroyed. This inverse relationship between pain and depth is a frequently tested board concept.',
        ),
        PearlBlock(
          'Board Pearl -- Hypertrophic Scarring Risk',
          'Burns that take longer than 14 to 21 days to heal have significantly higher risk of hypertrophic scarring. Deep partial-thickness and full-thickness burns carry the greatest scarring risk. Hypertrophic scars remain within the wound boundaries and tend to regress; keloid scars extend beyond the wound and do NOT regress.',
        ),

        HeaderBlock('Jackson Zones of Burn Injury'),
        BulletCardBlock(
          title: 'Three Concentric Zones',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Zone of Coagulation (center): Irreversible tissue destruction; protein denaturation and cell death are complete',
            'Zone of Stasis (middle): Injured but potentially viable tissue; impaired blood flow threatens survival -- this is where clinical interventions make the greatest difference',
            'Zone of Hyperemia (outer): Increased blood flow and inflammation; tissue typically recovers fully',
            'Wound conversion: Inadequate management of the zone of stasis (poor perfusion, infection, desiccation) converts viable tissue to full-thickness necrosis',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Zone of Stasis',
          'The zone of stasis is the clinical target for burn wound management. Adequate fluid resuscitation, prevention of infection, and avoidance of hypotension can save tissue in this zone. Failure to manage it properly leads to wound conversion -- deepening of the burn injury.',
        ),
      ],
    ),

    // ============ TAB 2: Burn Sizing & Fluid Resuscitation ============
    TopicTab(
      title: 'Burn Sizing & Fluids',
      blocks: [
        HeaderBlock('Pediatric Burn Size Estimation'),

        TextBlock(
          'Accurate burn size estimation is critical for fluid resuscitation and determining need for hospitalization. Pediatric body proportions differ significantly from adults, making adult estimation tools inaccurate for children. Only partial-thickness and full-thickness burns are counted -- superficial (first-degree) burns are NOT included in TBSA calculations.',
          isIntro: true,
        ),

        BulletCardBlock(
          title: 'Lund & Browder Chart',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Gold standard for pediatric TBSA estimation',
            'Uses age-specific body surface area percentages',
            'Accounts for disproportionately larger head and smaller legs in young children',
            'Should be used preferentially over Rule of 9s in all pediatric patients',
            'Palmar method: Patient\'s palm including fingers equals approximately 1% TBSA -- useful for estimating scattered or small burns',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Superficial Burns Not Counted',
          'Superficial (first-degree) burns are NOT counted in TBSA calculations for fluid resuscitation. Only partial-thickness and full-thickness burns are included. This is a commonly tested distinction.',
        ),

        HeaderBlock('Modified Rule of 9s for Children'),
        BulletCardBlock(
          title: 'Key Modifications',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Child head = 18% (vs 9% in adults) -- double the adult percentage',
            'Each child leg = 14% (vs 18% in adults) -- reduced from adult percentage',
            'Upper extremities remain 9% each (same as adults)',
            'Trunk remains 18% anterior, 18% posterior (same as adults)',
            'Head loses approximately 1% TBSA per year of age from 18% at birth toward adult values',
            'By approximately age 9-10, proportions approach adult Rule of 9s',
          ],
        ),
        MnemonicBlock(
          'Rule of 9s Pediatric Modification',
          'At birth, move 9% from legs to head (head = 18%, each leg = 14%). Then "give back" approximately 1% per year from head to legs. By age 9-10, the child has adult proportions (head = 9%, each leg = 18%).',
        ),

        HeaderBlock('Lund & Browder Chart by Age'),
        TableBlock(
          title: 'Body Surface Area Percentages by Age (Lund & Browder)',
          columns: ['Body Area', '0-1yr', '1-4yr', '5-9yr', '10-14yr', '15+yr'],
          rows: [
            ['Head (total)', '19%', '17%', '13%', '11%', '7%'],
            ['Neck', '2%', '2%', '2%', '2%', '2%'],
            ['Anterior Trunk', '13%', '13%', '13%', '13%', '13%'],
            ['Posterior Trunk', '13%', '13%', '13%', '13%', '13%'],
            ['Each Buttock', '2.5%', '2.5%', '2.5%', '2.5%', '2.5%'],
            ['Genitalia', '1%', '1%', '1%', '1%', '1%'],
            ['Each Upper Arm', '4%', '4%', '4%', '4%', '4%'],
            ['Each Forearm', '3%', '3%', '3%', '3%', '3%'],
            ['Each Hand', '2.5%', '2.5%', '2.5%', '2.5%', '2.5%'],
            ['Each Thigh', '5.5%', '6.5%', '8%', '8.5%', '9.5%'],
            ['Each Lower Leg', '5%', '5%', '5.5%', '6%', '7%'],
            ['Each Foot', '3.5%', '3.5%', '3.5%', '3.5%', '3.5%'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
        PearlBlock(
          'Board Pearl -- Age-Based Proportions',
          'Head percentage decreases with age (19% at birth to 7% in adults) while thigh percentage increases (5.5% at birth to 9.5% in adults). Neck, trunk, buttocks, genitalia, arms, hands, and feet remain relatively constant across ages.',
        ),

        HeaderBlock('Fluid Resuscitation'),
        BulletCardBlock(
          title: 'Parkland Formula',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Parkland formula: 4 mL/kg/% TBSA of lactated Ringer\'s for the first 24 hours',
            'Half administered in the first 8 hours FROM THE TIME OF BURN (not from hospital arrival)',
            'Remainder given over the next 16 hours',
            'Pediatric modification: Children <20 kg require maintenance fluids with dextrose (D5) added due to limited glycogen stores and risk of hypoglycemia',
            'Goal urine output: 1-2 mL/kg/hr for children <30 kg',
            'Goal urine output: 0.5-1 mL/kg/hr for children >30 kg',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Parkland Formula Timing',
          'The Parkland formula timing starts from the time of burn, NOT from hospital arrival. Half of the calculated volume is given in the first 8 hours from burn time. Children under 20 kg need additional dextrose-containing maintenance fluids because of limited glycogen stores.',
        ),

        HeaderBlock('Hospitalization & Referral Criteria'),
        BulletCardBlock(
          title: 'ABA Burn Center Referral Criteria',
          themeColor: const Color(0xFFB91C1C),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Partial-thickness burns >10% TBSA',
            'Burns involving face, hands, feet, genitalia, perineum, or major joints',
            'Full-thickness burns of ANY size',
            'ALL electrical burns (including lightning)',
            'ALL chemical burns',
            'ALL inhalation injuries',
            'Burns with complicating preexisting conditions',
            'Burns with concomitant trauma (when burn is the greater risk)',
            'Burns in children at facilities without pediatric capabilities',
            'Suspected non-accidental trauma (NAT)',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Special Area Burns',
          'Burns to the face, hands, feet, genitalia, and major joints always require burn center referral regardless of size. These areas are at high risk for functional impairment and contracture formation. All electrical and inhalation injuries are also automatic referrals.',
        ),
      ],
    ),

    // ============ TAB 3: Non-Accidental Trauma ============
    TopicTab(
      title: 'Non-Accidental Trauma',
      blocks: [
        HeaderBlock('NAT Burn Recognition'),

        TextBlock(
          'Approximately 10-20% of pediatric burns result from child abuse. The clinician must maintain a high index of suspicion and recognize patterns inconsistent with accidental injury. Recognizing NAT burns is critical for board examinations and clinical practice.',
          isIntro: true,
        ),

        TableBlock(
          title: 'NAT Burn Indicators',
          columns: ['Indicator', 'Description'],
          rows: [
            ['Stocking/Glove\nDistribution', 'Symmetric, circumferential\nburns of hands or feet\nwith clear demarcation lines;\nforced immersion'],
            ['Sparing of\nFlexion Creases', 'Child reflexively curls\nbody during immersion;\npalms, soles, antecubital,\npopliteal fossae spared'],
            ['Uniform\nBurn Depth', 'Prolonged, forced contact\nwith single heat source'],
            ['Doughnut Sign', 'Central sparing of\nbuttocks/perineum in forced\nimmersion (skin contacts\ncool tub bottom)'],
            ['Dorsal Hand\nBurns', 'Children reflexively\nwithdraw in fisting pattern;\ndorsal burns suggest\nforced contact'],
            ['Cigarette Burns', 'Circular, deep, uniform\nburns, often multiple'],
            ['Delay in\nSeeking Care', 'More than 2 hours\nsuggests NAT'],
            ['Inconsistent\nHistory', 'Mechanism does not\nmatch burn pattern or\nchild\'s developmental\ncapability'],
            ['Different Healing\nStages', 'Indicates repeated\ninjury over time'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl -- Doughnut Sign',
          'The doughnut sign is pathognomonic for forced immersion burns. When a child is forcibly held in hot water in a seated position, the buttocks press against the cooler bottom of the tub, creating a central zone of sparing surrounded by deep burns. This pattern cannot be explained by accidental immersion.',
        ),

        HeaderBlock('Accidental vs NAT Burn Comparison'),
        TableBlock(
          title: 'Accidental vs Non-Accidental Burn Patterns',
          columns: ['Feature', 'Accidental Scald', 'NAT Burn'],
          rows: [
            ['Pattern', 'Irregular, splash,\nasymmetric', 'Symmetric, clear\ndemarcation,\nstocking/glove'],
            ['Depth', 'Variable within\nwound', 'Uniform (prolonged\nforced contact)'],
            ['Flexion\ncreases', 'Involved', 'Spared (child\nreflexively curls)'],
            ['History', 'Consistent with\npattern and\ndevelopment', 'Inconsistent;\ndelayed presentation'],
            ['Location', 'Variable (wherever\nliquid contacts)', 'Buttocks, perineum,\nhands, feet'],
            ['Timing of\npresentation', 'Prompt', 'Delayed (>2 hours\nsuspicious)'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),

        MnemonicBlock(
          'Suspect Abuse -- "4 S\'s"',
          'Sharp Lines (stocking/glove pattern with clear demarcation), Symmetric distribution, Spared flexural creases (child held in flexed position during immersion), Story inconsistent with injury pattern. Also remember the Doughnut Sign for forced seated immersion.',
        ),
        PearlBlock(
          'Board Pearl -- Dorsal Hand Burns',
          'Dorsal hand burns are suspicious for abuse. Children reflexively withdraw the hand in a fisting pattern (protecting the palm), so dorsal burns suggest the hand was forced onto a hot surface. Accidental burns to the hand tend to involve the palm.',
        ),
      ],
    ),

    // ============ TAB 4: Positioning & Splinting ============
    TopicTab(
      title: 'Positioning & Splinting',
      blocks: [
        HeaderBlock('Anti-Deformity Positioning'),

        TextBlock(
          'The central principle of burn rehabilitation positioning: the position of COMFORT promotes CONTRACTURE. Burned skin and underlying tissue contract during healing, and the body naturally assumes flexed, adducted positions. Anti-deformity positioning places the burned area in the OPPOSITE direction of the expected contracture.',
          isIntro: true,
        ),
        MnemonicBlock(
          'COMFORT = CONTRACTURE',
          'The position of comfort is the position of contracture. Patients naturally assume flexed, adducted positions that feel comfortable but will lead to contracture if maintained. Anti-deformity positioning is the OPPOSITE of the comfortable position. Always position AGAINST the anticipated contracture.',
        ),

        HeaderBlock('Positioning by Body Area'),
        TableBlock(
          title: 'Anti-Deformity Positioning by Burn Location',
          columns: ['Burn Location', 'Expected\nContracture', 'Anti-Deformity\nPosition'],
          rows: [
            ['Anterior Neck', 'Flexion', 'Extension;\nNO pillows;\ntowel roll under shoulders'],
            ['Posterior Neck', 'Extension', 'Slight flexion'],
            ['Lateral Neck', 'Lateral flexion\ntoward burn', 'Lateral flexion\nAWAY from burn'],
            ['Axilla/Shoulder', 'Adduction', '90\u00B0 abduction;\nairplane splint'],
            ['Anterior Elbow', 'Flexion', 'Extension'],
            ['Posterior Elbow', 'Extension', 'Flexion\n30-40\u00B0'],
            ['Wrist (Volar)', 'Flexion', 'Extension\n20-30\u00B0'],
            ['Dorsal Hand', 'MCP hyperextension,\nIP flexion,\nthumb adduction\n("claw hand")', '"Safe position" /\n"Intrinsic plus":\nMCPs 70-90\u00B0 flexion,\nIPs extended,\nthumb abducted'],
            ['Anterior Hip', 'Flexion', 'Extension;\nprone encouraged;\nneutral rotation'],
            ['Posterior Knee', 'Flexion', 'Extension'],
            ['Anterior Ankle', 'Dorsiflexion', 'Neutral 90\u00B0'],
            ['Posterior/Plantar\nAnkle', 'Plantarflexion', 'Neutral 90\u00B0;\nposterior splint\nor AFO'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
        PearlBlock(
          'Board Pearl -- Neck Positioning',
          'For anterior neck burns, the neck must be maintained in EXTENSION with NO pillows and a towel roll under the shoulders. This is one of the most commonly tested positioning questions. Posterior neck burns are the opposite -- slight flexion. Lateral neck burns position AWAY from the burned side.',
        ),
        PearlBlock(
          'Board Pearl -- Dorsal Hand "Safe Position"',
          'The dorsal hand burn leads to the "claw hand" deformity (MCP hyperextension, IP flexion, thumb adduction) because the thin dorsal skin contracts and the MCP collateral ligaments shorten in extension. The anti-deformity "safe position" maintains MCPs in 70-90 degrees flexion (keeping collateral ligaments at maximum length), IPs in extension, and thumb in abduction and opposition.',
        ),
        PearlBlock(
          'Board Pearl -- Axillary Burns',
          'The axilla is the most commonly involved area for burn contractures. The airplane splint maintains 90 degrees shoulder abduction. Must differentiate anterior vs posterior axillary burns -- anterior burns tend toward adduction (position in abduction), posterior burns tend toward extension (position in flexion).',
        ),

        HeaderBlock('Hand & Foot Burn Splinting'),
        TableBlock(
          title: 'Hand & Foot Burn Splinting Positions',
          columns: ['Burn Location', 'Splint Position'],
          rows: [
            ['Dorsal Hand', 'MCP flexion 70-90\u00B0;\nIP extension;\nthumb radial abduction\n("intrinsic plus")'],
            ['Volar (Palmar)\nHand', 'MCP & IP full\nextension;\nfingers abducted;\nthumb palmar abduction'],
            ['Dorsal Foot', 'Ankle & toes in\nplantar flexion'],
            ['Sole of Foot', 'Ankle dorsiflexion;\ntoes neutral'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
        MnemonicBlock(
          'Hand Burn Splinting',
          'Dorsal burn = "intrinsic plus" (MCPs flexed, IPs extended). Volar burn = "flat hand" (everything extended, fingers spread). The splint OPPOSES the contracture: dorsal skin shortening pulls MCPs into hyperextension, so splint in flexion. Palmar skin shortening pulls fingers into flexion, so splint in extension.',
        ),
        PearlBlock(
          'Board Pearl -- Wrapping Digits Separately',
          'In hand and foot burns, each finger and toe must be wrapped individually to prevent web space contracture (burn syndactyly). If digits are wrapped together, the healing skin bridges across the web spaces, requiring surgical release.',
        ),
      ],
    ),

    // ============ TAB 5: Rehabilitation ============
    TopicTab(
      title: 'Rehabilitation',
      blocks: [
        HeaderBlock('Burn Rehabilitation Principles'),

        TextBlock(
          'Rehabilitation of the pediatric burn patient begins from the moment of admission and continues throughout recovery. The approach spans three phases: acute/inpatient, subacute/outpatient, and long-term/reconstructive.',
          isIntro: true,
        ),

        HeaderBlock('Early Mobilization & ROM'),
        BulletCardBlock(
          title: 'Active Range of Motion',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Active ROM and stretching should begin within 24-48 hours of admission',
            'Active and active-assisted ROM is PREFERABLE to passive ROM',
            'Active ROM promotes patient engagement and is less likely to cause tissue disruption at graft sites',
            'ROM exercises should be performed multiple times daily',
            'After skin grafting, the grafted area is typically immobilized for 3-5 days to allow graft adherence, then gentle ROM resumes',
            'Donor sites heal as superficial partial-thickness wounds and may be more painful than graft sites',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Active vs Passive ROM',
          'Active and active-assisted ROM is always preferable to passive ROM in burn rehabilitation. Active exercise promotes patient engagement, provides functional strengthening, and is less likely to cause tissue disruption at graft sites.',
        ),

        HeaderBlock('Splinting'),
        BulletCardBlock(
          title: 'Splinting Principles',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Splints maintain anti-deformity positions when the patient is resting or sleeping',
            'Fabricated from thermoplastic materials and adjusted as wound healing progresses',
            'Removed several times daily for active exercise',
            'Small children do NOT tend to lose strength or mobility in splints if removed for regular exercise',
            'Splinting is continued until the scar has matured',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Pediatric Splinting Advantage',
          'Unlike adults, small children generally do not lose strength or mobility when splinted, as long as the splints are removed regularly for exercise. This makes aggressive splinting programs well-tolerated in the pediatric population.',
        ),

        HeaderBlock('Scar Management'),
        BulletCardBlock(
          title: 'Pressure Garment Therapy',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Custom pressure garments delivering 23-25 mmHg of pressure',
            'Worn 23 hours per day for 12-18 months or until scar maturation',
            'Scar maturation indicated by scar that is flat, soft, and pale',
            'Effective for reducing scar thickness; effects on color and pliability are less clear',
            'Silicone sheeting or gel applied under pressure garments improves pliability',
            'Silicone mechanism: Sustained hydration of stratum corneum modulates collagen synthesis',
          ],
        ),

        BulletCardBlock(
          title: 'Vancouver Scar Scale (VSS)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Most widely used scar assessment tool',
            'Pigmentation: 0-3 points',
            'Vascularity: 0-3 points',
            'Pliability: 0-5 points',
            'Height: 0-3 points',
            'Total score: 0-14 (higher = worse scar)',
            'POSAS (Patient and Observer Scar Assessment Scale) is more comprehensive, incorporating patient perspective',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Hypertrophic vs Keloid Scars',
          'Hypertrophic scars remain within the boundaries of the original wound and tend to regress over time. Keloid scars extend beyond wound boundaries and do NOT regress. Hypertrophic scarring is more common after burns healing beyond 14-21 days. Z-plasty is the surgical technique used to release linear contracture bands.',
        ),

        HeaderBlock('Physical Modalities'),
        BulletCardBlock(
          title: 'Modality Use in Burns',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Fluidotherapy: Helpful for scar therapy -- provides desensitization and active ROM',
            'Paraffin: Softens and moisturizes scar tissue',
            'Ultrasound: Use EXTREME CAUTION near epiphyseal (growth) plates',
            'Ultrasound near growth plates may cause PREMATURE EPIPHYSEAL CLOSURE',
            'Pressure garments: Worn 23 hours/day to minimize hypertrophic scarring',
            'Silicone sheets: Used in combination with pressure for scar management',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Ultrasound Precaution',
          'Ultrasound must be used with extreme caution near epiphyseal plates in children. It may cause premature epiphyseal closure, leading to growth disturbances and limb length discrepancy. This is a commonly tested safety precaution in pediatric rehabilitation.',
        ),

        HeaderBlock('Pediatric-Specific Considerations'),
        BulletCardBlock(
          title: 'Growth & Development Challenges',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Growth-related contracture recurrence: Scar tissue does not grow proportionally -- serial release procedures may be necessary',
            'Compliance challenges: Young children cannot understand rationale for uncomfortable splints and garments',
            'Developmental impact: Burns during critical periods can delay motor milestones, cause school absenteeism, and create lasting psychosocial sequelae',
            'Thermoregulation: Large burns impair thermoregulatory capacity due to loss of sweat glands in grafted and scarred skin',
            'Exercise and activity counseling must account for impaired thermoregulation',
            'Psychosocial support: Body image concerns, post-traumatic stress, and social reintegration are paramount',
          ],
        ),

        HeaderBlock('Exercise & Conditioning'),
        BulletCardBlock(
          title: 'Exercise Programming',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Structured exercise programs improve lean body mass and muscle strength',
            'Benefits are maintained ONLY with ongoing participation -- lost when programs are discontinued',
            'Ambulation should begin 48-72 hours post-injury when vital signs are stable',
            'Programs should address all three components: Flexibility, Strength, Endurance',
            'Play-based activities are essential for pediatric engagement in therapy',
            'Encourage ADL participation as soon as possible for meaningful ROM exercise',
          ],
        ),
        MnemonicBlock(
          '48-72 Hour Rule',
          'Ambulation should begin 48-72 hours post-burn injury when vital signs are stable. Early mobilization prevents deconditioning, DVT, contracture, and promotes independence. Exercise benefits are lost when programs are discontinued -- ongoing participation is essential.',
        ),
      ],
    ),

    // ============ TAB 6: Special Burn Areas ============
    TopicTab(
      title: 'Special Burn Areas',
      blocks: [
        HeaderBlock('Burns Requiring Special Attention'),

        TextBlock(
          'Certain anatomic burn locations require specialized positioning, splinting, and rehabilitation approaches due to high functional significance and propensity for contracture formation.',
          isIntro: true,
        ),

        HeaderBlock('Neck Burns'),
        BulletCardBlock(
          title: 'Neck Burn Management',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Anterior neck: Position in cervical hyperextension -- NO pillows; towel roll under shoulders',
            'Posterior neck: Position in slight flexion',
            'Lateral neck: Position AWAY from the burned side',
            'Thermoplastic conformers (neck splints) maintain position',
            'Triple-component neck conformer for circumferential burns',
            'Monitor for developing microstomia with facial burns',
            'Neck contractures severely limit function and are difficult to correct surgically',
          ],
        ),

        HeaderBlock('Axillary Burns'),
        BulletCardBlock(
          title: 'Axillary Burn Management',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'The axilla is the MOST COMMONLY involved area for burn contractures',
            'Airplane splint maintains shoulder in 90 degrees abduction',
            'Anterior axilla: Position in abduction and slight flexion',
            'Posterior axilla: Position in flexion (arms overhead)',
            'Aggressive ROM program essential to prevent contracture',
            'Axillary contractures significantly limit upper extremity function',
          ],
        ),

        HeaderBlock('Hand & Foot Burns'),
        BulletCardBlock(
          title: 'Hand & Foot Burn Management',
          themeColor: const Color(0xFFB91C1C),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Rapid contracture formation due to small anatomic size in children',
            'Fingers and toes must be wrapped SEPARATELY to prevent web space syndactyly',
            'Splinting is UNIVERSAL for maintaining ROM in hand and foot burns',
            'Dorsal hand burns: "Intrinsic plus" position (MCPs 70-90 degrees flexion, IPs extended, thumb abducted)',
            'Volar hand burns: Full extension with fingers abducted',
            'Early active ROM is critical -- hands and feet stiffen quickly',
            'Edema control with elevation is essential in the acute phase',
          ],
        ),
        MnemonicBlock(
          'Special Burn Areas -- NAH',
          'Neck (hyperextension, no pillows, thermoplastic conformers), Axilla (most common contracture area, airplane splint at 90 degrees), Hands/Feet (rapid contractures, wrap digits separately, universal splinting). These three areas require the most aggressive positioning and rehabilitation intervention.',
        ),

        HeaderBlock('Rehabilitation Across Phases'),
        TableBlock(
          title: 'Burn Rehabilitation by Phase of Care',
          columns: ['Phase', 'Focus', 'Key Interventions'],
          rows: [
            ['Acute\n(ICU/Inpatient)', 'Positioning,\nsplinting,\nearly ROM', 'Begin ROM within\n24-48 hours;\npain management;\ncoordinate with\nsurgical team re: grafts'],
            ['Subacute\n(Outpatient)', 'Scar management,\nfunctional\nrestoration', 'Pressure garments\nwhen wounds healed;\nsilicone sheeting;\nprogressive\nstrengthening'],
            ['Long-Term\n(Reconstructive)', 'Scar maturation,\nsurgical revision\nif needed', 'Scar maturation\n12-18 months;\nZ-plasty, tissue\nexpansion;\nongoing psychosocial\nsupport'],
          ],
          headerColor: const Color(0xFFEF4444),
        ),
        PearlBlock(
          'Board Pearl -- Post-Graft Immobilization',
          'After skin grafting, the grafted area is typically immobilized for 3-5 days to allow graft adherence, after which gentle ROM is resumed. Donor sites heal as superficial partial-thickness wounds and may actually be MORE painful than the graft sites themselves.',
        ),
      ],
    ),
  ],
);
