import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final pediatricNeurotraumaContent = TopicData(
  id: 'pediatric-neurotrauma',
  title: 'Pediatric Neurotrauma (TBI + SCI)',
  tabs: [
    // ============ TAB 1: Pediatric TBI Fundamentals ============
    TopicTab(
      title: 'TBI Fundamentals',
      blocks: [
        HeaderBlock('Pediatric Traumatic Brain Injury'),
        TextBlock(
          'TBI is the #1 cause of death and acquired disability in children and adolescents. In the US, approximately 475,000 TBI-related ED visits per year occur in children <14 years, resulting in ~35,000 hospitalizations and ~2,200 deaths annually. The severity distribution is approximately 80% mild, 10% moderate, and 10% severe.',
          isIntro: true,
        ),

        HeaderBlock('Age Distribution & Mechanism'),
        TableBlock(
          title: 'Leading Causes of Pediatric TBI by Age',
          columns: ['Age Group', 'Primary Mechanisms'],
          rows: [
            ['Infants (<1yr)', 'Falls; abusive head\ntrauma (significant\ncause of severe TBI)'],
            ['Toddlers/Preschool\n(1-4yr)', 'Falls (most common\nmechanism overall)'],
            ['School-age\n(5-14yr)', 'Falls, sports/recreation,\nbicycle injuries,\nmotor vehicle collisions'],
            ['Adolescents\n(15-19yr)', 'Motor vehicle collisions\n(driver/passenger),\nsports, assaults'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        MnemonicBlock(
          'TBI Causes by Age',
          'Falls lead in young children; motor vehicle collisions lead in adolescents. Abusive head trauma is the most common cause of traumatic DEATH in children <2 years. Sport-related concussion accounts for an estimated 1.1 to 1.9 million injuries annually in those <18 years.',
        ),

        HeaderBlock('Primary vs Secondary Injury'),
        ComparisonCardBlock(
          title: 'Primary Injury',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.flash_on_rounded,
          description: 'Occurs at the moment of impact. Irreversible mechanical damage. NOT amenable to treatment -- only prevention.',
          keyPoints: [
            'Contact forces: Skull fracture, epidural/subdural hematoma, contusion',
            'Inertial forces: Diffuse axonal injury (DAI) from shearing at gray-white junctions, corpus callosum, brainstem',
            'Cannot be treated after it occurs',
          ],
        ),
        ComparisonCardBlock(
          title: 'Secondary Injury',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          icon: Icons.timeline_rounded,
          description: 'Evolves over hours to days. This is the TARGET of all acute medical management.',
          keyPoints: [
            'Cerebral edema and elevated ICP; herniation risk',
            'Hypotension and hypoxia: Most potent predictors of poor outcome',
            'Excitotoxicity: Massive glutamate release, calcium influx',
            'Neuroinflammation, ischemia, metabolic crisis',
            'Seizures increase metabolic demand and ICP',
            'Coagulopathy from tissue factor release',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Hypotension & Hypoxia',
          'Hypotension and hypoxia are the two most modifiable secondary insults. Even a SINGLE documented episode of hypotension in the acute period significantly worsens outcomes. Aggressive prevention of these derangements is the cornerstone of acute TBI management.',
        ),

        HeaderBlock('Pediatric vs Adult TBI Differences'),
        TableBlock(
          title: 'Pediatric vs Adult TBI Key Differences',
          columns: ['Feature', 'Pediatric TBI', 'Adult TBI'],
          rows: [
            ['Skull', 'Thinner, more\ndeformable; open\nfontanelles in\ninfants', 'Rigid skull;\nfracture patterns\ncorrespond to\nforce vectors'],
            ['Brain', 'Higher water\ncontent; less myelin;\nmore susceptible\nto diffuse injury', 'Higher myelin;\ngreater resistance\nto shearing'],
            ['Injury\npattern', 'More diffuse\ninjuries; less focal\ncontusion; diffuse\nswelling common', 'More focal\ncontusions and\nhemorrhages'],
            ['Epidural\nhematoma', 'Less common;\nartery not yet in\nbony groove;\nvenous bleeding\nfrom dural sinuses', 'More common;\ntypically arterial\nfrom meningeal\nvessel laceration'],
            ['Concussion\nrecovery', '2-4 weeks\n(longer than adults)', '10-14 days'],
            ['Persistent\nsymptoms', 'Defined as\n>4 weeks', 'Defined as\n>2 weeks'],
            ['Seizures', 'Higher early\nseizure rate\n(especially <2yr);\nlower late PTE', 'Lower early\nseizure rate;\nhigher late PTE'],
            ['Growing into\ndeficits', 'Unique to\npediatric TBI;\nemerging deficits\nyears later', 'Not applicable;\ndeficits manifest\nimmediately'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        PearlBlock(
          'Board Pearl -- Skull Fractures',
          'The presence or absence of a skull fracture does NOT indicate the severity of brain injury. A child can have devastating diffuse axonal injury with no skull fracture, or a linear skull fracture with minimal brain injury. Children have more diffuse injuries vs focal contusions/hematomas seen in adults.',
        ),
        PearlBlock(
          'Board Pearl -- Vulnerability vs Plasticity',
          'The assumption that children "always do better" after brain injury is incorrect. While neuroplasticity provides some advantages, injuries before age 2-3 years may produce WORSE long-term cognitive outcomes because early injury disrupts the developmental foundation for subsequent skills.',
        ),
      ],
    ),

    // ============ TAB 2: GCS, PECARN & Assessment ============
    TopicTab(
      title: 'GCS & Assessment',
      blocks: [
        HeaderBlock('Glasgow Coma Scale -- Pediatric'),
        TextBlock(
          'The GCS is the standard tool for assessing level of consciousness after TBI. The pediatric modification adjusts verbal and motor subscales for preverbal children (<2 years). Total score ranges from 3 (worst) to 15 (best).',
          isIntro: true,
        ),

        ScaleBlock(
          scaleName: 'Glasgow Coma Scale (GCS)',
          description: 'Standard GCS with pediatric modification for children <2 years',
          columns: ['Component', 'Adult/Child >=2yr', 'Infant <2yr', 'Score'],
          rows: [
            ['Eye Opening', 'Spontaneous', 'Spontaneous', '4'],
            ['', 'To voice', 'To voice', '3'],
            ['', 'To pain', 'To pain', '2'],
            ['', 'None', 'None', '1'],
            ['Verbal', 'Oriented', 'Coos, babbles,\nage-appropriate', '5'],
            ['', 'Confused', 'Irritable, crying,\nbut consolable', '4'],
            ['', 'Inappropriate words', 'Cries to pain,\nmoaning', '3'],
            ['', 'Incomprehensible\nsounds', 'Inconsolable,\nagitated', '2'],
            ['', 'None', 'No response', '1'],
            ['Motor', 'Obeys commands', 'Spontaneous\npurposeful\nmovement', '6'],
            ['', 'Localizes pain', 'Withdraws to\ntouch', '5'],
            ['', 'Withdraws', 'Withdraws to\npain', '4'],
            ['', 'Abnormal flexion\n(decorticate)', 'Abnormal flexion\n(decorticate)', '3'],
            ['', 'Extension\n(decerebrate)', 'Extension\n(decerebrate)', '2'],
            ['', 'None', 'None', '1'],
          ],
          boardPearl: 'Pediatric verbal scale for infants <2 years: 5 = coos/babbles, 4 = irritable but consolable, 3 = cries to pain, 2 = inconsolable/agitated, 1 = no response. This is a high-yield board topic.',
        ),

        HeaderBlock('TBI Severity Classification'),
        TableBlock(
          title: 'Classification of TBI Severity',
          columns: ['Feature', 'Mild', 'Moderate', 'Severe'],
          rows: [
            ['GCS', '13-15', '9-12', '3-8'],
            ['Loss of\nConsciousness', '<30 min', '30 min -\n24 hours', '>24 hours'],
            ['Post-Traumatic\nAmnesia (PTA)', '<24 hours', '1-7 days', '>7 days'],
            ['% of TBI', '~80%', '~10%', '~10%'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        PearlBlock(
          'Board Pearl -- PTA as Predictor',
          'Post-traumatic amnesia (PTA) duration is among the strongest single predictors of long-term outcome after TBI. PTA lasting longer than 7 days indicates very severe injury and portends significantly worse neurocognitive recovery. The Children\'s Orientation and Amnesia Test (COAT) is the pediatric PTA measure.',
        ),

        HeaderBlock('PECARN Decision Rules'),
        TextBlock(
          'The PECARN rules identify children at very low risk for clinically important TBI (ciTBI), reducing unnecessary CT scans and radiation. Validated in 42,412 children with sensitivity approaching 100% for ciTBI.',
        ),
        ComparisonCardBlock(
          title: 'PECARN: Children <2 Years',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.baby_changing_station_rounded,
          description: 'CT recommended if ANY high-risk criterion is present (ciTBI risk ~4.4%):',
          keyPoints: [
            'GCS 14 or below (altered mental status)',
            'Palpable skull fracture',
            'Intermediate criteria (observation vs CT; ciTBI risk ~0.9%): Non-frontal scalp hematoma, LOC >=5 sec, severe mechanism, not acting normally per parent',
            'Fall height threshold: >3 feet',
            'If no criteria met: ciTBI risk <0.02% -- CT NOT recommended',
          ],
        ),
        ComparisonCardBlock(
          title: 'PECARN: Children >=2 Years',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          icon: Icons.child_care_rounded,
          description: 'CT recommended if ANY high-risk criterion is present (ciTBI risk ~4.3%):',
          keyPoints: [
            'GCS 14 or below (altered mental status)',
            'Signs of basilar skull fracture (Battle sign, raccoon eyes, hemotympanum, CSF otorrhea/rhinorrhea)',
            'Intermediate criteria (observation vs CT): LOC, vomiting, severe mechanism, severe headache',
            'Fall height threshold: >5 feet',
            'If no criteria met: ciTBI risk <0.05% -- CT NOT recommended',
          ],
        ),
        PearlBlock(
          'Board Pearl -- PECARN Age Differences',
          'PECARN fall height thresholds differ by age: >3 feet for children <2 years, >5 feet for those >=2 years. Scalp hematoma location matters only in the younger group (non-frontal = higher risk). Basilar skull fracture signs are used exclusively in the older group. This distinction is commonly tested.',
        ),
      ],
    ),

    // ============ TAB 3: Concussion & Second Impact ============
    TopicTab(
      title: 'Concussion & Recovery',
      blocks: [
        HeaderBlock('Concussion Management'),
        TextBlock(
          'Concussion is a biomechanically induced alteration in brain function with GCS 13-15 and normal structural neuroimaging. The pathophysiology is functional (ionic flux, glutamate release, metabolic crisis) rather than structural. The Amsterdam 2022 Consensus introduced major updates to management.',
          isIntro: true,
        ),

        HeaderBlock('Amsterdam 2022 Consensus Key Changes'),
        BulletCardBlock(
          title: 'Major Updates',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          points: [
            'No same-day return to sport regardless of symptom resolution',
            'Prolonged rest beyond 24-48 hours is NOT beneficial and may be HARMFUL',
            'Early return to light-intensity activity within first 2 days is encouraged',
            'Complete cognitive rest and dark rooms are NO longer recommended',
            '"Post-concussion syndrome" replaced by "persistent post-concussion symptoms" (>4 weeks in children, >2 weeks in adults)',
            'Children recover more slowly than adults (2-4 weeks typical vs 10-14 days)',
            'SCAT6 and Child-SCAT6 replace prior versions as standardized assessment tools',
            'Return-to-LEARN precedes Return-to-SPORT',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Paradigm Shift',
          'The most important paradigm shift in modern concussion management is the move from "rest until asymptomatic" to "early symptom-limited activity." Strict prolonged rest beyond 48 hours is not only unnecessary but may delay recovery through deconditioning, anxiety, and depression.',
        ),

        HeaderBlock('Return-to-Learn Protocol'),
        TableBlock(
          title: 'Graduated Return-to-Learn (Academic Reintegration)',
          columns: ['Stage', 'Activity'],
          rows: [
            ['1', 'Daily activities at home\nthat do not provoke\nsymptoms'],
            ['2', 'Homework, reading, light\ncognitive work\n(symptom-limited)'],
            ['3', 'Part-time school\nattendance (half-days,\nmodified schedule)'],
            ['4', 'Full school attendance\nwith accommodations\n(extra time, rest breaks)'],
            ['5', 'Full school activities\nwithout accommodations'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),

        HeaderBlock('Return-to-Sport Protocol (6-Step)'),
        TableBlock(
          title: 'Graduated Return-to-Sport Protocol',
          columns: ['Step', 'Activity', 'Minimum'],
          rows: [
            ['1', 'Symptom-limited\ndaily activities', '24-48\nhours'],
            ['2', 'Light aerobic exercise\n(walking, cycling;\nHR <70% max)', '24 hours'],
            ['3', 'Sport-specific exercise\n(running drills;\nNO head impact)', '24 hours'],
            ['4', 'Non-contact training\ndrills (progressive\ncomplexity; resistance\ntraining OK)', '24 hours'],
            ['5', 'Full-contact practice\n(requires medical\nclearance)', '24 hours'],
            ['6', 'Return to\ncompetition', '--'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        MnemonicBlock(
          'Return-to-Play -- "LEARN before PLAY"',
          'Return-to-LEARN precedes return-to-PLAY. Brief rest 24-48 hours, then sub-symptom threshold activity. If symptoms recur at any step, drop back to the previous tolerated step and wait 24 hours. Minimum time from injury to full competition is at least 1 week (6 steps at 24 hours each), but children frequently require longer.',
        ),

        HeaderBlock('Assessment Tools'),
        TableBlock(
          title: 'Concussion Assessment Tools',
          columns: ['Tool', 'Purpose'],
          rows: [
            ['SCAT6 /\nChild-SCAT6', 'Standardized multi-domain\nassessment: symptoms,\ncognition, balance, neuro exam'],
            ['ImPACT', 'Computerized neurocognitive\ntesting; baseline vs\npost-injury comparison'],
            ['King-Devick', 'Rapid (2-min) saccadic\neye movement sideline\nscreening'],
            ['VOMS', 'Vestibular/ocular-motor\nscreening: pursuit, saccades,\nconvergence, VOR'],
            ['Buffalo\nTreadmill Test', 'Graded aerobic exercise\ntolerance; determines\nexercise threshold for\nrecovery prescription'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),

        HeaderBlock('Second Impact Syndrome'),
        BulletCardBlock(
          title: 'Catastrophic Cerebral Edema',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Second concussion before the first has fully resolved',
            'Results in catastrophic, often fatal diffuse cerebral edema',
            'Loss of cerebrovascular autoregulation leads to massive brain swelling and transtentorial herniation',
            'Typical patient: Adolescent male athlete returning to sport while still symptomatic',
            'Mortality approaches 50%; nearly all survivors sustain severe permanent disability',
            'Almost exclusively occurs in adolescents',
            'Prevention: Complete the full graduated return-to-sport protocol; NO same-day return to play',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Second Impact Syndrome',
          'Second impact syndrome is the primary clinical rationale for strictly prohibiting return to play while symptomatic. A seemingly trivial second impact can cause catastrophic brain swelling within minutes. Mortality approaches 50%. No same-day return to sport is permitted regardless of symptom resolution.',
        ),
      ],
    ),

    // ============ TAB 4: TBI Complications ============
    TopicTab(
      title: 'TBI Complications',
      blocks: [
        HeaderBlock('Complications of Pediatric TBI'),
        TextBlock(
          'Children with moderate-to-severe TBI develop a wide range of motor, cognitive, endocrine, and behavioral complications. Cognitive impairment is the most common long-term consequence. Many complications emerge in the subacute and chronic phases.',
          isIntro: true,
        ),

        HeaderBlock('Neuroendocrine Dysfunction'),
        TableBlock(
          title: 'Endocrine Disorders After Pediatric TBI',
          columns: ['Disorder', 'Key Features'],
          rows: [
            ['Growth hormone\ndeficiency', 'Most common chronic\npituitary deficit;\ngrowth deceleration\nmonths to years post-injury'],
            ['Central\nprecocious puberty', 'Accelerated pubertal\nonset; more common when\ninjury precedes normal\npubertal age'],
            ['Diabetes\ninsipidus (DI)', 'Posterior pituitary injury;\npolyuria, polydipsia,\nhypernatremia; may be\ntransient or permanent'],
            ['SIADH', 'Hyponatremia in acute\nphase; more common\nacutely than DI'],
            ['Adrenal\ninsufficiency', 'Central (secondary);\npotentially life-threatening\nif unrecognized'],
            ['Central\nhypothyroidism', 'Less common; screen\nwith TSH and free T4'],
            ['Hypogonadism', 'May manifest as\ndelayed puberty'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        BulletCardBlock(
          title: 'Endocrine Screening Protocol',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            '10-30% of children with moderate-severe TBI develop pituitary dysfunction (may be underdiagnosed)',
            'Screen at baseline, 3-6 months, 12 months, and annually for at least 5 years post-injury',
            'Monitor: Growth velocity, GH stimulation testing if growth decelerates, thyroid function, morning cortisol, electrolytes with osmolality, pubertal staging',
          ],
        ),
        PearlBlock(
          'Board Pearl -- GH Deficiency After TBI',
          'Growth hormone deficiency is the most common long-term endocrine deficit following pediatric TBI. Any child growing normally before moderate-severe TBI who subsequently demonstrates growth deceleration should be evaluated with GH stimulation testing.',
        ),

        HeaderBlock('Post-Traumatic Epilepsy'),
        BulletCardBlock(
          title: 'Seizure Classification & Risk',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Impact seizures: At moment of impact; generally benign if isolated',
            'Early post-traumatic seizures (<7 days): Considered provoked/acute symptomatic',
            'Late post-traumatic seizures (>7 days): Represent true epilepsy with increased recurrence risk',
            'Risk: Mild TBI ~1-2%, Moderate ~1.6%, Severe ~7.4-10%',
            'Risk elevated for >10 years following severe TBI',
            'Risk factors: GCS <=8, penetrating injury (risk up to 50%), intracranial hemorrhage, depressed skull fracture, cortical contusion, prolonged LOC/PTA, early seizures',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Seizure Prophylaxis',
          'Phenytoin (or levetiracetam) in the first 7 days after severe TBI reduces early post-traumatic seizures. However, NO antiepileptic medication prevents late post-traumatic epilepsy -- prophylaxis beyond 7 days is NOT recommended.',
        ),

        HeaderBlock('Autonomic Dysfunction (PSH)'),
        BulletCardBlock(
          title: 'Paroxysmal Sympathetic Hyperactivity',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Previously called "sympathetic storming" or "dysautonomia"',
            'More common in children and young adults than older adults',
            'Episodes: Tachycardia, hypertension, tachypnea, diaphoresis, hyperthermia, extensor posturing',
            'Often triggered by stimulation (turning, suctioning, pain)',
            'May persist for weeks to months',
            'Treatment: Remove triggers, environmental modification; gabapentin, beta-blockers (propranolol), bromocriptine, intrathecal baclofen, benzodiazepines',
            'Must distinguish from seizures, sepsis, or pain',
          ],
        ),

        HeaderBlock('Abusive Head Trauma (AHT)'),
        BulletCardBlock(
          title: 'AHT Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Most common cause of traumatic DEATH in children <2 years',
            'Peak age: 2-4 months',
            'Classic triad: Subdural hemorrhages (often bilateral) + multilayered retinal hemorrhages + encephalopathy/cerebral edema',
            'All three elements need not be present for diagnosis',
            'Presenting symptoms often nonspecific: Irritability, lethargy, poor feeding, vomiting, seizures, apnea',
            '"Those who don\'t cruise rarely bruise" -- bruising in pre-mobile infants is suspicious',
            'Skeletal survey findings: Metaphyseal corner fractures (bucket-handle; highly specific for abuse) and posterior rib fractures',
            'Mortality ~15-25%; among survivors, 60-80% have significant long-term neurological morbidity',
            'Outcomes WORSE than accidental TBI of equivalent severity',
          ],
        ),
        PearlBlock(
          'Board Pearl -- AHT Red Flag',
          'The absence of a credible mechanism is the single most important red flag for AHT. When a reported mechanism (e.g., "rolled off the couch") is biomechanically inconsistent with the severity of intracranial findings, a thorough abuse evaluation is mandatory. Healthcare providers are mandatory reporters.',
        ),

        HeaderBlock('"Growing Into Deficits"'),
        BulletCardBlock(
          title: 'Delayed Emergence of Cognitive Deficits',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Initial motor recovery may appear excellent, masking cognitive deficits',
            'Executive function and academic deficits emerge as developmental demands increase',
            'Particularly apparent at ages 7-12 when demands shift from concrete to abstract reasoning',
            'A child injured at age 3-4 may function adequately in early elementary but falter in middle school',
            'Frontal lobe networks (executive function, planning, social cognition) develop most rapidly in late childhood and adolescence',
            'Academic supports may need to be INTENSIFIED rather than reduced over time',
            'Neuropsychological re-evaluation needed at developmental transition points (school entry, middle school, high school)',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Growing Into Deficits',
          '"Growing into deficits" means a child with TBI at age 4 may appear to recover well but demonstrate executive dysfunction, social difficulties, and academic failure at age 12 as frontal lobe demands outpace the injured brain\'s capacity. Longitudinal surveillance extending through adolescence is essential.',
        ),

        HeaderBlock('TBI Prognosis'),
        ComparisonCardBlock(
          title: 'Traumatic Etiology',
          themeColor: const Color(0xFF16A34A),
          backgroundColor: const Color(0xFFF0FDF4),
          icon: Icons.trending_up_rounded,
          description: 'TBI has a significantly better prognosis than anoxic brain injury.',
          keyPoints: [
            '24% of TBI patients regain awareness at 1 month',
            'Children generally have better motor recovery than adults',
            'Cognitive and behavioral recovery lags behind motor recovery',
            'Pre-injury function, family support, and rehabilitation access are key prognostic factors',
          ],
        ),
        ComparisonCardBlock(
          title: 'Anoxic Etiology',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.trending_down_rounded,
          description: 'Anoxic brain injury has a much worse prognosis.',
          keyPoints: [
            'Only 11% of anoxic patients regain awareness at 1 month',
            'More widespread and diffuse neuronal death',
            'Higher rates of persistent vegetative state',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Traumatic vs Anoxic',
          'Traumatic brain injury has a much better prognosis than anoxic: 24% of TBI patients vs only 11% of anoxic patients regain awareness at 1 month. This difference should guide family counseling and rehabilitation planning.',
        ),
      ],
    ),

    // ============ TAB 5: Pediatric SCI & SCIWORA ============
    TopicTab(
      title: 'SCI & SCIWORA',
      blocks: [
        HeaderBlock('Pediatric Spinal Cord Injury'),
        TextBlock(
          'Pediatric SCI comprises approximately 3-5% of all spinal cord injuries, with an estimated 1,200-1,400 new cases annually in the US. Males predominate (60-70% overall, >80% in adolescents). In-hospital mortality is approximately 10-15%.',
          isIntro: true,
        ),

        HeaderBlock('Pediatric Spine Anatomy'),
        TableBlock(
          title: 'Developmental Differences from Adult Spine',
          columns: ['Feature', 'Pediatric', 'Clinical Implication'],
          rows: [
            ['Head-to-body\nratio', '~25% of body\nweight at birth\nvs ~6% in adults', 'Higher fulcrum;\ngreater leverage\non upper C-spine'],
            ['Ligaments', 'Greater\nelasticity', 'Spinal column\ndisplacement\nwithout fracture;\npredisposes to\nSCIWORA'],
            ['Facet joints', 'More horizontal,\nespecially C1-C3', 'Greater\ntranslational\nsliding movement'],
            ['Vertebral\nbodies', 'Anterior wedging;\nincomplete\nossification', 'Forward sliding;\nmimics fractures\non imaging'],
            ['Musculature', 'Immature,\nless developed', 'Less muscular\nstabilization'],
            ['Elasticity\nmismatch', 'Column stretches\nup to 5 cm;\ncord tolerates\nonly 6 mm', 'Fundamental\nbasis for SCIWORA'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        PearlBlock(
          'Board Pearl -- Column vs Cord Elasticity',
          'The pediatric spinal column can stretch up to 5 cm (2 inches) without structural disruption, while the spinal cord tolerates only approximately 6 mm (0.25 inches) of distraction. This elasticity mismatch is the fundamental basis for SCIWORA.',
        ),

        HeaderBlock('Injury Patterns by Age'),
        TableBlock(
          title: 'Pediatric SCI by Age Group',
          columns: ['Feature', 'Children <8 Years', 'Children >=8 Years'],
          rows: [
            ['Injury Level', 'Upper cervical\n(C1-C4)', 'Lower cervical\n(C5-C7);\nthoracolumbar\nalso more common'],
            ['Fulcrum', 'C2-C3', 'C5-C6\n(approaching adult)'],
            ['SCIWORA', 'Much more common\n(up to 30-60%\nof SCIs)', 'Less common'],
            ['Injury Pattern', 'Ligamentous\n(subluxation)', 'Bony fractures\nmore common'],
            ['Mortality', 'Higher\n(brainstem/\nrespiratory)', 'Lower'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        PearlBlock(
          'Board Pearl -- Age-Based Injury Level',
          'Children <8 years sustain upper cervical injuries (C1-C4) due to the large head, high fulcrum at C2-C3, and ligamentous laxity. Children >8 years have lower cervical injuries (C5-C7) similar to adults. The transition occurs at approximately age 8-10 years as biomechanics normalize.',
        ),

        HeaderBlock('SCIWORA'),
        BulletCardBlock(
          title: 'Spinal Cord Injury Without Radiographic Abnormality',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Objective signs of myelopathy with no fracture or dislocation on plain X-ray or CT',
            'Accounts for 6-19% of all pediatric SCIs; up to 30-60% of SCIs in young children',
            'Much more common in children than adults',
            'Mechanism: Elastic spinal column deforms, compresses cord, then recoils to normal alignment -- normal radiographs/CT result',
            'Additional mechanisms: Vascular injury (ischemia), disc herniation (visible only on MRI)',
            'MRI is the gold standard for diagnosis -- evaluates cord for edema, hemorrhage, transection',
            'Neurologic deficits may be DELAYED up to 48 hours after injury',
            'Delayed onset of symptoms is a hallmark -- child may initially appear neurologically normal',
          ],
        ),

        TableBlock(
          title: 'Pang Classification of SCIWORA (MRI-Based)',
          columns: ['Type', 'MRI Finding', 'Prognosis'],
          rows: [
            ['Type I', 'Major intramedullary\nhemorrhage or\ncord disruption', 'Poor: typically\ncomplete SCI with\nminimal recovery'],
            ['Type II', 'Minor, focal\nhemorrhage', 'Intermediate:\nvariable recovery'],
            ['Type III', 'Cord edema only\n(no hemorrhage)', 'Good: significant\nrecovery expected'],
            ['Type IV', 'Normal MRI\n(true SCIWORA)', 'Best: generally\ngood recovery;\nmay represent\ncord concussion'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl -- SCIWORA Key Facts',
          'SCIWORA is the quintessential pediatric SCI. Normal X-rays and CT but abnormal MRI. Delayed neurologic deficits up to 48 hours are a hallmark. Any child with transient neurological symptoms after spinal trauma must be immobilized, observed 48 hours, and get MRI even if symptoms resolve. A normal MRI does NOT exclude SCIWORA (Type IV has best prognosis).',
        ),

        BulletCardBlock(
          title: 'SCIWORA Management',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'External cervical immobilization: 8-12 weeks per the Pang protocol (rigid collar)',
            'Activity restriction: Contact sports and high-risk activities restricted 6-12 months',
            'Surgical intervention: Generally NOT indicated unless MRI shows compressive pathology',
            'Recurrent SCIWORA reported in children who resume activity prematurely',
            'SSEPs may show abnormalities even when MRI is normal -- useful for prognostication',
          ],
        ),
      ],
    ),

    // ============ TAB 6: SCI Complications & Management ============
    TopicTab(
      title: 'SCI Complications',
      blocks: [
        HeaderBlock('Acute SCI Management'),
        BulletCardBlock(
          title: 'Acute Management Principles',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          points: [
            'Spinal immobilization: Large occiput causes cervical flexion on flat board -- elevate torso or use occipital recess to maintain neutral alignment',
            'Neurogenic shock (hypotension + bradycardia from loss of sympathetic tone) must be distinguished from hypovolemic shock (hypotension + tachycardia)',
            'Methylprednisolone is NOT standard of care in pediatric SCI (no proven benefit)',
            'Spinal shock: Transient loss of all cord function below injury; resolves over days to weeks; bulbocavernosus reflex return signals end of spinal shock',
            'True neurological injury level can only be assessed after spinal shock resolves',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Occipital Recess',
          'In young children, the relatively large occiput causes cervical flexion when supine on a standard backboard. Either a recess for the occiput or elevation of the torso is needed to maintain neutral alignment. This is a frequently tested board concept.',
        ),

        HeaderBlock('Autonomic Dysreflexia'),
        BulletCardBlock(
          title: 'AD Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Occurs in SCI at T6 and ABOVE (above splanchnic sympathetic outflow)',
            'Noxious stimulus below injury triggers massive uninhibited sympathetic discharge',
            'Above lesion: Headache (pounding), facial flushing, nasal congestion, diaphoresis, blurred vision',
            'Below lesion: Pallor, piloerection ("goose bumps"), cool skin',
            'Bradycardia is typical (baroreceptor-mediated)',
            'Bladder distension is the most common trigger (~75-85% of episodes)',
            'Can occur in children of any age with high-level SCI, including infants',
          ],
        ),
        BulletCardBlock(
          title: 'AD Acute Management Protocol',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            '1. Sit patient UPRIGHT and dangle legs (orthostatic pooling)',
            '2. Loosen all clothing, straps, and abdominal binders',
            '3. Check BLADDER FIRST: Assess catheter for kinks/blockage; irrigate or replace; if no catheter, straight cath with lidocaine jelly',
            '4. Check BOWEL: Digital rectal exam with lidocaine; disimpact if indicated',
            '5. Inspect skin for irritants; relieve pressure',
            '6. Monitor BP every 2-5 minutes',
            '7. If BP remains elevated: Nifedipine (rapid onset), nitroglycerin paste (removable), hydralazine, prazosin',
            '8. AVOID beta-blockers as first-line (risk of unopposed alpha vasoconstriction)',
          ],
        ),
        PearlBlock(
          'Board Pearl -- AD: Always Check Bladder First',
          'In autonomic dysreflexia, always check the bladder FIRST -- it is the most common trigger (75-85%). A blocked catheter is the single most frequent precipitant. First non-pharmacologic intervention is to sit upright. Avoid beta-blockers as first-line treatment.',
        ),

        HeaderBlock('Neurogenic Bladder'),
        TableBlock(
          title: 'Neurogenic Bladder Patterns',
          columns: ['Lesion Level', 'Bladder Type', 'Characteristics'],
          rows: [
            ['Suprasacral\n(above S2-S4)', 'UMN bladder', 'Detrusor hyperreflexia;\ndetrusor-sphincter\ndyssynergia (DSD);\nhigh pressures;\nrisk of upper\ntract damage'],
            ['Sacral/Conus/\nCauda equina', 'LMN bladder', 'Areflexic bladder;\nlarge capacity,\nlow pressure;\nstress incontinence;\ndenervated sphincter'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        BulletCardBlock(
          title: 'Bladder Management',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Primary goal: RENAL PRESERVATION (low intravesical pressures) -- NOT continence',
            'Clean intermittent catheterization (CIC): Mainstay; every 4-6 hours; children learn self-cath by age 6-8',
            'Anticholinergics (oxybutynin): Reduce detrusor overactivity, increase capacity, lower pressure',
            'Botulinum toxin A (intradetrusor): For refractory detrusor overactivity',
            'Augmentation cystoplasty: Bladder augmentation using intestinal segment for refractory high-pressure bladder',
            'Mitrofanoff procedure: Appendicovesicostomy creating catheterizable channel to umbilicus -- important for wheelchair users',
            'Annual renal ultrasound for hydronephrosis screening',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Renal Preservation',
          'The primary goal of neurogenic bladder management is RENAL PRESERVATION through maintenance of low intravesical pressures, NOT urinary continence. Achieving social continence is an important secondary goal affecting quality of life.',
        ),

        HeaderBlock('Scoliosis in Pediatric SCI'),
        TableBlock(
          title: 'Scoliosis Risk by Age at SCI',
          columns: ['Age at SCI', 'Scoliosis Risk'],
          rows: [
            ['Before age 10', '97-100%'],
            ['Ages 10-15', '50-80%'],
            ['After skeletal\nmaturity', '5-10%\n(similar to adult SCI)'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        BulletCardBlock(
          title: 'Scoliosis Management',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Typical curve: Long, collapsing C-curve (paralytic neuromuscular scoliosis)',
            'Bracing (TLSO): Limited effectiveness; may slow progression but rarely prevents need for surgery',
            'Surgical indications: Progressive curve >40-50 degrees, loss of sitting balance, respiratory compromise, skin breakdown from pelvic obliquity',
            'Surgical approach: Posterior spinal fusion; typically from upper thoracic spine to pelvis',
            'Growing rods (including MAGEC magnetically controlled rods) used in very young children to allow continued growth before definitive fusion',
            'Pelvic obliquity commonly accompanies scoliosis, increasing pressure ulcer risk',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Nearly 100% Scoliosis Risk',
          'Nearly ALL children who sustain SCI before age 10 will develop scoliosis (97-100%). This mandates lifelong spinal surveillance. Bracing can slow progression but generally cannot prevent surgical fusion. The younger the child at injury, the greater the risk.',
        ),

        HeaderBlock('Atlantoaxial Instability'),
        BulletCardBlock(
          title: 'AAI in Down Syndrome',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'AAI occurs in 10-30% of individuals with Down syndrome on radiographs',
            'But only 1-2% develop symptomatic cord compression',
            'Atlantodental interval (ADI) >4.5 mm is abnormal in children',
            'Cause: Generalized ligamentous laxity + potential os odontoideum',
            'Special Olympics requires cervical spine radiographs before high-risk sports',
            'Signs of symptomatic AAI: New neck pain, torticollis, gait deterioration, spasticity, hyperreflexia, clonus',
            'Symptomatic AAI requires posterior C1-C2 fusion',
          ],
        ),
        BulletCardBlock(
          title: 'Other Conditions with AAI',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Morquio syndrome (MPS IV): Odontoid hypoplasia nearly universal; high risk of craniocervical instability; prophylactic fusion often recommended',
            'Juvenile idiopathic arthritis: Cervical involvement in 30-60% of polyarticular JIA',
            'Klippel-Feil syndrome: Instability at adjacent unfused segments',
            'Ehlers-Danlos syndrome: Generalized ligamentous laxity',
            'Grisel syndrome: Non-traumatic AAI following URI or pharyngeal surgery',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Down Syndrome AAI',
          'Radiographic AAI is common in Down syndrome (10-30%), but symptomatic cord compression is rare (1-2%). Clinical signs of myelopathy -- not radiographic measurements alone -- should drive management decisions. Special Olympics still requires screening radiographs, making this a frequent board topic.',
        ),

        HeaderBlock('Additional Pediatric SCI Concerns'),
        BulletCardBlock(
          title: 'Bone Health & Fractures',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Rapid bone mineral density loss below injury level (distal femur and proximal tibia)',
            'Fractures in insensate limbs may occur with minimal trauma (during transfers or ROM)',
            'Fracture presents as swelling, warmth, erythema -- mimics DVT and cellulitis (NO pain because insensate)',
            'New-onset AD or increased spasticity may signal occult fracture',
            'Avoid rigid casts on insensate skin -- use splinting and soft immobilization',
            'Weight-bearing programs (standing frames) recommended for bone health',
          ],
        ),
        BulletCardBlock(
          title: 'Other Key Concerns',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Latex allergy: Increased risk from frequent catheterization and surgical exposure -- use latex-free products',
            'Pressure injuries: Occiput is common site in young children (large head); twice-daily skin inspection; age-appropriate education',
            'Thermoregulation: Poikilothermia with high-level SCI; body temperature fluctuates with environment',
            'Spasticity: Baclofen most common oral agent; intrathecal baclofen for severe cases; ITB pump withdrawal is a MEDICAL EMERGENCY (fever, rebound spasticity, rhabdomyolysis, seizures -- can be fatal)',
            'Power mobility can be introduced as early as 12-18 months of age',
            'Wheelchairs need replacement every 2-4 years during growth',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Fracture in Insensate Limb',
          'In a child with SCI presenting with a warm, swollen, erythematous lower extremity, the differential must include fracture (even with trivial or no trauma), DVT, cellulitis, and heterotopic ossification. Fracture is especially likely given severe sublesional osteoporosis. Pain is ABSENT because the limb is insensate.',
        ),
        PearlBlock(
          'Board Pearl -- ITB Withdrawal Emergency',
          'Intrathecal baclofen pump malfunction is a medical emergency. Withdrawal syndrome -- fever, rebound severe spasticity, rhabdomyolysis, seizures -- can be FATAL and requires emergent evaluation and treatment.',
        ),
      ],
    ),
  ],
);
