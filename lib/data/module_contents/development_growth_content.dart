import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final developmentGrowthContent = TopicData(
  id: 'development-growth',
  title: 'Development & Growth',
  tabs: [
    // ============ TAB 1: Gross Motor Milestones ============
    TopicTab(
      title: 'Gross Motor',
      blocks: [
        HeaderBlock('Gross Motor Milestones'),
        TextBlock(
          'Gross motor development follows a cephalocaudal (head-to-toe) and proximal-to-distal progression. Mastery of antigravity control in prone precedes sitting, which precedes standing and walking.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Key Gross Motor Milestones',
          columns: ['Age', 'Milestone', 'Board Pearl'],
          rows: [
            ['Newborn', 'Physiologic flexion posture; complete head lag on pull-to-sit', 'Flexor tone predominates in full-term newborns'],
            ['2 months', 'Lifts head 45 degrees in prone', 'Beginning antigravity head control'],
            ['3 months', 'Lifts head 90 degrees; props on forearms; minimal head lag', 'Head control emerges; forearm propping = upper trunk strength'],
            ['4 months', 'Props on extended arms; rolls prone to supine; no head lag', 'Absence of head lag by 4 months is expected'],
            ['6 months', 'Rolls both directions; sits with support (tripod); briefly sits unsupported', 'Tripod sitting transitions to independent sitting'],
            ['9 months', 'Crawls well; pulls to stand; cruises', 'Mobility and upright posture emerging'],
            ['12 months', 'Walks independently (range 9-15 months)', '97% of children walk by 18 months'],
            ['15 months', 'Walks well; stoops to recover objects; begins stiff-legged running', 'Stable gait with improved balance'],
            ['18 months', 'Runs stiffly; walks upstairs with hand held (marking time); kicks ball', 'Marking time = two feet on each step'],
            ['24 months', 'Runs well; walks up/down stairs marking time; jumps with both feet', 'Bilateral coordination for jumping'],
            ['3 years', 'Alternates feet going upstairs; rides tricycle; stands on one foot 1-2 sec', 'Reciprocal stair climbing is a 3-year milestone'],
            ['4 years', 'Hops on one foot; alternates feet going downstairs; catches large ball', 'Downstairs alternation follows upstairs by ~1 year'],
            ['5 years', 'Skips; hops on each foot; heel-to-toe tandem walk', 'Skip = the signature 5-year gross motor skill'],
          ],
          headerColor: const Color(0xFF06B6D4),
        ),
        PearlBlock(
          'Board Pearl — Stair-Climbing Progression',
          'The stair-climbing progression is a board favorite: marking time UP at 2 years, alternating feet UP at 3 years, alternating feet DOWN at 4 years. Think "2-3-4 stair rule."',
        ),
        PearlBlock(
          'Board Pearl — Walking',
          'Independent walking typically occurs at 12 months. Failure to walk by 18 months warrants evaluation. The 97th percentile for walking onset is 18 months.',
        ),
        PearlBlock(
          'Board Pearl — Key Milestones Summary',
          'Head control 4 mo, sits 6-7 mo, crawls 9 mo, walks 12 mo, runs 18 mo, stairs 2 yr, tricycle 3 yr, hops 4 yr, skips 5 yr.',
        ),
      ],
    ),

    // ============ TAB 2: Fine Motor & Language ============
    TopicTab(
      title: 'Fine Motor & Language',
      blocks: [
        HeaderBlock('Fine Motor — Grasp Development'),
        TextBlock(
          'Fine motor development follows a predictable progression from reflexive grasping to precise voluntary manipulation. Two high-yield sequences dominate board examinations: the grasp progression and the drawing/copying progression.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Grasp Development Progression',
          columns: ['Stage', 'Age', 'Description'],
          rows: [
            ['Reflexive grasp', '0-2 months', 'Involuntary palmar grasp reflex'],
            ['Ulnar palmar grasp', '3-4 months', 'Objects held against ulnar side of palm'],
            ['Palmar grasp', '4-5 months', 'Whole-hand crude grasp'],
            ['Radial palmar grasp', '5-6 months', 'Thumb begins to participate'],
            ['Radial digital grasp', '7-8 months', 'Object held in fingertips with thumb opposition'],
            ['Inferior (scissors) pincer', '8-9 months', 'Crude thumb-index opposition'],
            ['Superior (neat) pincer', '10-12 months', 'Precise tip-to-tip thumb-index opposition'],
            ['Voluntary release', '12 months', 'Controlled letting go of objects'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        PearlBlock(
          'Board Pearl — Grasp Reflex Integration',
          'The palmar grasp reflex must integrate (disappear by 4-6 months) BEFORE voluntary grasp can develop. Persistence of the palmar grasp reflex beyond 6 months suggests upper motor neuron pathology.',
        ),

        HeaderBlock('Block Tower Progression'),
        TableBlock(
          title: 'Block Stacking by Age',
          columns: ['Age', 'Blocks'],
          rows: [
            ['12 months', '2 blocks'],
            ['15 months', '2-3 blocks'],
            ['18 months', '3-4 blocks'],
            ['24 months', '6-7 blocks'],
            ['30 months', '8 blocks'],
            ['36 months', '9-10 blocks; bridge of 3 blocks'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),

        HeaderBlock('Drawing & Copying Progression'),
        TableBlock(
          title: 'Shape Copying by Age',
          columns: ['Age', 'Skill'],
          rows: [
            ['12-15 months', 'Scribbles spontaneously'],
            ['2 years', 'Imitates vertical line and circular strokes'],
            ['2.5 years', 'Imitates horizontal line'],
            ['3 years', 'Copies circle; imitates cross'],
            ['4 years', 'Copies cross (+); draws person with 3+ parts'],
            ['4.5 years', 'Copies square'],
            ['5 years', 'Copies triangle; draws person with 6+ parts'],
            ['6 years', 'Copies diamond; writes first name'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        MnemonicBlock(
          'Shape Copying Mnemonic',
          'Circle, Cross, Square, Triangle, Diamond = ages 3, 4, 4.5, 5, 6. "Imitates" (watches examiner draw) is easier and precedes "copies" (reproduces from a static model).',
        ),
        PearlBlock(
          'Board Pearl — Hand Dominance',
          'Hand dominance typically establishes between 18-36 months. Consistent hand preference BEFORE 12-18 months is a RED FLAG that should prompt evaluation for contralateral hemiparesis (cerebral palsy or perinatal stroke).',
        ),

        HeaderBlock('Language Development'),
        TableBlock(
          title: 'Language Milestones',
          columns: ['Age', 'Receptive', 'Expressive'],
          rows: [
            ['Newborn', 'Alerts to sound; prefers human voice', 'Differentiated crying'],
            ['2 months', 'Recognizes familiar voices', 'Cooing (vowel sounds); social smile'],
            ['4 months', 'Turns toward sound source', 'Laughing; beginning consonant sounds'],
            ['6 months', 'Responds to name', 'Babbling (CV combos: "ba-ba-ba")'],
            ['9 months', 'Understands "no"; gestures', '"Mama/dada" nonspecific; waving, pointing'],
            ['12 months', 'Follows 1-step commands w/ gesture', 'First true words (1-3); "mama/dada" specific'],
            ['15 months', 'Points to desired objects', '4-6 words; uses jargon'],
            ['18 months', 'Points to body parts; follows simple commands', '10-25 words; points to indicate wants'],
            ['24 months', 'Follows 2-step commands', '50+ words; 2-word phrases; 50% intelligible'],
            ['36 months', 'Knows age, sex, full name', '250-1000 words; 3-word sentences; 75% intelligible'],
            ['4 years', 'Understands colors; follows complex commands', 'Full sentences (4-5 words); tells stories; 100% intelligible'],
            ['5 years', 'Defines words; counts to 10+', 'Fluent speech; 5-6 word sentences; correct grammar'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        PearlBlock(
          'Board Pearl — Speech Intelligibility Rule',
          'Frequently tested: 50% intelligible at 2 years, 75% at 3 years, 100% at 4 years. This applies to UNFAMILIAR listeners; parents often understand more.',
        ),
        PearlBlock(
          'Board Pearl — Babbling',
          '"Babbling" (consonant-vowel combinations) at 6 months is a critical milestone. Absence of babbling by 12 months is a red flag for hearing impairment, autism, or other communication disorders.',
        ),
      ],
    ),

    // ============ TAB 3: Social-Emotional & Reflexes ============
    TopicTab(
      title: 'Social & Reflexes',
      blocks: [
        HeaderBlock('Social-Emotional Development'),
        TextBlock(
          'Social-emotional milestones follow a predictable progression from early social engagement through cooperative play. These milestones are critical for identifying autism spectrum disorder and other developmental concerns.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Social-Emotional Milestones',
          columns: ['Age', 'Milestone', 'Board Significance'],
          rows: [
            ['2 months', 'Social smile (in response to face/voice)', 'One of the most frequently tested milestones'],
            ['3 months', 'Recognizes parent; anticipatory excitement', 'Social engagement emerging'],
            ['6 months', 'Stranger anxiety emerging; peek-a-boo', 'Recognition of familiar vs unfamiliar'],
            ['9 months', 'Separation anxiety peaks (9-18 mo); object permanence', 'Attachment; Piaget sensorimotor stage'],
            ['12 months', 'Gives objects on request; attachment behaviors', 'Joint attention and reciprocity'],
            ['18 months', 'Beginning pretend play; parallel play', 'Symbolic play = important cognitive marker'],
            ['24 months', 'Parallel play predominates; removes clothing', 'Play alongside but not truly with peers'],
            ['36 months', 'Group play beginning; shares with prompting', 'Transition toward cooperative play'],
            ['4 years', 'Cooperative play; imaginative play; has friends', 'True interactive play with shared goals'],
            ['5 years', 'Competitive games; follows rules; right/wrong', 'Rule-governed play and moral reasoning'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl — Social Smile',
          'The social smile at 2 months is one of the most commonly tested milestones on the PM&R boards. Absence of social smile by 2 months warrants evaluation for visual impairment, hearing loss, or neurodevelopmental concerns.',
        ),
        PearlBlock(
          'Board Pearl — Play Progression',
          'The play progression is a board staple: solitary play (infancy) --> parallel play (2 years) --> associative play (3 years) --> cooperative play (4 years). Cooperative play requires theory of mind, which develops around 4-5 years.',
        ),

        HeaderBlock('Primitive Reflexes'),
        TextBlock(
          'Primitive reflexes are brainstem-mediated motor patterns present in early infancy that are subsequently inhibited as the cerebral cortex matures. Their persistence beyond expected integration ages is a hallmark of upper motor neuron pathology, most notably cerebral palsy.',
        ),
        TableBlock(
          title: 'Primitive Reflexes — Emergence & Integration',
          columns: ['Reflex', 'Emergence', 'Integration', 'If Persistent'],
          rows: [
            ['Moro', 'Birth (28 wk GA)', '3-6 months', 'UMN lesion, CP; asymmetry = BPI or clavicle fx'],
            ['Palmar grasp', 'Birth (28 wk GA)', '4-6 months', 'Must integrate for voluntary grasp; UMN lesion'],
            ['Plantar grasp', 'Birth (28 wk GA)', '9-12 months', 'Must integrate for independent standing'],
            ['Rooting', 'Birth (28 wk GA)', '3-4 months (awake)', 'Frontal lobe lesion'],
            ['ATNR', 'Birth-2 weeks', '4-6 months', 'Interferes with midline hand function and rolling'],
            ['STNR', '4-6 months', '8-12 months', 'Interferes with hands-and-knees crawling'],
            ['TLR', 'Birth', '6 months', 'CP; vestibular dysfunction'],
            ['Galant (trunk incurvation)', 'Birth', '2-6 months', 'Can interfere with sitting'],
            ['Stepping/walking', 'Birth', '2-3 months', 'Reappears as voluntary walking ~12 months'],
            ['Positive support', 'Birth', '2-4 months', 'Persistent in CP'],
            ['Landau', '3-4 months (emerges)', '12-24 months', 'Absent in hypotonic/floppy infants'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl — Obligatory ATNR',
          'An obligatory ATNR (the infant is locked in the "fencer" posture for >30 seconds and cannot break free) is ALWAYS pathological at ANY age. A non-obligatory ATNR (transient posturing the infant can override) is normal until 4-6 months.',
        ),
        PearlBlock(
          'Board Pearl — STNR',
          'The STNR is unique because it EMERGES at 4-6 months (not at birth). It must integrate by 8-12 months to allow reciprocal crawling. STNR causes arm extension with head extension and arm flexion with head flexion -- the OPPOSITE of what is needed for crawling.',
        ),
        PearlBlock(
          'Board Pearl — Plantar vs Palmar Grasp',
          'Plantar grasp integrates LAST (9-12 months) -- much later than palmar grasp (4-6 months). This is a commonly tested distinction.',
        ),

        HeaderBlock('Postural Reactions'),
        TextBlock(
          'Postural reactions emerge later in infancy and PERSIST throughout life. They require cortical and cerebellar integration and reflect higher neurological maturation than primitive reflexes.',
        ),
        TableBlock(
          title: 'Postural Reactions — Emergence',
          columns: ['Reaction', 'Emergence', 'Significance'],
          rows: [
            ['Parachute (anterior)', '6-9 months', 'PERSISTS for life; asymmetry = hemiparesis'],
            ['Lateral protective', '6-8 months', 'Persists for life; absence = impaired sitting balance'],
            ['Posterior protective', '9-12 months', 'Persists for life; absence = impaired sitting balance'],
            ['Equilibrium (prone)', '~6 months', 'Balance response'],
            ['Equilibrium (sitting)', '~7-8 months', 'Balance response'],
            ['Equilibrium (standing)', '~12-15 months', 'Balance response'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Parachute Reflex',
          'The parachute reflex (anterior protective extension) emerges at 6-9 months and does NOT integrate -- it persists throughout life. ASYMMETRY of the parachute reflex is a clinical clue to hemiplegia.',
        ),
      ],
    ),

    // ============ TAB 4: Screening Tools ============
    TopicTab(
      title: 'Screening Tools',
      blocks: [
        HeaderBlock('Developmental Screening Tools'),
        TextBlock(
          'The distinction between screening and diagnostic instruments is fundamental for board preparation. Screening tools identify children who need further evaluation; diagnostic tools quantify developmental level.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Screening & Diagnostic Instruments',
          columns: ['Tool', 'Type', 'Ages', 'Key Features'],
          rows: [
            ['Denver II', 'Screening', 'Birth-6 yrs', '125 items; clinician-administered; 4 domains\nSens 56-83% / Spec 43-80%'],
            ['ASQ-3', 'Screening', '1-66 months', 'Parent-completed; 5 domains; 21 forms\nSens 70-90% / Spec 76-91%'],
            ['Bayley-4', 'Diagnostic (gold standard)', '1-42 months', 'Clinician-administered; 5 domains\nComposite Mean=100, SD=15'],
            ['BINS', 'Screening', '3-24 months', '6 item sets; 10-15 min; low/mod/high risk'],
            ['PEDS', 'Screening', '0-8 years', '10-item parent interview\nSens 74-79% / Spec 70-80%'],
            ['M-CHAT-R/F', 'ASD Screening', '16-30 months', '20 items; parent-report\nSens 85-92% / Spec w/ F/U 95-99%'],
          ],
          headerColor: const Color(0xFF06B6D4),
        ),
        PearlBlock(
          'Board Pearl — Denver II vs Bayley',
          'Denver II is a SCREENING tool; Bayley is a DIAGNOSTIC tool. This distinction is a classic board question. The Denver II does NOT generate a developmental quotient. The Bayley is the gold standard for quantifying developmental level in infants and toddlers.',
        ),
        PearlBlock(
          'Board Pearl — ASQ-3',
          'The ASQ-3 has largely supplanted the Denver II in many clinical settings because it can be parent-completed, has better psychometric properties, and is more time-efficient. It generates scores in a "monitoring zone" between clear pass and clear referral.',
        ),
        BulletCardBlock(
          title: 'Denver II Interpretation',
          themeColor: const Color(0xFF06B6D4),
          backgroundColor: const Color(0xFFECFEFF),
          points: [
            'Normal: No delays, maximum 1 caution',
            'Suspect: 1+ delays and/or 2+ cautions',
            'Untestable: Too many refusals',
            '"Caution" = failure on item at the 75-90th percentile line',
            '"Delay" = failure on item entirely to the LEFT of the age line (>90th percentile should have achieved)',
          ],
        ),
        BulletCardBlock(
          title: 'AAP Recommended Screening Schedule',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Developmental surveillance: EVERY well-child visit',
            'Standardized developmental screening: 9, 18, and 30 months',
            'ASD-specific screening: 18 and 24 months',
          ],
        ),
        BulletCardBlock(
          title: 'Developmental Quotient (DQ)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'DQ = (developmental age / chronological age) x 100',
            'DQ <70 is roughly equivalent to >2 SD below mean',
            'Use CORRECTED age for denominator in premature infants',
          ],
        ),
      ],
    ),

    // ============ TAB 5: Red Flags & ASD ============
    TopicTab(
      title: 'Red Flags & ASD',
      blocks: [
        HeaderBlock('Developmental Red Flags'),
        TextBlock(
          'Red flags for developmental delay warrant urgent evaluation and referral. Loss of previously acquired skills (regression) is always a red flag that demands urgent evaluation.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Motor Red Flags',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'No head control by 4 months',
            'Not sitting independently by 9 months',
            'Not pulling to stand by 12 months',
            'Not walking by 18 months',
            'Not running by 24 months',
            'Persistent fisting of hands beyond 3 months',
            'Persistent head lag beyond 4 months',
            'Hand preference BEFORE 18 months (suggests contralateral hemiparesis)',
            'Persistent toe walking beyond 3 years',
            'Regression of motor milestones at any age',
          ],
        ),
        PearlBlock(
          'Board Pearl — Hand Preference',
          'Hand preference before 18 months is a CLASSIC board question. Early hand dominance should raise concern for contralateral hemiplegia (hemiplegic CP or perinatal stroke). Typical hand dominance does not establish until age 2-3 years.',
        ),
        BulletCardBlock(
          title: 'Language Red Flags',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'No babbling by 12 months',
            'No single words by 16 months',
            'No 2-word phrases by 24 months',
            'No pointing or gestures by 12 months',
            'Any loss of language at any age',
            'Not following simple commands by 18 months',
            'Not 50% intelligible by 2 years',
            'Not 75% intelligible by 3 years',
            'Not 100% intelligible by 4 years',
          ],
        ),
        PearlBlock(
          'Board Pearl — Regression',
          'Developmental regression (loss of previously acquired skills) is ALWAYS a red flag demanding urgent evaluation. Differential includes neurodegenerative disease, Rett syndrome, ASD regression (~25-30% of ASD), Landau-Kleffner syndrome, seizure disorder, metabolic disease.',
        ),

        HeaderBlock('Autism Spectrum Disorder (ASD)'),
        BulletCardBlock(
          title: 'ASD Epidemiology',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Prevalence: 1 in 36 children (2.8%) per CDC ADDM 2020 data',
            'Male:Female ratio approximately 3.8:1 (trending lower as female recognition improves)',
            'Median age of diagnosis: ~4.5 years (goal is before age 3)',
            'Co-occurring intellectual disability: 31-38%',
          ],
        ),
        BulletCardBlock(
          title: 'ASD Red Flags (Under 2 Years)',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'No social smile by 2 months',
            'Poor eye contact',
            'No babbling by 12 months',
            'No gestures (pointing, waving) by 12 months',
            'No single words by 16 months',
            'No 2-word spontaneous phrases by 24 months',
            'Any loss of language or social skills at any age',
            'No response to name by 12 months',
            'No shared enjoyment / joint attention by 14 months',
            'Lack of pretend play by 18 months',
          ],
        ),
        BulletCardBlock(
          title: 'M-CHAT-R/F Scoring',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            '20-item parent-report questionnaire; ages 16-30 months',
            'Low risk (0-2): No action needed',
            'Medium risk (3-7): Administer Follow-Up interview',
            'High risk (8-20): Refer immediately',
            'Follow-Up interview reduces false-positive rate substantially',
            'PPV with Follow-Up: 47.5% for ASD; 94.6% for any developmental concern',
          ],
        ),
        HeaderBlock('DSM-5 Diagnostic Criteria for ASD'),
        BulletCardBlock(
          title: 'Criterion A — Social Communication (ALL 3 Required)',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '1. Deficits in social-emotional reciprocity',
            '2. Deficits in nonverbal communicative behaviors',
            '3. Deficits in developing, maintaining, and understanding relationships',
          ],
        ),
        BulletCardBlock(
          title: 'Criterion B — Restricted/Repetitive Behaviors (At Least 2 of 4)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '1. Stereotyped or repetitive motor movements, use of objects, or speech',
            '2. Insistence on sameness, inflexible adherence to routines',
            '3. Highly restricted, fixated interests abnormal in intensity or focus',
            '4. Hyper- or hypo-reactivity to sensory input (new in DSM-5)',
          ],
        ),
        TableBlock(
          title: 'ASD Severity Levels',
          columns: ['Level', 'Support Needed'],
          rows: [
            ['Level 1', 'Requiring support'],
            ['Level 2', 'Requiring substantial support'],
            ['Level 3', 'Requiring very substantial support'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl — DSM-5 ASD Changes',
          'Key DSM-5 changes: Asperger, PDD-NOS, and autistic disorder were MERGED into a single ASD diagnosis. Criteria went from 3 domains to 2 (social communication combined, and RRB). Sensory processing symptoms were ADDED. A new diagnosis, Social (Pragmatic) Communication Disorder, was created for those with social communication deficits WITHOUT restricted/repetitive behaviors.',
        ),
        PearlBlock(
          'Board Pearl — ASD Criteria',
          'For ASD diagnosis: ALL 3 social communication criteria required PLUS at least 2 of 4 RRB criteria. Social Communication Disorder CANNOT be diagnosed if full ASD criteria are met.',
        ),
      ],
    ),

    // ============ TAB 6: IDEA & Definitions ============
    TopicTab(
      title: 'IDEA & Definitions',
      blocks: [
        HeaderBlock('IDEA: Part C vs Part B'),
        TextBlock(
          'The Individuals with Disabilities Education Act (IDEA) is the federal law governing special education and early intervention services for children with disabilities.',
          isIntro: true,
        ),
        TableBlock(
          title: 'IDEA Part C vs Part B',
          columns: ['Feature', 'Part C (Early Intervention)', 'Part B (Special Education)'],
          rows: [
            ['Ages', 'Birth to 3 years', '3-21 years'],
            ['Service plan', 'IFSP', 'IEP'],
            ['Focus', 'FAMILY-centered', 'CHILD/student-centered'],
            ['Setting', 'Natural environments (home, daycare)', 'School-based; Least Restrictive Environment'],
            ['Eligibility', '>25% delay or >1.5-2 SD in 1+ domain, OR established condition', '1 of 13 disability categories'],
            ['Cost', 'Free to families', 'Free Appropriate Public Education (FAPE)'],
            ['Transition', 'At age 3, transition to Part B', 'Continues through age 21'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        PearlBlock(
          'Board Pearl — IFSP vs IEP',
          'The IFSP vs IEP distinction is a board favorite. IFSP is FAMILY-centered (birth-3, Part C, natural environments). IEP is CHILD-centered (3-21, Part B, school-based). Know this cold.',
        ),
        BulletCardBlock(
          title: 'Part C Services',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'PT, OT, speech-language pathology',
            'Special instruction, audiology, vision services',
            'Psychology, social work',
            'Assistive technology, service coordination',
          ],
        ),
        BulletCardBlock(
          title: 'Part B Key Principles',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Free Appropriate Public Education (FAPE)',
            'Least Restrictive Environment (LRE): Educate with non-disabled peers to maximum extent',
            '13 disability categories for eligibility',
            'Related services: PT, OT, SLP, transportation, counseling',
            'Section 504: Alternative for students who do not qualify for IEP but need accommodations',
            'Child Find Mandate: States must identify ALL children with disabilities birth through 21',
          ],
        ),

        HeaderBlock('Key Developmental Definitions'),
        BulletCardBlock(
          title: 'Terminology',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Developmental delay: >25% delay or >1.5-2 SD below mean in 1+ domain; implies potential for catch-up',
            'Global developmental delay (GDD): Reserved for children UNDER 5 years; >2 SD below mean in 2+ domains',
            'Intellectual disability (DSM-5): Deficits in BOTH intellectual functions AND adaptive functioning; severity classified by ADAPTIVE FUNCTIONING, not IQ',
            'Developmental disability: More permanent condition; generally used after age 5-7 years',
            'Developmental dissociation: Markedly different rates across domains (e.g., normal motor, delayed language in ASD)',
            'Developmental deviance: Skills acquired in non-sequential order',
          ],
        ),
        PearlBlock(
          'Board Pearl — Adaptive Functioning',
          'In DSM-5, the severity of intellectual disability is classified by ADAPTIVE FUNCTIONING, not IQ score. This was a significant change from previous editions. Vineland Adaptive Behavior Scales and ABAS-3 are commonly used measures.',
        ),
        TableBlock(
          title: 'Intellectual Disability Severity',
          columns: ['Severity', 'Historical IQ Range', 'Adaptive Support Level'],
          rows: [
            ['Mild', '50-70', 'Intermittent support'],
            ['Moderate', '35-50', 'Limited support'],
            ['Severe', '20-35', 'Extensive support'],
            ['Profound', '<20', 'Pervasive support'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        PearlBlock(
          'Board Pearl — Corrected Age',
          'Corrected age = chronological age minus weeks of prematurity. Always use corrected age for developmental assessment of preterm infants until at least 2 years. Example: A 12-month-old born at 28 weeks (12 weeks early) has a corrected age of 9 months.',
        ),
        PearlBlock(
          'Board Pearl — Prematurity Risk',
          'Extremely preterm (<28 weeks): 25-50% have significant neurodevelopmental impairment. Very preterm (28-32 weeks): 10-25% significant impairment. Late preterm (34-36 weeks): Increased risk but majority develop normally.',
        ),
      ],
    ),
  ],
);
