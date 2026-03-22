import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final developmentGrowthContent = TopicData(
  id: 'development-growth',
  title: 'Development & Growth',
  tabs: [
    // ============ TAB 1: Growth Parameters ============
    TopicTab(
      title: 'Growth',
      blocks: [
        HeaderBlock('Growth Parameters'),
        TextBlock(
          'Development includes maturation of organs and systems; acquisition of physical, intellectual, and interpersonal skills; ability to adapt more readily to stress; and capacity for creative expression. Growth signifies increase in size.',
          isIntro: true,
        ),

        HeaderBlock('Height'),
        BulletCardBlock(
          title: 'Height Growth Milestones',
          themeColor: const Color(0xFF06B6D4),
          backgroundColor: const Color(0xFFECFEFF),
          points: [
            'Birth length doubles by approximately age 4 years',
            'Birth length triples by age 13 years',
            'First year: ~10 inches (25 cm)',
            'Second year: ~5 inches (12.5 cm)',
            'Third year: ~3-4 inches (7.5-10 cm)',
            'Thereafter until puberty: ~2-3 inches (5-7.5 cm) per year',
          ],
        ),

        HeaderBlock('Weight'),
        BulletCardBlock(
          title: 'Weight Growth Milestones',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Average birth weight: ~7 lb 5 oz (3.33 kg)',
            'Newborns lose up to 10% of birth weight in first few days',
            'Birth weight DOUBLES by 4-5 months',
            'Birth weight TRIPLES by end of first year',
            'Birth weight QUADRUPLES by end of second year',
            'Ages 2-9: Annual increment ~5 lb (2.25 kg) per year',
          ],
        ),
        PearlBlock(
          'Board Pearl — Weight Milestones',
          'Birth weight doubles by 4-5 months, triples by 12 months, and quadruples by 24 months. These are commonly tested milestones.',
        ),

        HeaderBlock('Head & Skull'),
        BulletCardBlock(
          title: 'Head Development',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'At birth, the head is approximately 2/3 to 3/4 of total mature size',
            'The rest of the body is only 1/4 of adult size at birth',
            'Six fontanelles present at birth: anterior, posterior, two sphenoid, two mastoid',
            'Anterior fontanelle closes between 10-14 months (may remain open until 18 months)',
            'Posterior fontanelle closes by 4 months',
            'Cranial sutures do not ossify completely until later childhood',
          ],
        ),
        PearlBlock(
          'Board Pearl — Fontanelle Closure',
          'Anterior fontanelle: 10-14 months (up to 18 months). Posterior fontanelle: by 4 months. Early closure may indicate craniosynostosis. Late closure may suggest hypothyroidism, rickets, or increased ICP.',
        ),

        HeaderBlock('Ossification Centers'),
        BulletCardBlock(
          title: 'Bone Development Facts',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'At birth: 5 ossification centers — distal femur, proximal tibia, calcaneus, talus, cuboid',
            'Clavicle is the FIRST bone to calcify in utero (5th fetal week)',
            'Greatest changes in bone mass: Girls ages 12-15, boys ages 14-17',
            'Peak bone mass reached between ages 25-35 in both sexes',
          ],
        ),
        PearlBlock(
          'Board Pearl',
          'The 5 ossification centers present at birth are: distal femur, proximal tibia, calcaneus, talus, and cuboid. The clavicle is the first bone to calcify in utero.',
        ),
      ],
    ),

    // ============ TAB 2: Primitive & Postural Reflexes ============
    TopicTab(
      title: 'Reflexes',
      blocks: [
        HeaderBlock('Primitive Reflexes'),
        TextBlock(
          'In neonates and infants, motor behavior is influenced by primitive reflexes due to the immature CNS. During the first 6-8 months of life, these reflexes are gradually suppressed as the CNS matures. Obligatory or persistent primitive reflexes are the earliest markers of abnormal neurological maturation.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl — Red Flag',
          'Obligatory or persistent primitive reflexes beyond their expected integration age are the earliest markers of abnormal neurological maturation and suggest CNS pathology (commonly tested in the context of cerebral palsy).',
        ),

        ScaleBlock(
          scaleName: 'Primitive Reflexes — Emergence & Integration',
          description: 'Key reflexes with expected age of suppression',
          columns: ['Reflex', 'Present', 'Integrates'],
          rows: [
            ['Moro', 'Birth', '4-6 months'],
            ['ATNR (asymmetric tonic neck)', 'Birth', '4-6 months'],
            ['Palmar grasp', 'Birth', '4-6 months'],
            ['Rooting', 'Birth', '3-4 months'],
            ['Positive supporting', 'Birth', '3-4 months'],
            ['Galant (trunk incurvation)', 'Birth', '4-6 months'],
            ['Automatic neonatal walking', 'Birth', '3-4 months'],
            ['Symmetric tonic neck', 'Birth', '6-7 months'],
            ['Tonic labyrinthine', 'Birth', '4-6 months'],
            ['Plantar grasp', 'Birth', '9-12 months'],
          ],
          boardPearl: 'Plantar grasp integrates LAST (9-12 months) — much later than palmar grasp (4-6 months). This is a commonly tested distinction.',
        ),

        HeaderBlock('Key Primitive Reflexes'),
        ComparisonCardBlock(
          title: 'Moro Reflex',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          icon: Icons.open_with_rounded,
          description: 'Sudden extension/head drop causes symmetrical abduction and extension of arms followed by adduction (embracing). Integrates 4-6 months.',
          keyPoints: [
            'Absent Moro = severe CNS depression or cervical cord injury',
            'Asymmetric Moro = brachial plexus injury (Erb palsy) or fractured clavicle',
            'Persistent Moro = CNS pathology',
          ],
        ),
        ComparisonCardBlock(
          title: 'ATNR (Fencing Reflex)',
          themeColor: const Color(0xFF06B6D4),
          backgroundColor: const Color(0xFFECFEFF),
          icon: Icons.sports_martial_arts_rounded,
          description: 'Head rotation causes extension of arm/leg on face side and flexion on occiput side. Integrates 4-6 months.',
          keyPoints: [
            'OBLIGATORY response (cannot be broken) is abnormal at ANY age',
            'Persistent ATNR is a hallmark of static encephalopathy/CP',
            'Interferes with midline hand use, feeding, and rolling',
          ],
        ),
        PearlBlock(
          'Board Pearl — ATNR',
          'An obligatory ATNR (the infant cannot break out of the posture) is abnormal at any age and strongly suggests cerebral palsy. A non-obligatory ATNR is normal until 4-6 months.',
        ),

        HeaderBlock('Postural Reflexes'),
        TextBlock(
          'Postural reflexes emerge between 2 and 14 months and are incorporated into volitional motor behavior. They persist throughout life and indicate CNS maturation.',
        ),
        ScaleBlock(
          scaleName: 'Postural Reflex Responses',
          description: 'Postural reflexes that emerge as primitive reflexes integrate',
          columns: ['Reflex', 'Stimulus', 'Emerges'],
          rows: [
            ['Head righting', 'Visual/vestibular', 'Prone 2 mo\nSupine 3-4 mo'],
            ['Head & body righting', 'Tactile/proprioceptive', '4-6 months'],
            ['Protective extension\n(parachute)', 'Gravity displacement', 'Anterior 5-7 mo\nLateral 6-8 mo\nPosterior 7-8 mo\nStanding 12-14 mo'],
            ['Equilibrium\n(tilting)', 'Gravity displacement', 'Sitting 6-8 mo\nStanding 12-14 mo'],
          ],
          boardPearl: 'Protective extension (parachute) responses develop anterior first (5-7 mo), then lateral (6-8 mo), then posterior (7-8 mo), then standing (12-14 mo). Delays or absence suggest CNS immaturity or damage.',
        ),
      ],
    ),

    // ============ TAB 3: Developmental Milestones ============
    TopicTab(
      title: 'Milestones',
      blocks: [
        HeaderBlock('Milestones in Child Development'),
        TextBlock(
          'Developmental milestones are grouped into four distinct areas of function: gross motor, fine motor/adaptive, language, and personal/social behavior. Knowing key milestone ages is essential for board preparation.',
          isIntro: true,
        ),

        HeaderBlock('Gross Motor Milestones'),
        ScaleBlock(
          scaleName: 'Gross Motor Development',
          description: 'Key motor milestones by age',
          columns: ['Age', 'Gross Motor'],
          rows: [
            ['Newborn', 'Flexor tone predominates, turns head in prone'],
            ['4 months', 'Head midline, head held when pulled to sit,\nlifts head 90° in prone, rolls prone to supine'],
            ['7 months', 'Sits independently, rolls both ways,\nbears weight on legs when held'],
            ['10 months', 'Creeps on all fours, pulls to stand,\ncruises, stands momentarily'],
            ['12 months', 'Walks independently (12-15 months)'],
            ['14 months', 'Walks alone, arms in high guard,\nwide base, pelvic tilt and rotation'],
            ['18 months', 'Runs stiffly, walks backward,\nmature heel-toe gait developing'],
            ['2 years', 'Runs, walks up/down stairs,\njumps on both feet in place'],
            ['3 years', 'Pedals tricycle, broad jumps,\nwalks up stairs alternating feet'],
            ['4 years', 'Walks down stairs alternating feet,\nhops on one foot, plantar arches'],
            ['5 years', 'Skips, tiptoes, balances 10 sec each foot'],
          ],
          boardPearl: 'Key milestone ages: Head control 4 mo, sits 6-7 mo, crawls 9 mo, walks 12 mo, runs 18 mo, stairs 2 yr, tricycle 3 yr, hops 4 yr, skips 5 yr.',
        ),

        HeaderBlock('Fine Motor Milestones'),
        ScaleBlock(
          scaleName: 'Fine Motor / Adaptive Development',
          description: 'Grasp and manipulation milestones',
          columns: ['Age', 'Fine Motor'],
          rows: [
            ['Newborn', 'Hands fisted, grasp reflex'],
            ['4 months', 'Hands mostly open, crude palmar grasp,\nmidline hand play'],
            ['7 months', 'Transfers cube hand to hand,\nintermediate grasp, bangs objects'],
            ['10 months', 'Pincer grasp (thumb to index),\nbangs two cubes together'],
            ['14 months', 'Piles two cubes, scribbles,\nholds crayon full length in palm'],
            ['18 months', 'Crude release, emerging hand dominance'],
            ['2 years', 'Builds 8-cube tower, hand dominance,\nimitates vertical line, aligns cubes'],
            ['3 years', 'Imitates 3-cube bridge, copies circle,\noverhand throw'],
            ['4 years', 'Copies cross, draws a person with\nhead and extremities, cuts with scissors'],
            ['5 years', 'Hand dominance expected, draws person\nwith body, catches with hand'],
          ],
          boardPearl: 'Grasp progression: Palmar (4 mo) → raking (6 mo) → inferior pincer (8 mo) → mature pincer (10 mo). Hand dominance before 18 months may indicate contralateral hemiplegia.',
        ),

        HeaderBlock('Language Milestones'),
        ScaleBlock(
          scaleName: 'Speech & Language Development',
          description: 'Receptive and expressive language milestones',
          columns: ['Age', 'Language'],
          rows: [
            ['Newborn', 'Cry, state-dependent quieting'],
            ['2 months', 'Coos, social smile'],
            ['4 months', 'Turns to voice, laughs, squeals,\nresponsive vocalization, "raspberries"'],
            ['7 months', 'Single-word and double-consonant\nvowel combinations (babbling)'],
            ['10 months', 'Imitates speech sounds, "mama"/"dada"\nwith meaning, waves bye-bye'],
            ['14 months', 'Uses single words,\nunderstands simple commands'],
            ['18 months', 'Points to named body part,\nidentifies one picture, says "no"'],
            ['2 years', 'Two-word phrases, uses verbs,\nrefers to self by name, follows simple directions'],
            ['3 years', 'Three-word sentences, uses future tense,\nasks who/what/where, gives full name'],
            ['4 years', 'Gives connected account of experience,\nuses past tense, knows opposite analogies'],
            ['5 years', 'Fluent speech, follows 3-part commands,\ndefines concrete nouns, counts to 10'],
          ],
          boardPearl: 'Key language milestones: Coos 2 mo, babbles 6 mo, first words 12 mo, 2-word phrases 24 mo, 3-word sentences 36 mo. Red flag: No words by 18 months, no 2-word phrases by 24 months.',
        ),

        HeaderBlock('Developmental Red Flags'),
        BulletCardBlock(
          title: 'When to Refer for Evaluation',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'No social smile by 3 months',
            'Not sitting independently by 9 months',
            'Not walking by 18 months',
            'No words by 18 months',
            'No 2-word phrases by 24 months',
            'Hand dominance before 18 months (suggests hemiplegia)',
            'Persistent primitive reflexes beyond expected age',
            'Loss of previously acquired milestones (regression)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Developmental Regression',
          'Loss of previously acquired milestones (regression) suggests a neurodegenerative process and warrants urgent evaluation. This is distinct from developmental delay (slow acquisition) or developmental plateau.',
        ),
      ],
    ),

    // ============ TAB 4: Cognitive & ASD ============
    TopicTab(
      title: 'Cognitive & ASD',
      blocks: [
        HeaderBlock('Cognitive Development'),
        TextBlock(
          'Cognitive development follows predictable stages that parallel motor and language development. Understanding cognitive stages helps in selecting appropriate therapeutic and educational approaches.',
          isIntro: true,
        ),

        ScaleBlock(
          scaleName: 'Piaget Cognitive Stages',
          description: 'Stages of cognitive development',
          columns: ['Stage', 'Age', 'Key Features'],
          rows: [
            ['Sensorimotor', '0-2 years', 'Reflex stage → object permanence\nCircular reactions, cause-effect\nlearning through senses and motor'],
            ['Preoperational', '2-7 years', 'Symbolic/imaginative play\nEgocentric thinking\nLanguage development rapid\nClassification by single feature'],
            ['Concrete\noperational', '7-11 years', 'Logical thinking about concrete\nobjects, conservation\nClassification by multiple features'],
            ['Formal\noperational', '11+ years', 'Abstract thinking, hypothesis\ntesting, deductive reasoning'],
          ],
        ),

        HeaderBlock('Emotional Development (Erikson)'),
        ScaleBlock(
          scaleName: 'Psychosocial Stages in Childhood',
          description: 'Erikson stages relevant to pediatric rehabilitation',
          columns: ['Age', 'Stage', 'Task'],
          rows: [
            ['0-1 year', 'Trust vs Mistrust', 'Basic trust through consistent\ncaregiving, attachment'],
            ['1-3 years', 'Autonomy vs\nShame/Doubt', 'Independence in self-care,\ntoilet training, exploration'],
            ['3-5 years', 'Initiative vs Guilt', 'Purposeful activity, imaginative\nplay, gender identity awareness'],
            ['5-12 years', 'Industry vs\nInferiority', 'Competence in skills, school\nachievement, peer relationships'],
          ],
        ),

        HeaderBlock('Autism Spectrum Disorder (ASD)'),
        TextBlock(
          'ASD is characterized by persistent deficits in social communication and interaction, and restricted, repetitive patterns of behavior, interests, or activities (DSM-5). Prevalence in the United States is approximately 1 in 36 children, affecting males more than females (approximately 4:1).',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Core Features of ASD',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Deficits in social communication: Impaired ability to engage in communication, participate in social activities, demonstrate nonverbal cues',
            'Restricted/repetitive behaviors: Hand flapping, finger flicking, echolalia, nonsense rhyming, insistence on routines and adherence to rules',
            'May occur with or without intellectual disability',
            'Motor deficits common: Clumsiness, dyspraxia, gait dysfunction, toe-walking',
            'Comorbid epilepsy is common',
          ],
        ),
        BulletCardBlock(
          title: 'ASD Screening & Diagnosis',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'M-CHAT-R/F: Modified Checklist for Autism in Toddlers, ages 16-30 months',
            'AAP recommends ASD screening at 18 and 24 months',
            'Early signs: Lack of eye contact, no pointing by 12 months, no joint attention',
            'Diagnosis based on DSM-5 criteria: Social communication + restricted behaviors',
            'Early intervention improves outcomes significantly',
          ],
        ),
        PearlBlock(
          'Board Pearl — ASD',
          'ASD prevalence is approximately 1 in 36 children. Males are affected approximately 4 times more than females. Early signs include lack of joint attention, no pointing by 12 months, and no social smile responsiveness.',
        ),

        HeaderBlock('Developmental Screening Tools'),
        TableBlock(
          title: 'Common Screening & Assessment Tools',
          columns: ['Tool', 'Ages', 'Type'],
          rows: [
            ['Denver II', '0-6 years', 'Screening (4 domains)'],
            ['ASQ-3', '1-66 months', 'Parent questionnaire screening'],
            ['Bayley-4', '1-42 months', 'Gold standard diagnostic'],
            ['M-CHAT-R/F', '16-30 months', 'ASD screening'],
            ['BINS', '3-24 months', 'Neurodevelopmental screening'],
          ],
          headerColor: const Color(0xFF06B6D4),
        ),
        PearlBlock(
          'Board Pearl — Denver II vs Bayley',
          'Denver II is a SCREENING tool (identifies children who need further evaluation). Bayley Scales is the gold standard DIAGNOSTIC developmental assessment for infants 1-42 months. Screening tools are not diagnostic.',
        ),
      ],
    ),
  ],
);
