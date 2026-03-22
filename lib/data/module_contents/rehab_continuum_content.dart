import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final rehabContinuumContent = TopicData(
  id: 'rehab-continuum',
  title: 'Rehabilitation Continuum',
  tabs: [
    // ============ TAB 1: Early Intervention (0-3) ============
    TopicTab(
      title: 'Early Intervention',
      blocks: [
        HeaderBlock('Early Intervention (Birth to 3 Years)'),

        HeaderBlock('IDEA Part C'),
        TextBlock(
          'The Individuals with Disabilities Education Act (IDEA) Part C provides early intervention services for infants and toddlers from birth to age 3 with developmental delays or established conditions.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'IFSP (Individualized Family Service Plan)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'FAMILY-centered plan (contrast with IEP which is child-centered)',
            'Services provided in NATURAL ENVIRONMENTS (home, daycare, community)',
            'Developed by multidisciplinary team WITH the family',
            'Reviewed every 6 months, updated annually',
            'Includes family goals and outcomes, not just child goals',
            'Service coordinator assigned to each family',
          ],
        ),
        BulletCardBlock(
          title: 'Eligibility for Part C',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Documented developmental delay in one or more domains',
            'Established condition with high probability of delay (Down syndrome, CP, spina bifida)',
            'At-risk criteria (varies by state — biological or environmental risk factors)',
            'Domains: Cognitive, physical, communication, social-emotional, adaptive',
          ],
        ),
        BulletCardBlock(
          title: 'Available Services',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Physical therapy (PT)',
            'Occupational therapy (OT)',
            'Speech-language pathology (SLP)',
            'Special instruction',
            'Service coordination (case management)',
            'Assistive technology',
            'Family training, counseling, and home visits',
            'Vision and audiology services',
          ],
        ),

        HeaderBlock('Transition from Part C to Part B'),
        BulletCardBlock(
          title: 'Transition at Age 3',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Transition planning must begin at least 90 days before the child turns 3',
            'IFSP transitions to IEP (Individualized Education Program)',
            'Family-centered (IFSP) becomes child-centered (IEP)',
            'Natural environment (home) transitions to school-based setting',
            'Not all children who qualify for Part C will qualify for Part B',
          ],
        ),

        HeaderBlock('Medical Home Model'),
        BulletCardBlock(
          title: 'Care Coordination',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Medical home: Comprehensive, coordinated, family-centered care framework',
            'Approximately 8% of children under age 15 have a disability',
            'Less than HALF of children with special health care needs receive adequate care coordination',
            'Medical home improves outcomes, reduces ER visits, and increases family satisfaction',
          ],
        ),

        HeaderBlock('Early Intervention for CP'),
        PearlBlock(
          'Board Pearl — Early Detection of CP',
          'Early intervention for CP can begin BEFORE a formal diagnosis is made. The combination of General Movements Assessment (GMA) + brain MRI + Hammersmith Infant Neurological Examination (HINE) allows identification of high-risk infants as early as 3-5 months corrected age. Early, activity-based intervention during this critical period of neuroplasticity optimizes outcomes.',
        ),
      ],
    ),

    // ============ TAB 2: School-Based Services & IDEA ============
    TopicTab(
      title: 'School Services',
      blocks: [
        HeaderBlock('School-Based Services & IDEA Part B'),

        HeaderBlock('IDEA Part B: Ages 3-21'),
        TextBlock(
          'IDEA Part B mandates a free appropriate public education (FAPE) for all children with disabilities ages 3-21, including related services necessary for the child to benefit from special education.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'IEP (Individualized Education Program)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'CHILD-centered plan (contrast with IFSP which is family-centered)',
            'Developed by IEP team: Parents, teachers, special education staff, related service providers',
            'Includes present levels of performance, measurable annual goals, and services',
            'Reviewed annually, re-evaluation every 3 years',
            'Must include transition planning by age 16 (some states age 14)',
          ],
        ),

        HeaderBlock('Least Restrictive Environment (LRE)'),
        BulletCardBlock(
          title: 'LRE Principle',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Children with disabilities must be educated with non-disabled peers to the MAXIMUM EXTENT APPROPRIATE',
            'Removal from regular education only when supplementary aids and services cannot achieve satisfactory education',
            'Continuum of placements: Regular class with supports, resource room, self-contained class, separate school',
            'Inclusion is the presumption — burden is on the school to justify more restrictive placement',
          ],
        ),

        HeaderBlock('504 Plan vs IEP'),
        BulletCardBlock(
          title: 'Section 504 of the Rehabilitation Act',
          themeColor: const Color(0xFFF59E0B),
          backgroundColor: const Color(0xFFFFFBEB),
          points: [
            'Civil rights law — prevents discrimination against individuals with disabilities',
            'Provides ACCOMMODATIONS ONLY (no special education services)',
            'For children who do not qualify for an IEP but still need accommodations',
            'Broader eligibility than IDEA: Any physical or mental impairment that substantially limits a major life activity',
            'Examples: Preferential seating, extra time on tests, modified assignments, elevator access',
          ],
        ),
        TableBlock(
          title: 'IEP vs 504 Plan Comparison',
          columns: ['Feature', 'IEP', '504 Plan'],
          rows: [
            ['Law', 'IDEA', 'Section 504\nRehabilitation Act'],
            ['Eligibility', '13 disability categories\n+ need for special ed', 'Any impairment\nlimiting major\nlife activity'],
            ['Services', 'Special education\n+ related services', 'Accommodations\nONLY'],
            ['Accommodations', 'Yes', 'Yes'],
            ['Related services', 'PT, OT, SLP,\ncounseling,\ntransportation', 'Not included'],
            ['Review frequency', 'Annual IEP review,\n3-year re-evaluation', 'Periodic review\n(no set schedule)'],
            ['Funding', 'Federal IDEA funding', 'No additional\nfunding'],
          ],
          headerColor: const Color(0xFF059669),
        ),

        HeaderBlock('School-Based Therapy'),
        BulletCardBlock(
          title: 'Related Services Under IDEA',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Related services include: PT, OT, SLP, counseling, transportation, school health services',
            'Therapy must be EDUCATIONALLY RELEVANT — must support the child\'s ability to access education',
            'School-based therapy focuses on function within the school environment',
            'Medical necessity alone does NOT qualify a child for school-based services',
            'Outpatient/clinic-based therapy may address medical needs not covered by school services',
          ],
        ),
        PearlBlock(
          'Board Pearl — IFSP vs IEP',
          'IFSP (Part C, birth-3) is FAMILY-centered, delivered in NATURAL environments. IEP (Part B, 3-21) is CHILD-centered, delivered in SCHOOL settings. The IFSP addresses family needs and priorities; the IEP addresses the child\'s educational needs. A 504 plan provides accommodations ONLY — no special education or related services.',
        ),
      ],
    ),

    // ============ TAB 3: Outcome Measures ============
    TopicTab(
      title: 'Outcome Measures',
      blocks: [
        HeaderBlock('Pediatric Outcome Measures'),

        HeaderBlock('Functional Measures'),
        BulletCardBlock(
          title: 'WeeFIM (Functional Independence Measure for Children)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            '18 items scored on a 7-point scale (1 = total assist to 7 = complete independence)',
            'Ages 6 months to 7 years (can be used in older children with disabilities)',
            '3 domains: Self-care, mobility, cognition',
            'Measures BURDEN OF CARE — how much help does the child need?',
            'Useful for tracking functional progress in inpatient rehabilitation',
          ],
        ),
        BulletCardBlock(
          title: 'PEDI (Pediatric Evaluation of Disability Inventory)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Ages 6 months to 7.5 years',
            '3 domains: Self-care, mobility, social function',
            '2 scales per domain:',
            '  - Functional skills scale = CAPABILITY (what the child CAN do)',
            '  - Caregiver assistance scale = PERFORMANCE (what the child DOES do)',
            'Distinguishes between capability and actual performance in daily life',
          ],
        ),
        BulletCardBlock(
          title: 'PEDI-CAT (Computer Adaptive Test)',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Computer adaptive version of the PEDI',
            'Extended age range: Birth to 21 years',
            '4 domains: Daily activities, mobility, social/cognitive, responsibility',
            'Adaptive algorithm selects items based on responses — faster administration',
          ],
        ),

        HeaderBlock('Motor Assessment'),
        BulletCardBlock(
          title: 'GMFM (Gross Motor Function Measure)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'GMFM-88: 88 items across 5 dimensions',
            'GMFM-66: 66-item Rasch-analyzed version (more precise interval-level measurement)',
            '5 dimensions: Lying/rolling, sitting, crawling/kneeling, standing, walking/running/jumping',
            'EVALUATIVE measure — specifically designed to detect CHANGE over time',
            'Criterion-referenced: Compared against what a typically developing 5-year-old can do',
            'Gold standard for measuring gross motor change in children with CP',
          ],
        ),
        PearlBlock(
          'Board Pearl — GMFCS vs GMFM',
          'GMFCS (Gross Motor Function Classification System) = CLASSIFICATION tool. It is stable over time and does NOT change with intervention. A child classified as GMFCS Level III stays Level III. GMFM (Gross Motor Function Measure) = EVALUATIVE tool. It measures change over time and is used to track progress with therapy or after surgery. Know this distinction for boards.',
        ),

        HeaderBlock('Developmental Screening & Assessment'),
        BulletCardBlock(
          title: 'Bayley-4 (Bayley Scales of Infant Development)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'GOLD STANDARD for infant and toddler developmental assessment',
            'Ages 1 to 42 months',
            '5 scales: Cognitive, language, motor, social-emotional, adaptive behavior',
            'Norm-referenced — compares to same-age peers',
            'DIAGNOSTIC tool (not a screening tool)',
          ],
        ),
        BulletCardBlock(
          title: 'Denver II',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'SCREENING tool — NOT diagnostic (identifies children who need further evaluation)',
            'Ages birth to 6 years',
            '4 domains: Gross motor, fine motor-adaptive, language, personal-social',
            'Results: Normal, suspect, abnormal, untestable',
          ],
        ),
        BulletCardBlock(
          title: 'ASQ-3 (Ages & Stages Questionnaire)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'PARENT-COMPLETED developmental screening questionnaire',
            'Ages 1 to 66 months',
            '5 domains: Communication, gross motor, fine motor, problem-solving, personal-social',
            'Quick, inexpensive, high sensitivity and specificity for community screening',
          ],
        ),

        HeaderBlock('Other Important Measures'),
        BulletCardBlock(
          title: 'COPM, Spasticity & Pain Scales',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'COPM (Canadian Occupational Performance Measure): Client-centered, rates both performance and satisfaction on self-identified goals (1-10 scale)',
            'MAS (Modified Ashworth Scale): Measures resistance to passive stretch (spasticity), ordinal scale 0-4',
            'Tardieu Scale: Measures spasticity at different velocities; R2 - R1 = dynamic component of spasticity',
            'FLACC: Pain scale for NONVERBAL children (0-7 years) — Face, Legs, Activity, Cry, Consolability',
            'Wong-Baker FACES: Pain scale for VERBAL children (age 3+) — child points to face that matches their pain',
          ],
        ),
        MnemonicBlock(
          'FLACC Pain Scale',
          'Face, Legs, Activity, Cry, Consolability — each scored 0-2 (total 0-10). Used for nonverbal children and those too young to self-report. Think of FLACC for children who CANNOT tell you their pain level.',
        ),
        PearlBlock(
          'Board Pearl — Tardieu vs Ashworth',
          'The Tardieu scale is considered superior to the Modified Ashworth Scale for measuring spasticity because it tests at different velocities and distinguishes the dynamic (velocity-dependent) component from the static (contracture) component. R2 - R1 = dynamic component. If R2 - R1 is large, the child is a good candidate for spasticity management (botulinum toxin, baclofen).',
        ),
      ],
    ),

    // ============ TAB 4: Transition Planning ============
    TopicTab(
      title: 'Transition Planning',
      blocks: [
        HeaderBlock('Transition to Adult Services'),

        HeaderBlock('Transition Planning Overview'),
        TextBlock(
          'Transition from pediatric to adult services is a critical process that must be comprehensive, coordinated, and begin early. Under IDEA, transition planning must be included in the IEP by age 16 (some states require age 14).',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Key Areas of Transition',
          themeColor: const Color(0xFF059669),
          backgroundColor: const Color(0xFFECFDF5),
          points: [
            'Medical care transition: Transfer from pediatric to adult healthcare providers',
            'Vocational planning: Career exploration, job training, supported employment',
            'Independent living skills: Self-care, cooking, money management, transportation',
            'Community participation: Recreation, social relationships, civic engagement',
            'Financial planning: SSI (Supplemental Security Income), SSDI (Social Security Disability Insurance)',
            'Guardianship vs supported decision-making: Legal considerations at age 18',
          ],
        ),

        HeaderBlock('Vocational & Post-Secondary Options'),
        BulletCardBlock(
          title: 'Vocational Rehabilitation Services',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'State-federal program providing services to individuals with disabilities to prepare for employment',
            'Services include: Vocational counseling, job training, job placement, assistive technology',
            'Eligibility: Physical or mental impairment that results in a substantial impediment to employment',
            'Transition-age youth (age 14+) can receive pre-employment transition services',
          ],
        ),
        BulletCardBlock(
          title: 'Post-Secondary Education & Community Integration',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'College disability services offices provide accommodations under ADA and Section 504',
            'Community-based day programs for individuals with significant disabilities',
            'Supported living and group home options',
            'Community recreation and leisure programs',
            'Transportation training and paratransit services',
          ],
        ),

        HeaderBlock('Family-Centered Care Principles'),
        BulletCardBlock(
          title: 'Core Principles',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Family is the CONSTANT in the child\'s life — professionals and systems change',
            'Collaborate with families as PARTNERS in care planning and decision-making',
            'Share COMPLETE and unbiased information with families',
            'Recognize and build on family STRENGTHS',
            'Respect cultural, racial, ethnic, and socioeconomic DIVERSITY',
            'Support family-to-family networking and peer support',
          ],
        ),

        HeaderBlock('Key Board Distinctions'),
        TableBlock(
          title: 'IFSP vs IEP vs 504 Plan',
          columns: ['Feature', 'IFSP', 'IEP', '504 Plan'],
          rows: [
            ['Law', 'IDEA Part C', 'IDEA Part B', 'Section 504'],
            ['Ages', 'Birth to 3', '3 to 21', 'Any age'],
            ['Focus', 'Family-centered', 'Child-centered', 'Accommodations'],
            ['Setting', 'Natural\nenvironments', 'School-based', 'School-based'],
            ['Services', 'EI services\n(PT, OT, SLP,\nspecial instruction)', 'Special education\n+ related services', 'Accommodations\nONLY'],
            ['Review', 'Every 6 months', 'Annual', 'Periodic'],
          ],
          headerColor: const Color(0xFF059669),
        ),
        PearlBlock(
          'Board Pearl — IDEA Parts B & C',
          'Part C (birth-3): IFSP, family-centered, natural environments, service coordination. Part B (3-21): IEP, child-centered, school-based, educationally relevant services. The 504 plan is NOT under IDEA — it is under Section 504 of the Rehabilitation Act and provides accommodations only, no special education services. Transition planning from Part C to Part B must begin at least 90 days before the child turns 3. Transition to adult services must be addressed in the IEP by age 16.',
        ),
      ],
    ),
  ],
);
