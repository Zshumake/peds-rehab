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
          'TBI is the #1 cause of death and disability in children older than 1 year. Understanding the epidemiology, mechanisms, and unique pediatric pathophysiology is essential for board preparation and clinical practice.',
          isIntro: true,
        ),

        HeaderBlock('Epidemiology'),
        BulletCardBlock(
          title: 'TBI by the Numbers',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          points: [
            '#1 cause of death in children >1 year of age',
            'Mortality: 10 per 100,000 children die annually (5x the rate of leukemia)',
            'Annual incidence: 185 per 100,000 children',
            'Two-thirds of deaths occur at the scene or en route to hospital',
            'Boys are affected more than girls across all age groups',
            'Bimodal peak: Toddlers (falls) and adolescents (motor vehicles, sports)',
          ],
        ),
        PearlBlock(
          'Board Pearl — TBI Mortality',
          'TBI kills 5 times more children per year than leukemia (10 vs 2 per 100,000). Two-thirds of TBI deaths occur before reaching the hospital, underscoring the importance of injury prevention over acute treatment.',
        ),

        HeaderBlock('Etiology by Mechanism'),
        TableBlock(
          title: 'Leading Causes of Pediatric TBI',
          columns: ['Mechanism', 'Percentage', 'Key Details'],
          rows: [
            ['Transportation', '39%', 'Motor vehicle crashes,\npedestrian vs. vehicle,\nbicycle accidents'],
            ['Falls', '28%', 'Leading cause in\nchildren <5 years'],
            ['Sports/Recreation', '17%', 'Football, soccer,\nicehockey, cycling'],
            ['Assault', '7%', 'Includes abusive\nhead trauma (infants)'],
            ['Other/Unknown', '9%', 'Struck by objects,\nmiscellaneous'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        MnemonicBlock(
          'TBI Causes — "TFSA"',
          'Transportation (39%), Falls (28%), Sports (17%), Assault (7%). Transportation is the overall leading cause, but falls lead in children under 5 years. Assault (abusive head trauma) is the leading cause in infants <1 year.',
        ),

        HeaderBlock('Primary vs Secondary Injury'),
        ComparisonCardBlock(
          title: 'Primary Injury',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.flash_on_rounded,
          description: 'Occurs at the moment of impact. Irreversible mechanical damage to brain tissue.',
          keyPoints: [
            'Contusion, laceration, diffuse axonal injury (DAI)',
            'Skull fractures, epidural and subdural hematomas',
            'Intracerebral hemorrhage',
            'Direct neuronal and vascular disruption',
            'Cannot be treated — only prevented',
          ],
        ),
        ComparisonCardBlock(
          title: 'Secondary Injury',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          icon: Icons.timeline_rounded,
          description: 'Evolves over hours to days after primary injury. This is the target of acute medical management.',
          keyPoints: [
            'Cerebral edema and elevated intracranial pressure',
            'Hypoxia, hypotension, and ischemia',
            'Excitotoxicity (glutamate release)',
            'Electrolyte disturbances and seizures',
            'Infection and inflammatory cascades',
            'Goal of acute management: Prevent secondary injury',
          ],
        ),
        PearlBlock(
          'Board Pearl — Primary vs Secondary',
          'Primary injury occurs at the moment of impact and is irreversible. Secondary injury evolves over hours to days and is the target of all acute medical management (maintaining cerebral perfusion, preventing hypoxia, controlling ICP). Know this distinction for boards.',
        ),

        HeaderBlock('Pediatric vs Adult TBI Differences'),
        BulletCardBlock(
          title: 'Unique Pediatric Pathophysiology',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Children have MORE diffuse injury and diffuse cerebral swelling (vs focal contusions/hematomas in adults)',
            'Diffuse axonal injury (DAI) is the hallmark of pediatric TBI',
            'The immature brain is more susceptible to excitotoxic injury',
            'Open fontanelles and sutures can initially mask rising ICP in infants',
            'Higher water content and less myelination make the pediatric brain more vulnerable to shearing forces',
            'Skull fracture presence or absence does NOT correlate with severity of underlying brain injury',
          ],
        ),
        PearlBlock(
          'Board Pearl — Skull Fractures',
          'The presence or absence of a skull fracture does NOT indicate the severity of brain injury. A child can have a devastating diffuse axonal injury with no skull fracture, or a linear skull fracture with minimal brain injury. Always assess neurologic function independently of radiographic skull findings.',
        ),

        HeaderBlock('Associated Injuries'),
        BulletCardBlock(
          title: 'Concomitant Spinal Cord Injury',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Spinal cord injury occurs in 5-10% of children with TBI',
            'Always assume cervical spine injury until cleared',
            'Cervical spine immobilization is mandatory in the acute setting',
            'Children <8 years are at higher risk for upper cervical spine injuries (C1-C3)',
            'SCIWORA (spinal cord injury without radiographic abnormality) is more common in children',
          ],
        ),
      ],
    ),

    // ============ TAB 2: Pediatric GCS & Assessment ============
    TopicTab(
      title: 'GCS & Assessment',
      blocks: [
        HeaderBlock('Glasgow Coma Scale — Pediatric'),
        TextBlock(
          'The Glasgow Coma Scale (GCS) is the standard tool for assessing level of consciousness after TBI. The pediatric modification adjusts the verbal scale for preverbal children (<2 years). Total score ranges from 3 (worst) to 15 (best).',
          isIntro: true,
        ),

        ScaleBlock(
          scaleName: 'Glasgow Coma Scale (GCS)',
          description: 'Standard GCS with pediatric verbal modification for children <2 years',
          columns: ['Component', 'Adult/Child >2yr', 'Infant <2yr', 'Score'],
          rows: [
            ['Eye Opening', 'Spontaneous', 'Spontaneous', '4'],
            ['', 'To voice', 'To voice', '3'],
            ['', 'To pain', 'To pain', '2'],
            ['', 'None', 'None', '1'],
            ['Verbal', 'Oriented', 'Smiles, oriented\nto sound', '5'],
            ['', 'Confused', 'Cries but\nconsolable', '4'],
            ['', 'Inappropriate words', 'Inconsistently\ninconsolable', '3'],
            ['', 'Incomprehensible\nsounds', 'Inconsolable,\nagitated', '2'],
            ['', 'None', 'No response', '1'],
            ['Motor', 'Obeys commands', 'Normal\nspontaneous\nmovement', '6'],
            ['', 'Localizes pain', 'Withdraws to\ntouch', '5'],
            ['', 'Withdraws', 'Withdraws to\npain', '4'],
            ['', 'Abnormal flexion\n(decorticate)', 'Abnormal flexion\n(decorticate)', '3'],
            ['', 'Extension\n(decerebrate)', 'Extension\n(decerebrate)', '2'],
            ['', 'None', 'None', '1'],
          ],
          boardPearl: 'The pediatric verbal scale for infants <2 years: 5 = smiles/oriented to sound, 4 = cries but consolable, 3 = inconsistently inconsolable, 2 = inconsolable/agitated, 1 = no response. This is a high-yield board topic.',
        ),

        HeaderBlock('TBI Severity Classification'),
        TableBlock(
          title: 'Classification of TBI Severity',
          columns: ['Feature', 'Mild', 'Moderate', 'Severe', 'Profound'],
          rows: [
            ['GCS', '13-15', '9-12', '3-8', '3-8'],
            ['Post-Traumatic\nAmnesia (PTA)', '<1 hour', '1-24 hours', '>24 hours', '>24 hours'],
            ['Loss of\nConsciousness', '<15-30 min', '30 min -\n24 hours', '1-90 days', '>90 days'],
            ['% of TBI', '~80%', '~10%', '~10%', 'Subset\nof severe'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        PearlBlock(
          'Board Pearl — TBI Severity',
          'Mild TBI (GCS 13-15) accounts for approximately 80% of all pediatric TBI. Severe TBI is defined by GCS 3-8. Profound TBI is a subset of severe where unconsciousness persists >90 days. The duration of post-traumatic amnesia (PTA) is a better predictor of long-term cognitive outcome than initial GCS.',
        ),

        HeaderBlock('PECARN Decision Rules'),
        TextBlock(
          'The Pediatric Emergency Care Applied Research Network (PECARN) criteria help identify children at very low risk for clinically important TBI, reducing unnecessary CT scans and radiation exposure.',
        ),
        ComparisonCardBlock(
          title: 'PECARN: Children <2 Years',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.baby_changing_station_rounded,
          description: 'CT recommended if ANY of the following are present:',
          keyPoints: [
            'GCS <15 (altered mental status)',
            'Palpable skull fracture',
            'Observation vs CT if: Non-frontal scalp hematoma, LOC >5 seconds, severe mechanism, not acting normally per parent',
          ],
        ),
        ComparisonCardBlock(
          title: 'PECARN: Children ≥2 Years',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          icon: Icons.child_care_rounded,
          description: 'CT recommended if ANY of the following are present:',
          keyPoints: [
            'GCS <15 (altered mental status)',
            'Signs of basilar skull fracture (Battle sign, raccoon eyes, hemotympanum, CSF otorrhea/rhinorrhea)',
            'Observation vs CT if: LOC, vomiting, severe mechanism, severe headache',
          ],
        ),
        PearlBlock(
          'Board Pearl — PECARN',
          'PECARN identifies children at <0.05% risk of clinically important TBI who do NOT need CT. In children <2 years, a palpable skull fracture or altered mental status triggers CT. In children ≥2 years, signs of basilar skull fracture or altered mental status trigger CT. This is a commonly tested clinical decision rule.',
        ),

        HeaderBlock('Post-Traumatic Amnesia Assessment'),
        BulletCardBlock(
          title: 'PTA — Prognostic Significance',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'PTA duration is the single best predictor of cognitive outcome after TBI',
            'Measured from time of injury to return of continuous day-to-day memory',
            'Children\'s Orientation and Amnesia Test (COAT) is the pediatric measure',
            'PTA <1 hour = mild; 1-24 hours = moderate; >24 hours = severe',
            'PTA >1 week is associated with significant long-term cognitive impairment',
          ],
        ),
      ],
    ),

    // ============ TAB 3: Medical Complications ============
    TopicTab(
      title: 'Complications',
      blocks: [
        HeaderBlock('Medical Complications of Pediatric TBI'),
        TextBlock(
          'Children with moderate-to-severe TBI develop a wide range of motor, sensory, cognitive, and endocrine complications. Many emerge in the subacute and chronic phases of recovery.',
          isIntro: true,
        ),

        HeaderBlock('Motor Deficits'),
        BulletCardBlock(
          title: 'Motor Impairment Patterns',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          points: [
            'Spasticity and/or rigidity: 38% of moderate-severe TBI',
            'Combined spasticity and ataxia: 39% — the most common motor pattern',
            'Hemiparesis is more common after focal injury (contusion, hemorrhage)',
            'Diffuse injury often produces bilateral motor deficits with ataxia',
            'Motor recovery typically precedes cognitive recovery',
            'Children generally have better motor recovery than adults',
          ],
        ),

        HeaderBlock('Cranial Nerve Injuries'),
        BulletCardBlock(
          title: 'CN Deficits After TBI',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Optic nerve (CN II) injury: 1.5% of pediatric TBI',
            'Olfactory nerve (CN I) injury: Anosmia from shearing at cribriform plate',
            'CN III, IV, VI palsies: Diplopia, strabismus',
            'CN VII palsy: May be from temporal bone fracture',
            'CN VIII: Hearing loss from temporal bone fracture or cochlear concussion',
          ],
        ),

        HeaderBlock('Communication Impairment'),
        BulletCardBlock(
          title: 'Speech & Language Deficits',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Two-thirds of children with moderate-severe TBI have communication impairment',
            'One-third have dysarthria (motor speech disorder)',
            'Language deficits include word-finding difficulty, reduced verbal fluency, and pragmatic language impairment',
            'Pragmatic language (social communication) is often the most persistently impaired area',
            '35% of children with TBI had a PRIOR learning disability or attention deficit',
          ],
        ),
        PearlBlock(
          'Board Pearl — Pre-Existing Conditions',
          '35% of children who sustain TBI had a pre-existing learning disability or attention deficit disorder. This makes it critical to obtain detailed pre-injury academic and developmental history to distinguish new deficits from pre-existing conditions.',
        ),

        HeaderBlock('Neuroendocrine Dysfunction'),
        BulletCardBlock(
          title: 'Hypopituitarism After TBI',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Hypopituitarism with growth failure and delayed puberty is an important complication',
            'Most commonly deficient hormones: Growth Hormone (GH), LH, and FSH',
            'GH deficiency leads to short stature — may not be apparent for months to years',
            'Precocious puberty can also occur after TBI (hypothalamic injury)',
            'All children with moderate-severe TBI should be screened for endocrine dysfunction',
            'Diabetes insipidus (DI) may occur acutely from posterior pituitary injury',
          ],
        ),
        MnemonicBlock(
          'Post-TBI Endocrine — "GLF"',
          'GH (growth hormone), LH (luteinizing hormone), FSH (follicle-stimulating hormone) are the most commonly deficient hormones after pediatric TBI. Screen for growth failure and delayed puberty in all moderate-severe TBI survivors.',
        ),

        HeaderBlock('Autonomic Dysfunction'),
        BulletCardBlock(
          title: 'Paroxysmal Sympathetic Hyperactivity (PSH)',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Previously called sympathetic storming or central autonomic dysfunction',
            'Occurs in 14% of severe TBI in children',
            'Episodes of tachycardia, hypertension, tachypnea, diaphoresis, posturing, and hyperthermia',
            'Triggered by stimulation (turning, suctioning, pain)',
            'Treatment: Minimize stimulation, beta-blockers, bromocriptine, gabapentin, intrathecal baclofen',
            'Must distinguish from seizures, infection, and other causes of sympathetic activation',
          ],
        ),

        HeaderBlock('Heterotopic Ossification (HO)'),
        BulletCardBlock(
          title: 'HO in Pediatric TBI',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Incidence: 14-23% of pediatric TBI patients',
            'More common in children >11 years of age',
            'Hip is the most commonly affected joint',
            'Presents with decreased ROM, warmth, swelling, and pain',
            'Triple-phase bone scan is the most sensitive early diagnostic test',
            'Serum alkaline phosphatase is often elevated',
            'Treatment: ROM exercises, NSAIDs (indomethacin), surgical excision if mature',
          ],
        ),
        PearlBlock(
          'Board Pearl — HO in Pediatric TBI',
          'HO occurs in 14-23% of pediatric TBI patients and is more common in children over 11 years. The hip is the most commonly affected joint. Triple-phase bone scan is the most sensitive early diagnostic test. Do not confuse HO with DVT — both can present with limb swelling after TBI.',
        ),

        HeaderBlock('Post-Traumatic Seizures'),
        BulletCardBlock(
          title: 'Seizure Risk & Management',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Early seizures (<7 days): Common in young children, may not predict late epilepsy',
            'Late seizures (>7 days): 1.6% of moderate TBI, 7.4% of severe TBI',
            'Risk factors: Depressed skull fracture, intracranial hemorrhage, prolonged PTA, GCS <10',
            'Prophylactic antiepileptic drugs (AEDs) are NOT recommended for prevention of late seizures',
            'Phenytoin may be used in the first 7 days to prevent early seizures in severe TBI',
            'Late post-traumatic epilepsy requires standard AED treatment',
          ],
        ),
        PearlBlock(
          'Board Pearl — Seizure Prophylaxis',
          'Prophylactic antiepileptic medications are NOT recommended for prevention of late post-traumatic seizures (>7 days post-injury). They do not reduce the incidence of late epilepsy. Short-term prophylaxis (first 7 days) with phenytoin may be used in severe TBI to prevent early seizures only.',
        ),

        HeaderBlock('Abusive Head Trauma'),
        BulletCardBlock(
          title: 'Shaken Baby Syndrome / Abusive Head Trauma',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Peak incidence in infants <1 year of age',
            'Classic triad: Retinal hemorrhages + subdural hematomas + NO external evidence of trauma',
            'Retinal hemorrhages are present in 65-95% of cases',
            'Subdural hematomas (often bilateral) from bridging vein tears',
            'May also have metaphyseal corner fractures and posterior rib fractures',
            'Abused children have significantly WORSE survival and neurologic outcomes than accidental TBI',
            'Must be considered in any infant with unexplained neurologic deterioration',
          ],
        ),
        PearlBlock(
          'Board Pearl — Abusive Head Trauma',
          'The classic triad of abusive head trauma is retinal hemorrhages, subdural hematomas, and absence of external signs of trauma. Abused children have worse survival and neurologic outcomes compared to children with accidental TBI of similar severity. This diagnosis must be considered in any infant with unexplained intracranial injury.',
        ),
      ],
    ),

    // ============ TAB 4: Concussion & Recovery ============
    TopicTab(
      title: 'Concussion & Recovery',
      blocks: [
        HeaderBlock('Concussion Management'),
        TextBlock(
          'Concussion is a form of mild TBI that has received increasing attention due to its high prevalence in youth sports and emerging understanding of short- and long-term effects. Modern management emphasizes early sub-symptom activity rather than prolonged rest.',
          isIntro: true,
        ),

        HeaderBlock('Second Impact Syndrome'),
        BulletCardBlock(
          title: 'Catastrophic Cerebral Edema',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Occurs when a second concussion is sustained before the first has fully resolved',
            'Results in catastrophic, often fatal, diffuse cerebral edema',
            'Adolescents are particularly at risk due to sports participation',
            'Loss of cerebrovascular autoregulation leads to massive brain swelling',
            'Mortality rate exceeds 50%, with nearly 100% morbidity in survivors',
            'Prevention: Do NOT return to play until completely symptom-free',
          ],
        ),
        PearlBlock(
          'Board Pearl — Second Impact Syndrome',
          'Second impact syndrome is a catastrophic condition in which diffuse cerebral edema occurs after a second concussion before the first has resolved. It is nearly always fatal or devastating. This is the primary rationale behind strict return-to-play protocols in youth sports.',
        ),

        HeaderBlock('Return-to-Learn & Return-to-Play'),
        BulletCardBlock(
          title: '2023 Berlin Consensus Update',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          points: [
            'Return-to-LEARN should precede return-to-PLAY (academics before athletics)',
            'Brief relative rest for 24-48 hours is recommended (NOT prolonged "cocooning")',
            'After 24-48 hours: Begin sub-symptom threshold physical and cognitive activity',
            'Complete cognitive rest and dark rooms are NO longer recommended',
            'Light aerobic exercise that does not worsen symptoms is encouraged early',
            'Graduated return-to-play: 6-step protocol (each step ≥24 hours)',
            'Must be symptom-free at rest AND during exertion before full return to contact sports',
          ],
        ),
        TableBlock(
          title: 'Graduated Return-to-Play Protocol',
          columns: ['Step', 'Activity', 'Goal'],
          rows: [
            ['1', 'Symptom-limited\nactivity', 'Daily activities that\ndo not provoke\nsymptoms'],
            ['2', 'Light aerobic\nexercise', 'Walking, swimming,\nstationary cycling\n(increase HR)'],
            ['3', 'Sport-specific\nexercise', 'Running drills,\nNO head impact'],
            ['4', 'Non-contact\ntraining drills', 'Harder training,\ncoordination,\ncognitive load'],
            ['5', 'Full-contact\npractice', 'Normal training\nafter medical\nclearance'],
            ['6', 'Return to\ncompetition', 'Full game play'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        MnemonicBlock(
          'Return-to-Play — "LEARN before PLAY"',
          'Return-to-LEARN precedes return-to-PLAY. Brief rest (24-48 hours), then sub-symptom threshold activity. No more prolonged cocooning. Each step of the 6-step return-to-play takes at least 24 hours. Full return requires being symptom-free at rest AND with exertion.',
        ),

        HeaderBlock('"Growing Into Deficits"'),
        BulletCardBlock(
          title: 'Delayed Emergence of Cognitive Deficits',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Initial motor recovery may appear excellent, masking cognitive deficits',
            'Executive function and academic deficits emerge as developmental demands increase',
            'Particularly apparent at ages 7-12 when school demands shift from concrete to abstract reasoning',
            'Children injured at younger ages may appear to recover well initially',
            'Years later, deficits in organization, planning, problem-solving, and social judgment become evident',
            'Longitudinal follow-up (years) is essential after pediatric TBI',
          ],
        ),
        PearlBlock(
          'Board Pearl — Growing Into Deficits',
          'A child who appears to recover well from TBI may "grow into deficits" as developmental demands outpace their injured brain\'s capacity. This is especially apparent at ages 7-12 when academic demands shift from concrete to abstract reasoning. Always arrange long-term neuropsychological follow-up.',
        ),

        HeaderBlock('TBI Prognosis & Outcome'),
        BulletCardBlock(
          title: 'Prognostic Data — Severe TBI',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'In severe TBI, 87% of children unconscious >6 hours ultimately had good recovery',
            '73% achieved independent ambulation within 1 year of injury',
            'Children generally have better motor recovery than adults',
            'Cognitive and behavioral recovery lags behind motor recovery',
            'Younger age at injury is NOT always protective — may result in worse long-term cognitive outcome',
            'Pre-injury function, family support, and access to rehabilitation are key prognostic factors',
          ],
        ),

        HeaderBlock('Traumatic vs Anoxic Brain Injury'),
        ComparisonCardBlock(
          title: 'Traumatic Etiology',
          themeColor: const Color(0xFF16A34A),
          backgroundColor: const Color(0xFFF0FDF4),
          icon: Icons.trending_up_rounded,
          description: 'TBI has a significantly better prognosis for recovery of awareness and function.',
          keyPoints: [
            '24% of TBI patients regain awareness at 1 month',
            'Better motor and cognitive recovery trajectories',
            'Potential for improvement continues for years in children',
            'Age-appropriate rehabilitation is effective',
          ],
        ),
        ComparisonCardBlock(
          title: 'Anoxic Etiology',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          icon: Icons.trending_down_rounded,
          description: 'Anoxic brain injury has a much worse prognosis compared to traumatic etiology.',
          keyPoints: [
            'Only 11% of anoxic patients regain awareness at 1 month',
            'More widespread and diffuse neuronal death',
            'Less potential for functional recovery',
            'Higher rates of persistent vegetative state',
          ],
        ),
        PearlBlock(
          'Board Pearl — Traumatic vs Anoxic',
          'Traumatic brain injury has a much better prognosis than anoxic brain injury: 24% of TBI patients vs only 11% of anoxic patients regain awareness at 1 month. This difference in prognosis should guide family counseling and rehabilitation planning.',
        ),
      ],
    ),

    // ============ TAB 5: Pediatric SCI & SCIWORA ============
    TopicTab(
      title: 'SCI & SCIWORA',
      blocks: [
        HeaderBlock('Pediatric Spinal Cord Injury'),
        TextBlock(
          'Pediatric spinal cord injury has unique features compared to adults, driven by anatomical and biomechanical differences of the developing spine. SCIWORA is a hallmark pediatric entity.',
          isIntro: true,
        ),

        HeaderBlock('Pediatric Spine Anatomy'),
        BulletCardBlock(
          title: 'Developmental Differences from Adults',
          themeColor: const Color(0xFF0EA5E9),
          backgroundColor: const Color(0xFFF0F9FF),
          points: [
            'Greater ligamentous laxity allows more spinal column mobility',
            'Proportionally larger and heavier head (fulcrum at C2-C3 vs C5-C6 in adults)',
            'Immature vertebral bodies with incomplete ossification',
            'Horizontally oriented facet joints allow more translation',
            'Wedge-shaped vertebral bodies prone to anterior slippage',
            'Underdeveloped uncinate processes provide less stability',
            'These factors make the pediatric spine more susceptible to injury, especially in the upper cervical region',
          ],
        ),

        HeaderBlock('Injury Patterns by Age'),
        TableBlock(
          title: 'Pediatric SCI by Age Group',
          columns: ['Feature', 'Children <8 Years', 'Children ≥8 Years'],
          rows: [
            ['Injury Level', 'Upper cervical\n(C1-C3)', 'Lower cervical\n(C4-C7)'],
            ['Mechanism', 'Motor vehicle\ncrashes, falls,\nabuse', 'Sports, motor\nvehicle crashes,\ndiving'],
            ['SCIWORA', 'More common', 'Less common'],
            ['Injury Pattern', 'Ligamentous\n(subluxation)', 'Bony fractures\nmore common'],
            ['Fulcrum', 'C2-C3', 'C5-C6\n(approaching\nadult pattern)'],
            ['Mortality', 'Higher\n(brainstem/\nrespiratory)', 'Lower'],
          ],
          headerColor: const Color(0xFF0EA5E9),
        ),
        PearlBlock(
          'Board Pearl — Pediatric SCI Level',
          'Children <8 years sustain upper cervical injuries (C1-C3) due to the relatively large head, high fulcrum of motion (C2-C3), and ligamentous laxity. Children >8 years have injury patterns more similar to adults, with lower cervical injuries (C5-C7). This is a high-yield board fact.',
        ),

        HeaderBlock('SCIWORA'),
        BulletCardBlock(
          title: 'Spinal Cord Injury Without Radiographic Abnormality',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'SCIWORA: Objective signs of myelopathy with no fracture or dislocation on plain X-ray or CT',
            'Accounts for up to 20-30% of pediatric spinal cord injuries',
            'Much more common in children than adults',
            'Caused by: Ligamentous laxity allowing transient spinal column deformation that injures the cord then self-reduces',
            'The spinal column stretches more than the spinal cord (elasticity mismatch)',
            'MRI may show cord signal abnormality, edema, or hemorrhage despite normal bony imaging',
            'MRI is the imaging modality of choice when SCIWORA is suspected',
          ],
        ),
        BulletCardBlock(
          title: 'SCIWORA — Clinical Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Neurologic deficits may be delayed up to 48 hours after injury',
            'Can present as complete or incomplete cord syndromes',
            'Younger children (<8 years) have higher incidence and worse outcomes',
            'Delayed onset of symptoms is a hallmark — child may initially appear neurologically normal',
            'Recurrent SCIWORA has been reported, particularly in children with cervical stenosis',
            'External cervical immobilization for 12 weeks is standard treatment',
          ],
        ),
        MnemonicBlock(
          'SCIWORA — Key Features',
          'Spinal Cord Injury Without Radiographic Abnormality: Normal X-rays and CT, abnormal MRI, occurs in children due to ligamentous Laxity allowing transient cord compression. Delayed neurologic deficits (up to 48 hours) are a hallmark. More common in children <8 years.',
        ),
        PearlBlock(
          'Board Pearl — SCIWORA',
          'SCIWORA is the quintessential pediatric spinal cord injury. It occurs because the elastic pediatric spinal column can stretch and transiently deform, compressing the spinal cord, then snap back to normal alignment — resulting in cord injury with normal X-rays and CT. MRI is required for diagnosis. Delayed onset of neurologic deficits (up to 48 hours) is a classic presentation.',
        ),

        HeaderBlock('Pediatric SCI Management'),
        BulletCardBlock(
          title: 'Acute & Rehabilitation Management',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Spinal immobilization with appropriate pediatric sizing (large occiput requires padding beneath torso)',
            'Methylprednisolone is NOT recommended in pediatric SCI (no proven benefit, risk of complications)',
            'Autonomic dysreflexia occurs in injuries above T6 (same as adults)',
            'Neurogenic bladder management: Clean intermittent catheterization (CIC)',
            'Children require age-appropriate bowel programs',
            'Growth and development monitoring is essential (scoliosis, hip subluxation, contractures)',
            'Psychosocial support for child and family is critical',
          ],
        ),

        HeaderBlock('SCI Complications in Children'),
        BulletCardBlock(
          title: 'Unique Pediatric Considerations',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Scoliosis: Nearly 100% of children injured before skeletal maturity will develop scoliosis',
            'Hip subluxation/dislocation: Particularly in injuries before age 10',
            'Latex allergy: High incidence in children with SCI (particularly spina bifida overlap population)',
            'Pressure injuries: Skin checks must be taught early with age-appropriate education',
            'Temperature dysregulation below the level of injury',
            'Osteoporosis and pathologic fractures below the level of injury',
          ],
        ),
        PearlBlock(
          'Board Pearl — Scoliosis After Pediatric SCI',
          'Nearly 100% of children who sustain spinal cord injury before skeletal maturity will develop scoliosis. This requires ongoing monitoring and often surgical intervention. The younger the child at injury, the greater the risk of severe progressive scoliosis.',
        ),

        HeaderBlock('Neonatal Brachial Plexus Injury'),
        BulletCardBlock(
          title: 'Brief Overview',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Birth-related traction injury to the brachial plexus (C5-T1)',
            'Erb palsy (C5-C6): "Waiter\'s tip" — shoulder adducted, internally rotated, elbow extended, forearm pronated',
            'Klumpke palsy (C8-T1): Hand and wrist paralysis, may have Horner syndrome',
            'Most cases (70-90%) recover spontaneously within 3-6 months',
            'Covered in detail in Module 11 (Brachial Plexus & Peripheral Nerve Injuries)',
          ],
        ),
      ],
    ),
  ],
);
