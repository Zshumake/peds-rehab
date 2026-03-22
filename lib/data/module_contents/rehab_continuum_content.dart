import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final rehabContinuumContent = TopicData(
  id: 'rehab-continuum',
  title: 'Rehabilitation Continuum',
  tabs: [
    // ============ TAB 1: Early Intervention (Part C) ============
    TopicTab(
      title: 'Early Intervention',
      blocks: [
        HeaderBlock('Early Intervention (Birth to 3 Years)'),

        HeaderBlock('IDEA Part C: Legislative Framework'),
        TextBlock(
          'The Individuals with Disabilities Education Act (IDEA), most recently reauthorized in 2004 (PL 108-446), traces its origins to the Education for All Handicapped Children Act of 1975 (PL 94-142). Part C establishes the federal framework for early intervention services for infants and toddlers from birth through age 2 (up to the third birthday).',
          isIntro: true,
        ),
        TableBlock(
          title: 'IDEA Part C Key Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['Age range', 'Birth to 3 years\n(0-36 months)'],
            ['Service plan', 'IFSP (Individualized\nFamily Service Plan)'],
            ['Focus', 'FAMILY-centered;\nfamily is the unit\nof service'],
            ['Setting', 'NATURAL environments\n(home, daycare,\ncommunity)'],
            ['Eligibility', 'Developmental delay\n(state-defined),\nestablished condition,\nor at-risk status\n(some states)'],
            ['Services', 'PT, OT, SLP, special\ninstruction, audiology,\nvision, nutrition,\nsocial work, service\ncoordination'],
            ['Service\ncoordinator', 'Required; single\npoint of contact'],
            ['Cost', 'Free evaluation;\nstates may charge\nsliding-scale fees'],
            ['Lead agency', 'Varies by state\n(health, education,\nor DD agency)'],
            ['Timeline', 'Evaluation within\n45 days of referral;\nIFSP within 45 days'],
            ['Review', 'Every 6 months\n(interim); annually\n(full review)'],
            ['Transition', 'Must begin at age 2.5\n(at least 90 days\nbefore 3rd birthday)'],
          ],
          headerColor: const Color(0xFF059669),
        ),
        BulletCardBlock(
          title: 'IFSP (Individualized Family Service Plan)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'FAMILY-centered plan (contrast with IEP which is CHILD-centered)',
            'Services provided in NATURAL ENVIRONMENTS (where child and family naturally spend time)',
            'Developed by multidisciplinary team WITH the family',
            'Reviewed every 6 months, updated annually',
            'Includes FAMILY goals and outcomes, not just child goals',
            'Service coordinator assigned to each family (single point of contact)',
            'Addresses family outcomes and priorities, not just child-focused goals',
          ],
        ),
        BulletCardBlock(
          title: 'Eligibility for Part C',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Documented developmental delay in one or more domains (state-defined criteria)',
            'Established condition with high probability of delay (Down syndrome, CP, spina bifida, hearing loss, genetic syndromes)',
            'At-risk criteria (varies by state -- biological or environmental risk factors)',
            'Domains: Cognitive, physical, communication, social-emotional, adaptive',
            '~400,000-430,000 infants/toddlers receive Part C services annually (~3.4% of birth-to-3 population)',
          ],
        ),
        BulletCardBlock(
          title: 'Available Part C Services',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Physical therapy (PT)',
            'Occupational therapy (OT)',
            'Speech-language pathology (SLP)',
            'Special instruction',
            'Service coordination (case management)',
            'Assistive technology devices and services',
            'Family training, counseling, and home visits',
            'Vision and audiology services',
            'Nutrition and social work services',
          ],
        ),

        HeaderBlock('Transition from Part C to Part B'),
        BulletCardBlock(
          title: 'Transition at Age 3',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Transition planning must begin at age 2.5 (at least 90 days before the child turns 3)',
            'IFSP transitions to IEP (Individualized Education Program)',
            'Family-centered (IFSP) becomes child-centered (IEP)',
            'Natural environment (home) transitions to school-based setting (LRE)',
            'Not all children who qualify for Part C will qualify for Part B',
            'Families often experience this as a loss of personalized, home-based services',
            'Rehab professionals play a key role in preparing families for this shift',
          ],
        ),

        HeaderBlock('Medical Home & Early Detection'),
        BulletCardBlock(
          title: 'Medical Home Model',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'AAP-defined model: Accessible, continuous, comprehensive, family-centered, coordinated, compassionate, culturally effective',
            'NOT a physical location -- it is a model of delivering primary care',
            'Physician-directed, team-based, whole-child approach',
            'Hub for coordinating care across medical, rehab, education, and community services',
            '~8% of children under 15 have a disability',
            'Less than HALF of CSHCN receive adequate care coordination',
            'Medical home improves outcomes, reduces ER visits, increases family satisfaction',
          ],
        ),
        PearlBlock(
          'Board Pearl — Early Detection of CP',
          'Early intervention for CP can begin BEFORE a formal diagnosis is made. The combination of General Movements Assessment (GMA) + brain MRI + Hammersmith Infant Neurological Examination (HINE) allows identification of high-risk infants as early as 3-5 months corrected age. Early, activity-based intervention during this critical period of neuroplasticity optimizes outcomes.',
        ),
        PearlBlock(
          'Board Pearl — Part C Defining Feature',
          'The defining feature of Part C is its FAMILY-centered orientation. The IFSP addresses family outcomes and priorities, not just child-focused goals. Services are delivered in NATURAL environments -- not clinical or school-based settings. This philosophical distinction from Part B (child-centered, school-based) is a core board concept.',
        ),
      ],
    ),

    // ============ TAB 2: School-Based Services & IDEA Part B ============
    TopicTab(
      title: 'School Services',
      blocks: [
        HeaderBlock('School-Based Services & IDEA Part B'),

        HeaderBlock('IDEA Part B: Ages 3-21'),
        TextBlock(
          'IDEA Part B mandates a free appropriate public education (FAPE) for all children with disabilities ages 3-21, including related services necessary for the child to benefit from special education. Approximately 7.5 million students (~15% of all public school students) receive services under Part B.',
          isIntro: true,
        ),
        TableBlock(
          title: 'IDEA Part B Key Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['Age range', '3-21 years'],
            ['Service plan', 'IEP (Individualized\nEducation Program)'],
            ['Focus', 'Child/student-centered;\neducation-focused'],
            ['Setting', 'Least Restrictive\nEnvironment (LRE)'],
            ['Eligibility', 'Must meet 1 of 13\ndisability categories\nAND need specially\ndesigned instruction'],
            ['Services', 'Special education +\nrelated services\n(PT, OT, SLP,\ncounseling, transport, AT)'],
            ['IEP team', 'Parent, regular ed\nteacher, special ed\nteacher, LEA rep,\nevaluation specialist'],
            ['Transition', 'Must begin by age 16\n(some states age 14)'],
            ['Review', 'Annual IEP review;\nre-evaluation every\n3 years'],
            ['Cost', 'Free -- FAPE is\nguaranteed'],
          ],
          headerColor: const Color(0xFF059669),
        ),
        BulletCardBlock(
          title: 'IEP (Individualized Education Program)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'CHILD-centered plan (contrast with IFSP which is family-centered)',
            'Developed by IEP team: Parents, teachers, special ed staff, related service providers',
            'Includes present levels of performance, measurable annual goals, and services',
            'Reviewed annually, re-evaluation every 3 years',
            'Must include transition planning by age 16 (some states age 14)',
            'Student must be invited to IEP meeting when transition goals are discussed',
            'At age of majority (18), educational rights transfer from parent to student unless guardianship established',
          ],
        ),

        HeaderBlock('Free Appropriate Public Education (FAPE)'),
        BulletCardBlock(
          title: 'Key Supreme Court Decisions',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Board of Education v. Rowley (1982): FAPE requires "some educational benefit" -- IDEA does not guarantee the "best" education',
            'Endrew F. v. Douglas County (2017): RAISED the standard significantly -- IEP must be "reasonably calculated to enable progress appropriate in light of child\'s circumstances"',
            'Endrew F. rejected the prior "merely more than de minimis" standard and required meaningful, individualized progress',
            'Endrew F. is particularly important for children with severe disabilities -- even they require challenging, individualized objectives',
          ],
        ),

        HeaderBlock('Least Restrictive Environment (LRE)'),
        BulletCardBlock(
          title: 'LRE Continuum (Least to Most Restrictive)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Children must be educated with non-disabled peers to MAXIMUM EXTENT APPROPRIATE',
            '1. General education classroom with supports',
            '2. General education with resource room services',
            '3. Self-contained special education classroom',
            '4. Separate school for students with disabilities',
            '5. Homebound instruction',
            '6. Hospital or institutional setting',
            'Inclusion is the presumption -- burden on school to justify more restrictive placement',
          ],
        ),

        HeaderBlock('IEP vs 504 Plan'),
        TableBlock(
          title: 'IEP vs 504 Plan Comparison',
          columns: ['Feature', 'IEP (IDEA Part B)', '504 Plan'],
          rows: [
            ['Governing law', 'IDEA (2004)\nEducation\nentitlement', 'Section 504\nRehab Act (1973)\nCivil rights'],
            ['Eligibility', '1 of 13 disability\ncategories + need\nspecially designed\ninstruction', 'Any impairment\nsubstantially\nlimiting a major\nlife activity\n(BROADER)'],
            ['Services', 'Special education\n+ related services', 'Accommodations\nand modifications\nONLY'],
            ['Written plan', 'Detailed formal\nIEP document', '504 plan\n(less formal)'],
            ['Related\nservices', 'PT, OT, SLP,\ncounseling,\ntransportation', 'Not included'],
            ['Review', 'Annual IEP review;\n3-year re-evaluation', 'Periodic review\n(no set schedule)'],
            ['Procedural\nsafeguards', 'Extensive\n(due process,\nmediation)', 'Less extensive'],
            ['Funding', 'Federal IDEA\nfunding', 'No additional\nfunding'],
          ],
          headerColor: const Color(0xFF059669),
        ),
        BulletCardBlock(
          title: 'Common 504 Plan Scenarios',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Diabetes: Blood glucose monitoring, snack accommodations',
            'Epilepsy: Seizure action plan, medication administration',
            'ADHD without need for specially designed instruction: Preferential seating, extended test time',
            'Food allergies: Allergen-free environment',
            'Asthma: Inhaler access, activity modifications',
            'Every child with an IEP is automatically protected under 504, but NOT vice versa',
          ],
        ),

        HeaderBlock('Related Services & Key Legal Cases'),
        BulletCardBlock(
          title: 'Related Services Under IDEA',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Must be EDUCATIONALLY RELEVANT -- support the child\'s ability to access education',
            'Medical necessity alone does NOT qualify for school-based services',
            'Medical services under IDEA limited to DIAGNOSTIC purposes only',
            'Cedar Rapids v. Garret F. (1999): Services performable by a nurse (not physician) = related services under IDEA',
            'Irving ISD v. Tatro (1984): Clean intermittent catheterization IS a related service',
            'Honig v. Doe (1988): Cannot expel/suspend >10 days if behavior is a manifestation of disability',
            'Timothy W. v. Rochester (1989): Zero-reject principle -- ALL children entitled to education regardless of disability severity',
            'AT devices and services must be considered for every child with an IEP',
          ],
        ),
        PearlBlock(
          'Board Pearl — IFSP vs IEP',
          'IFSP (Part C, birth-3) is FAMILY-centered, delivered in NATURAL environments, reviewed every 6 months. IEP (Part B, 3-21) is CHILD-centered, delivered in SCHOOL settings (LRE), reviewed annually. The IFSP addresses family needs; the IEP addresses educational needs. A 504 plan provides accommodations ONLY -- no special education or related services. Section 504 eligibility is BROADER than IDEA.',
        ),
      ],
    ),

    // ============ TAB 3: Transition to Adulthood ============
    TopicTab(
      title: 'Transition',
      blocks: [
        HeaderBlock('Transition to Adult Services'),
        TextBlock(
          'Transition is not a single event but a process that unfolds over a decade or more. The most effective programs begin early (age 12-14), are systematic, youth-directed, and coordinated across healthcare, education, and community systems.',
          isIntro: true,
        ),

        HeaderBlock('Got Transition: 6 Core Elements'),
        TableBlock(
          title: 'Got Transition Framework (AAP/ACP/AAFP Endorsed)',
          columns: ['Core Element', 'Target Age', 'Description'],
          rows: [
            ['1. Transition\nPolicy', '12-14 years', 'Establish office-wide\ntransition policy;\nintroduce transition\nconcept to youth\nand families'],
            ['2. Tracking &\nMonitoring', '14-18 years', 'Implement tracking\nsystem; identify\nyouth approaching\ntransition age'],
            ['3. Transition\nReadiness', '14-18 years', 'Assess readiness\nwith validated tools;\neducate in self-\nmanagement and\nself-advocacy'],
            ['4. Transition\nPlanning', '14-18 years', 'Develop written\ntransition plan;\nidentify adult\nproviders; create\nportable medical\nsummary'],
            ['5. Transfer\nof Care', '18-21 years', 'Execute transfer;\nsend records;\nestablish communication\nbetween pediatric\nand adult providers'],
            ['6. Transfer\nCompletion', '18-26 years', 'Confirm integration\ninto adult care;\nobtain feedback from\nyoung adult and\nadult provider'],
          ],
          headerColor: const Color(0xFF059669),
        ),
        PearlBlock(
          'Board Pearl — Transition Timing',
          'Transition planning should begin at age 12-14 -- NOT at age 18 when transfer is imminent. This early start allows time to build self-management skills, foster self-advocacy, and establish a relationship with the concept of adult healthcare. Only ~50% of youth with special health care needs receive any form of transition planning (significant disparities by race, income, condition severity).',
        ),

        HeaderBlock('IDEA Transition Planning'),
        BulletCardBlock(
          title: 'Transition Under IDEA Part B',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'IEP must include transition planning by age 16 (some states age 14)',
            'Appropriate measurable postsecondary goals in education/training, employment, and independent living',
            'Transition services needed to reach those goals',
            'Course of study aligned with postsecondary goals',
            'Interagency involvement (VR, community agencies, adult service providers)',
            'Student must be invited to IEP meeting when transition goals are discussed',
            'At age of majority (18): Educational rights transfer to student unless guardianship established',
            'Upon exiting IDEA (graduation or aging out at 21): School provides Summary of Performance (SOP)',
          ],
        ),

        HeaderBlock('ADA & IDEA Transition'),
        BulletCardBlock(
          title: 'Americans with Disabilities Act (ADA)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'ADA (PL 101-336, 1990; amended 2008) extends disability protections beyond federally funded programs',
            'Title I: Employment (employers 15+ employees must provide reasonable accommodations)',
            'Title II: State/local government (accessible public services, transportation, schools)',
            'Title III: Public accommodations (restaurants, hotels, medical offices -- architectural accessibility)',
            'Title IV: Telecommunications (relay services for deaf/hard of hearing)',
            'IDEA ends at age 21 or graduation -- ADA provides LIFELONG protections',
            'For transitioning youth: ADA becomes the primary disability rights law governing workplace, community access, healthcare',
          ],
        ),

        HeaderBlock('Vocational Rehabilitation & WIOA'),
        BulletCardBlock(
          title: 'WIOA (Workforce Innovation and Opportunity Act, 2014)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Replaced the Workforce Investment Act; expanded VR services for youth with disabilities',
            'State-federal partnership: Federally funded, state-administered',
            'Eligibility: Disability constituting substantial impediment to employment',
            'Order of selection: Most significant disabilities served first when resources limited',
            'WIOA mandates 15% of federal VR funding for Pre-Employment Transition Services (Pre-ETS) for students ages 14-21',
          ],
        ),
        BulletCardBlock(
          title: '5 Required Pre-Employment Transition Services (Pre-ETS)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            '1. Job exploration counseling: Career interest inventories, labor market info, workplace tours',
            '2. Work-based learning experiences: Internships, apprenticeships, community-based work, on-the-job training',
            '3. Counseling on post-secondary enrollment: College exploration, vocational training programs, application assistance',
            '4. Workplace readiness training: Social skills, independent living skills, financial literacy, workplace norms',
            '5. Instruction in self-advocacy: Understanding rights, communicating needs, requesting accommodations',
          ],
        ),
        PearlBlock(
          'Board Pearl — WIOA Pre-ETS',
          'WIOA represents a fundamental shift toward earlier, PROACTIVE vocational preparation. Before WIOA, VR services were reactive (individuals applied after leaving school). WIOA requires VR agencies to engage students WHILE STILL IN SECONDARY SCHOOL, creating a seamless pathway from education to employment.',
        ),
      ],
    ),

    // ============ TAB 4: SSI/SSDI, Guardianship & Aging ============
    TopicTab(
      title: 'Benefits & Aging',
      blocks: [
        HeaderBlock('Financial Benefits & Legal Considerations'),

        HeaderBlock('SSI & SSDI Eligibility'),
        BulletCardBlock(
          title: 'SSI (Supplemental Security Income) for Children',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Provides cash benefits to children with disabilities in families with limited income/resources',
            'Disability standard: Marked and severe functional limitations expected to last >12 months (or result in death)',
            'MEANS-TESTED: Family income and resources must fall below established thresholds',
            'Functional assessment domains: Acquiring/using info, attending/completing tasks, interacting with others, moving/manipulating objects, self-care, health/physical well-being',
            'AGE-18 REDETERMINATION: Eligibility redetermined using ADULT criteria at age 18',
            'At age 18: Only the INDIVIDUAL\'s own income/resources counted (not family\'s)',
            'Some children lose SSI because disability may not meet adult standard',
            'Others previously ineligible due to family income may NOW qualify based on own limited resources',
          ],
        ),
        BulletCardBlock(
          title: 'SSDI: Disabled Adult Child (DAC) Benefits',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Available to adults who became disabled BEFORE age 22',
            'Benefits drawn from a PARENT\'s Social Security earnings record (parent must be retired, disabled, or deceased)',
            'Unlike SSI, DAC benefits are NOT means-tested',
            'Often substantially HIGHER than SSI payments',
            'Documentation of disability onset before age 22 must be established',
            'Critical safety net discussed during transition planning',
          ],
        ),
        PearlBlock(
          'Board Pearl — SSI vs DAC',
          'SSI is MEANS-TESTED (based on income/resources). DAC (Disabled Adult Child) benefits under SSDI are NOT means-tested -- they are based on the PARENT\'s work history. DAC benefits require documentation that disability onset was BEFORE age 22. At age 18, SSI eligibility is redetermined using adult criteria and only the individual\'s own resources (not family\'s).',
        ),

        HeaderBlock('Guardianship & Supported Decision-Making'),
        TableBlock(
          title: 'Decision-Making Continuum (Least to Most Restrictive)',
          columns: ['Level', 'Support Type', 'Key Features'],
          rows: [
            ['1', 'Informal supports', 'Natural family\nassistance;\nno legal designation'],
            ['2', 'Supported Decision-\nMaking (SDM)', 'Formal agreement;\nindividual retains\nALL legal rights'],
            ['3', 'Power of Attorney', 'Individual grants\nauthority voluntarily;\nrevocable'],
            ['4', 'Representative\nPayee', 'Manages Social\nSecurity benefits\nonly'],
            ['5', 'Health Care Proxy /\nAdvance Directive', 'Medical decisions\nonly'],
            ['6', 'Conservatorship', 'Financial decisions\nonly (some states)'],
            ['7', 'Limited\nGuardianship', 'Authority in\nspecified areas\nonly'],
            ['8', 'Full (Plenary)\nGuardianship', 'Guardian makes ALL\ndecisions; MOST\nrestrictive'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        BulletCardBlock(
          title: 'Supported Decision-Making (SDM)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Paradigm shift from substituted judgment to supported AUTONOMY',
            'Individual retains ALL legal decision-making authority',
            'Designates trusted supporters who help understand information, weigh options, communicate decisions',
            'Supporters may NOT make decisions for the person or override their choices',
            'Texas became first state to pass SDM legislation (2015); >15 states since',
            'National Council on Disability advocates strongly for SDM over guardianship (2018 report)',
          ],
        ),
        BulletCardBlock(
          title: 'Full Guardianship',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Court proceeding determines individual lacks capacity',
            'Guardian appointed to make ALL decisions: Medical, financial, legal, residential',
            'Individual LOSES their legal right to make independent decisions',
            'MOST RESTRICTIVE option -- should be a LAST RESORT',
            'Trend in disability rights and law: Toward least restrictive alternative',
            'Many who would have been placed under full guardianship can be supported through SDM',
          ],
        ),
        PearlBlock(
          'Board Pearl — Guardianship Spectrum',
          'Guardianship is the MOST restrictive decision-making option and should be a LAST RESORT. The trend in disability rights is toward the LEAST restrictive alternative. Supported Decision-Making preserves ALL legal rights while providing assistance. Rehab physicians should understand the full continuum and advocate for the least restrictive option appropriate to each patient.',
        ),

        HeaderBlock('Aging with Childhood-Onset Disability'),
        BulletCardBlock(
          title: 'Aging with Cerebral Palsy',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Life expectancy: GMFCS I-III near-normal; GMFCS IV-V significantly reduced (50-60% survive to ages 30-40)',
            'NECK PAIN is the MOST COMMON musculoskeletal complaint in adults with CP (60-80%) -- not back or hip',
            'Caused by abnormal posturing, cervical degenerative disease, prolonged wheelchair use',
            'Cervical myelopathy may develop, particularly in dyskinetic CP',
            'Chronic pain: 50-75% (back, hip, knee -- multifactorial)',
            'Fatigue: >50% -- major contributor to functional decline (excessive energy expenditure)',
            'Functional decline: 25-40% report declining walking by ages 30-40; many transition to wheelchair',
            'Depression: 2-3x general population rate (under-recognized, under-treated)',
            'Osteoporosis: Increased prevalence, especially non-ambulatory; increased fracture risk',
            'Dysphagia: May worsen with aging; increased aspiration pneumonia risk',
          ],
        ),
        BulletCardBlock(
          title: 'Aging with Spina Bifida',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Life expectancy: ~70-80% survive to adulthood with current care',
            'UROLOGIC/RENAL complications = single greatest threat to longevity after childhood',
            '~40% of deaths ages 5-30 are urologic/renal in origin (CRF from reflux, hydronephrosis, recurrent pyelonephritis)',
            'Shunt complications: Second major cause of mortality; 96% need at least one revision, 86% need 2+',
            'Latex allergy: 40-70% prevalence (repeated surgical/catheterization exposures)',
            'Obesity: >50% prevalence (reduced mobility, lower metabolic rate)',
            'Pressure injuries: Insensate skin below lesion -- lifelong risk',
            'Tethered cord recurrence: 15-30% after initial repair (pain, weakness, scoliosis, changing bladder function)',
            'Chiari II: Present in >95% with myelomeningocele; 5-10% become symptomatic',
            'Sexual health: Males ~80% erectile dysfunction, most infertile; females -- fertility preserved but high-risk pregnancies',
          ],
        ),
        BulletCardBlock(
          title: 'Aging with DMD',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Median life expectancy: Late twenties to early thirties (individuals born after 1990)',
            'Cardiomyopathy: Universal by age 18; LEADING cause of death; dilated cardiomyopathy; ACE inhibitors/ARBs started early, prophylactically',
            'Respiratory decline: FVC <50% triggers nocturnal BiPAP; FVC <30% or daytime hypercapnia = continuous ventilation; cough assist when peak cough flow <270 L/min',
            'Loss of ambulation: ~12-15 years with corticosteroid therapy (vs 10-12 without)',
            'Scoliosis: >90% after loss of ambulation; posterior spinal fusion when curve >20-25 deg while growing',
            'Bone health: Osteoporosis from non-ambulation + chronic steroids; vertebral/long bone fractures common',
            'ANESTHESIA WARNING: Succinylcholine is ABSOLUTELY CONTRAINDICATED (fatal hyperkalemia/rhabdomyolysis); avoid potent inhaled halogenated anesthetics; use TIVA',
          ],
        ),

        HeaderBlock('Employment Outcomes'),
        BulletCardBlock(
          title: 'Vocational Predictors in CP',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Employment gap: ~22.5% of persons with disabilities employed vs ~65.8% non-disabled',
            'Four key predictors of employment in adults with CP:',
            '1. Cognitive ability / IQ -- the SINGLE STRONGEST predictor',
            '2. Ambulation status -- community ambulation correlates with higher employment',
            '3. Speech / communication ability -- intelligible speech predicts better outcomes',
            '4. Hand function / manual ability (MACS level)',
            'Employment rates in CP: ~30-50% depending on population and functional limitations',
            '~65-70% of youth with disabilities graduate high school (vs ~85% general population)',
          ],
        ),

        HeaderBlock('Key Transition Summary'),
        TableBlock(
          title: 'The Transition Landscape',
          columns: ['Domain', 'Pediatric System', 'Adult System'],
          rows: [
            ['Healthcare', 'Pediatric medical\nhome', 'Adult primary care\n+ specialists\n(Got Transition\n6 Core Elements)'],
            ['Education', 'IDEA Part B\n(ages 3-21)', 'ADA Title II/III;\npost-secondary\nsupports'],
            ['Employment', 'Pre-ETS under\nWIOA (ages 14-21)', 'VR + ADA Title I\nworkplace\naccommodations'],
            ['Income\nsupport', 'SSI (family\nmeans-tested)', 'SSI (individual)\nor SSDI/DAC'],
            ['Decision-\nmaking', 'Parent authority', 'SDM, POA, limited/\nfull guardianship'],
            ['Insurance', 'Parents\' plan\nor Medicaid', 'ACA to age 26;\nMedicaid; SSDI\nMedicare; employer'],
          ],
          headerColor: const Color(0xFF059669),
        ),
        PearlBlock(
          'Board Pearl — Aging with CP',
          'NECK PAIN (not back or hip) is the most common musculoskeletal complaint in adults with CP (Murphy et al. 1995 -- frequently tested). Mechanism: chronic abnormal head/neck posturing, accelerated cervical degeneration, prolonged wheelchair use. In dyskinetic CP with cervical dystonia, cervical myelopathy may develop. Cognitive function is the SINGLE strongest predictor of eventual employment in CP.',
        ),
      ],
    ),

    // ============ TAB 5: IFSP/IEP/504 Comparison & Key Cases ============
    TopicTab(
      title: 'Comparison & Law',
      blocks: [
        HeaderBlock('IFSP vs IEP vs 504 Plan'),
        TextBlock(
          'Understanding the distinctions between these three service/accommodation plans is essential for board preparation. Each has a different governing law, eligibility criteria, scope of services, and review schedule.',
          isIntro: true,
        ),
        TableBlock(
          title: 'IFSP vs IEP vs 504 Plan',
          columns: ['Feature', 'IFSP', 'IEP', '504 Plan'],
          rows: [
            ['Law', 'IDEA Part C', 'IDEA Part B', 'Section 504\nRehab Act'],
            ['Ages', 'Birth to 3', '3 to 21', 'Any age'],
            ['Focus', 'Family-\ncentered', 'Child-\ncentered', 'Accommodations'],
            ['Setting', 'Natural\nenvironments', 'LRE\n(school-based)', 'School-based'],
            ['Eligibility', 'Developmental\ndelay,\nestablished\ncondition,\nor at-risk', '1 of 13\ndisability\ncategories +\nneed specially\ndesigned\ninstruction', 'Any impairment\nsubstantially\nlimiting a\nmajor life\nactivity'],
            ['Services', 'EI services\n(PT, OT, SLP,\nspecial\ninstruction)', 'Special ed\n+ related\nservices', 'Accommodations\nONLY'],
            ['Review', 'Every\n6 months', 'Annual', 'Periodic\n(no set\nschedule)'],
            ['Cost', 'May have\nfamily cost\nsharing', 'Free\n(FAPE)', 'No additional\nfunding'],
          ],
          headerColor: const Color(0xFF059669),
        ),

        HeaderBlock('Key Legal Cases in Special Education'),
        TableBlock(
          title: 'Landmark Legal Cases',
          columns: ['Case', 'Year', 'Key Ruling'],
          rows: [
            ['Board of Ed\nv. Rowley', '1982', 'FAPE requires\n"some educational\nbenefit"'],
            ['Endrew F.\nv. Douglas\nCounty', '2017', 'FAPE must enable\nprogress "appropriate\nin light of child\'s\ncircumstances"'],
            ['Cedar Rapids\nv. Garret F.', '1999', 'Nurse-performable\nservices are\nrelated services\nunder IDEA'],
            ['Irving ISD\nv. Tatro', '1984', 'CIC is a\nrelated service'],
            ['Honig\nv. Doe', '1988', 'Cannot expel/\nsuspend >10 days\nif behavior is\nmanifestation of\ndisability'],
            ['Timothy W.\nv. Rochester', '1989', 'Zero-reject:\nALL children\nentitled to\neducation\nregardless of\ndisability severity'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        PearlBlock(
          'Board Pearl — Timothy W. Zero-Reject',
          'Timothy W. v. Rochester established the zero-reject principle: Even a child in a persistent vegetative state is entitled to public education under IDEA. This eliminated any "severity threshold" for educational eligibility. Rehab physicians may be asked to document educational needs of children with the most severe disabilities.',
        ),

        HeaderBlock('Post-Secondary Education'),
        BulletCardBlock(
          title: 'Think College Programs for Students with ID',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Higher Education Opportunity Act of 2008 (HEOA) created Comprehensive Transition and Postsecondary (CTP) programs',
            'Extended federal financial aid (Pell Grants, Federal Work-Study) to students with ID in approved CTP programs',
            'More than 300 post-secondary education programs tracked by Think College',
            'Models: Inclusive individual support (fully included in regular courses), mixed/hybrid, substantially separate',
            'Research: Participation in inclusive post-secondary education improves employment outcomes and independent living',
            'College disability services offices provide accommodations under ADA and Section 504',
          ],
        ),

        HeaderBlock('Family-Centered Care Principles'),
        BulletCardBlock(
          title: 'Core Principles',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Family is the CONSTANT in the child\'s life -- professionals and systems change',
            'Collaborate with families as PARTNERS in care planning and decision-making',
            'Share COMPLETE and unbiased information with families',
            'Recognize and build on family STRENGTHS',
            'Respect cultural, racial, ethnic, and socioeconomic DIVERSITY',
            'Support family-to-family networking and peer support',
          ],
        ),
        PearlBlock(
          'Board Pearl — Master Summary',
          'Part C (birth-3): IFSP, family-centered, natural environments, service coordination, 90-day transition before 3rd birthday. Part B (3-21): IEP, child-centered, school-based (LRE), educationally relevant, transition planning by age 16. 504: Section 504, accommodations ONLY, BROADER eligibility. ADA: Lifelong protections (employment, public services, community). Got Transition: 6 Core Elements starting age 12-14. WIOA: 5 Pre-ETS services for students 14-21. SSI: Means-tested; age-18 redetermination. DAC: Not means-tested; disability onset before 22. Guardianship: Most restrictive -- consider SDM first.',
        ),
      ],
    ),
  ],
);
