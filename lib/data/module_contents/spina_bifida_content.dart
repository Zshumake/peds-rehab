import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final spinaBifidaContent = TopicData(
  id: 'spina-bifida',
  title: 'Spina Bifida (Myelodysplasia)',
  tabs: [
    // ============ TAB 1: Types, Epidemiology & MOMS Trial ============
    TopicTab(
      title: 'Types & MOMS Trial',
      blocks: [
        HeaderBlock('Spina Bifida Overview'),
        TextBlock(
          'Spina bifida results from failure of neural tube closure, which occurs by day 28 post-conception (anterior neuropore day 25, posterior neuropore day 27-28). Myelomeningocele accounts for approximately 90% of live-born NTDs requiring treatment. Because closure occurs before most women know they are pregnant, prevention must begin preconceptionally.',
          isIntro: true,
        ),

        HeaderBlock('Epidemiology & Risk Factors'),
        BulletCardBlock(
          title: 'Prevalence & Geographic Factors',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'US post-fortification: 0.5-0.7 per 1,000 live births (down from 1.0-1.5 pre-fortification)',
            'Worldwide: 0.5-2.0 per 1,000 (varies by region)',
            'Highest incidence: British Isles (Ireland, Wales, Scotland) and Hispanic populations',
            'Lowest incidence: Japan and African-descent populations',
            '75% of lesions affect lumbar/lumbosacral segments',
          ],
        ),
        TableBlock(
          title: 'Risk Factors for Neural Tube Defects',
          columns: ['Risk Factor', 'Details'],
          rows: [
            ['Prior NTD pregnancy', 'Recurrence risk 2-5%;\ntwo affected siblings ~10%'],
            ['Maternal folate\ndeficiency', 'Primary modifiable\nrisk factor'],
            ['Maternal diabetes', '2-10x increased risk'],
            ['Maternal obesity', '1.5-3.5x increased risk'],
            ['Valproic acid', '1-2% NTD risk\n(10-20x baseline);\nMOST teratogenic\ncommon AED'],
            ['Carbamazepine', '0.5-1% NTD risk'],
            ['Folic acid antagonists', 'Methotrexate,\ntrimethoprim'],
            ['Maternal\nhyperthermia', 'First trimester'],
            ['Offspring of one\naffected parent', '4% NTD incidence'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Valproic Acid Is Most Teratogenic',
          'Valproic acid is the most teratogenic commonly used AED for NTDs (1-2% risk, 10-20x baseline). Mechanism involves inhibition of folate metabolism and histone deacetylase activity. Women of childbearing potential on valproic acid should receive high-dose folic acid and counseling about alternative medications.',
        ),

        HeaderBlock('Folic Acid Prevention'),
        TableBlock(
          title: 'Folic Acid Dosing',
          columns: ['Population', 'Dose', 'Timing'],
          rows: [
            ['All women of\nchildbearing age', '0.4 mg (400 mcg)\ndaily', 'Ongoing;\npreconceptional'],
            ['Women with prior\nNTD pregnancy', '4 mg (4,000 mcg)\ndaily', '1-3 months before\nconception through\n1st trimester'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Folic Acid Timing',
          'Folic acid must be started BEFORE conception because the neural tube closes by day 28 — before most women know they are pregnant. The MRC Vitamin Study (1991) showed 72% reduction in NTD recurrence with 4 mg/day. US mandatory grain fortification since 1998 reduced NTDs by 26-28%.',
        ),

        HeaderBlock('Types of Spina Bifida'),
        TableBlock(
          title: 'Classification of Spinal Dysraphisms',
          columns: ['Type', 'Description', 'MSAFP?', 'Prognosis'],
          rows: [
            ['Myelomeningocele', 'Herniation of meninges\n+ neural tissue\nthrough posterior\nvertebral defect', 'Elevated', 'Most significant;\nvariable by level'],
            ['Meningocele', 'Meninges only;\nno neural tissue', 'Usually\nelevated', 'Better prognosis;\n~5% of NTDs'],
            ['Lipomyelo-\nmeningocele', 'Closed dysraphism\nwith lipoma attached\nto spinal cord', 'NOT\nelevated', 'Associated with\ntethered cord;\nbetter than MMC'],
            ['Spina bifida\nocculta', 'Posterior vertebral\narch defect only', 'NOT\nelevated', 'Usually asymptomatic;\n5-10% of population'],
            ['Anencephaly', 'Failure of anterior\nneural tube closure', 'Elevated', 'Incompatible\nwith life'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Open vs Closed NTDs',
          'OPEN NTDs (myelomeningocele, anencephaly): Exposed neural tissue; elevated MSAFP. CLOSED NTDs (lipomyelomeningocele, occulta): No exposed neural tissue; MSAFP NOT elevated. This is a frequently tested distinction. Cutaneous markers of closed dysraphism: hairy patch, sacral dimple ABOVE gluteal cleft, hemangioma, dermal sinus tract, subcutaneous lipoma.',
        ),

        HeaderBlock('Prenatal Diagnosis'),
        BulletCardBlock(
          title: 'Screening Algorithm',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'MSAFP screening at 15-20 weeks: ~80% sensitivity for open NTDs at 2.5 MoM',
            'Amniocentesis: AFP + acetylcholinesterase (AChE) — AChE is more specific',
            'Ultrasound (90-95% sensitivity): Direct defect visualization',
            'Lemon sign: Frontal bone scalloping (~99% of NTDs before 24 weeks)',
            'Banana sign: Cerebellar compression from Chiari II',
            'Fetal MRI: Better delineation of level and associated anomalies',
            'False positives for MSAFP: multiple gestation, incorrect dating, abdominal wall defects',
          ],
        ),

        HeaderBlock('MOMS Trial — The Landmark Study'),
        BulletCardBlock(
          title: 'Trial Design',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Management of Myelomeningocele Study — NEJM, 2011',
            'Multicenter RCT: 3 centers (Vanderbilt, CHOP, UCSF)',
            'N = 183 (planned 200, stopped early for efficacy)',
            'Prenatal repair (n=91) at 19-25 weeks vs Postnatal repair (n=92) within 12 hours',
          ],
        ),
        TableBlock(
          title: 'MOMS Trial Key Results',
          columns: ['Outcome', 'Prenatal', 'Postnatal', 'Significance'],
          rows: [
            ['VP shunt by\n12 months', '40%', '82%', 'RR 0.48, p<0.001\nShunt rate CUT\nIN HALF'],
            ['Chiari II\nimprovement', '36%\nreversal', '4%\nreversal', 'Significant'],
            ['Walking\nindependently\n(30 months)', '42%', '21%', 'Significant'],
            ['Improvement >=2\nlevels above\npredicted', '32%', '12%', 'Significant'],
            ['Bayley MDI\n(cognition)', 'Similar', 'Similar', 'NO difference\nin cognition'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        TableBlock(
          title: 'MOMS Risks of Prenatal Repair',
          columns: ['Complication', 'Prenatal', 'Postnatal'],
          rows: [
            ['Preterm birth\n(mean GA)', '34.1 weeks', '37.3 weeks'],
            ['Uterine\ndehiscence', '35%', 'N/A'],
            ['Chorioamniotic\nmembrane\nseparation', '26%', '0%'],
            ['Oligohydramnios', '21%', '4%'],
            ['All future\ndeliveries\nmust be C-section', 'Yes (classical\nhysterotomy)', 'No'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — MOMS Trial Summary',
          'Know THREE key results: (1) VP shunt rate cut in half (40% vs 82%), (2) motor function significantly better (walking 42% vs 21%), and (3) cognitive outcomes NOT different. Trade-off: increased preterm birth and maternal morbidity. Results should NOT be generalized to less experienced centers. Maternal BMI >35 was an exclusion criterion.',
        ),

        HeaderBlock('MOMS2 Follow-Up (School Age, ~6-10 years)'),
        BulletCardBlock(
          title: 'Sustained Benefits',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'VP shunt: 44% prenatal vs 84% postnatal (sustained benefit)',
            'Community walking: 45% prenatal vs 24% postnatal',
            'Independent walking: 29% prenatal vs 11% postnatal',
            'Cognitive and adaptive behavior scores: SIMILAR between groups',
          ],
        ),
      ],
    ),

    // ============ TAB 2: Chiari II, Hydrocephalus & Tethered Cord ============
    TopicTab(
      title: 'Chiari & Shunt',
      blocks: [
        HeaderBlock('Arnold-Chiari Type II Malformation'),
        TextBlock(
          'Present in virtually ALL (~95-100%) patients with myelomeningocele. Involves downward displacement of cerebellar tonsils, vermis, fourth ventricle, AND brainstem through the foramen magnum. Distinct from Chiari I (tonsils only, NOT associated with myelomeningocele).',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl — Chiari I vs Chiari II',
          'Chiari I: Tonsillar herniation only (>5mm below foramen magnum); associated with syringomyelia; NOT associated with myelomeningocele. Chiari II: Tonsils + vermis + brainstem + 4th ventricle; ALWAYS associated with myelomeningocele. This is a frequently tested distinction.',
        ),

        TableBlock(
          title: 'Chiari II Symptoms by Age',
          columns: ['Age Group', 'Symptoms', 'Significance'],
          rows: [
            ['Infants\n(0-2 years)\nMOST\nDANGEROUS', 'Stridor (bilateral vocal\ncord paralysis)\nDysphagia/aspiration\nApneic spells/central apnea\nWeak/absent cry\nOpisthotonus, nystagmus\nUpper extremity weakness', '15-35% mortality if\nsymptomatic in infancy;\nrequires URGENT posterior\nfossa decompression'],
            ['Children\n(2-12 years)', 'Headaches with Valsalva\nProgressive scoliosis\nUpper extremity weakness\nWorsening gait\nSleep apnea', 'May indicate\nsyringomyelia'],
            ['Adolescents/\nAdults', 'Headaches, neck pain\nProgressive scoliosis\nUpper extremity changes\nPain syndromes', 'Consider\nsyringomyelia'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Leading Cause of Death in Infancy',
          'Central respiratory dysfunction from Chiari II brainstem compression is the most frequent SINGLE cause of death in myelodysplasia. Infant stridor and apnea are ominous signs requiring urgent evaluation. Only 5-10% of all MMC patients with Chiari II require surgical decompression.',
        ),
        PearlBlock(
          'Board Pearl — ALWAYS Check Shunt First',
          'CRITICAL RULE: In ANY spina bifida patient with new neurological symptoms, ALWAYS evaluate VP shunt function FIRST before attributing symptoms to Chiari II. Shunt malfunction can mimic or exacerbate Chiari II symptoms. VP shunt malfunction is the most common cause of acute neurological change.',
        ),

        HeaderBlock('Hydrocephalus'),
        BulletCardBlock(
          title: 'VP Shunt Management',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '80-90% of MMC patients develop hydrocephalus requiring treatment',
            'Mechanism: Chiari II obstructs CSF flow at posterior fossa',
            'VP shunt placement historically ~80-85% (MOMS postnatal: 82%; prenatal: 40%)',
            'Shunt malfunction: MOST COMMON complication; 40-50% malfunction within first 2 years',
            '96% of shunted patients need at least one revision',
            '86% need two or more revisions',
          ],
        ),
        TableBlock(
          title: 'VP Shunt Complications',
          columns: ['Complication', 'Details'],
          rows: [
            ['Shunt malfunction\n(obstruction)', 'Most common; 40-50%\nwithin first 2 years'],
            ['Shunt infection', '5-10% per procedure;\nMost common organism:\nStaph epidermidis'],
            ['Over-drainage', 'Slit ventricle syndrome,\nsubdural hematomas,\ncraniosynostosis'],
            ['Abdominal', 'Pseudocyst, peritonitis,\ncatheter migration'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        BulletCardBlock(
          title: 'Shunt Malfunction Symptoms',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Headache, vomiting, lethargy, irritability',
            'Bulging fontanelle (if still open)',
            'Sunsetting eyes (downward gaze deviation)',
            'Increased head circumference',
            'New seizures, change in mentation',
            'DECLINING SCHOOL PERFORMANCE or behavior change',
          ],
        ),

        HeaderBlock('ETV — Alternative to VP Shunt'),
        BulletCardBlock(
          title: 'Endoscopic Third Ventriculostomy',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Creates opening in floor of 3rd ventricle for CSF bypass',
            'No hardware — eliminates shunt malfunction/infection risk',
            'Success rate in spina bifida: ~50-60% (lower than other etiologies)',
            'ETV + CPC (choroid plexus cauterization): ~60-70% success',
            'Less successful in infants <6 months and prior shunt infections',
          ],
        ),

        HeaderBlock('Tethered Spinal Cord'),
        BulletCardBlock(
          title: 'Clinical Presentation — Progressive Change',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Radiographic tethering in virtually ALL post-repair MMC patients',
            'Symptomatic tethered cord requiring surgery: 10-30%',
            'Key principle: Tethered cord = CLINICAL diagnosis (progressive symptoms), NOT radiographic',
            'Progressive scoliosis (new or rapidly progressive)',
            'Change in gait pattern or loss of ambulatory ability',
            'New or worsening foot deformity (especially unilateral)',
            'Back pain (often worse with flexion)',
            'Progressive bladder changes (urodynamic changes may be EARLIEST sign)',
            'Increasing spasticity in lower extremities',
          ],
        ),
        PearlBlock(
          'Board Pearl — Tethered Cord Red Flags',
          'In MMC, the conus is ALWAYS low — position alone is NOT diagnostic. Any CHANGE in neurological status, new scoliosis, new bladder dysfunction, or new pain — especially during a growth spurt — should raise concern for tethered cord. A STATIC deficit is expected; a CHANGING one requires workup. Always evaluate shunt function FIRST.',
        ),
        BulletCardBlock(
          title: 'Tethered Cord Management',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Diagnosis: MRI (low conus below L2 in adults, below L3 in infants) + clinical symptoms',
            'Treatment: Surgical untethering (laminectomy + release of adhesions)',
            'Goal: Halt progression; recovery of lost function is variable',
            'Re-tethering risk: approximately 10-20%',
          ],
        ),

        HeaderBlock('Syringomyelia'),
        BulletCardBlock(
          title: 'Syrinx in Myelodysplasia',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Fluid-filled cavity (syrinx) within the spinal cord',
            'Progressive upper extremity weakness and sensory changes',
            'May present with worsening scoliosis or hand weakness',
            'Associated with Chiari II malformation',
            'Diagnosed by MRI of the spine',
          ],
        ),

        HeaderBlock('Latex Allergy'),
        BulletCardBlock(
          title: 'Latex Sensitivity in Myelomeningocele',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Prevalence: 30-65% of MMC patients (vs ~1% general population)',
            'IgE-mediated (Type I) hypersensitivity from repeated early exposure',
            'ALL MMC patients: Latex-free environment from BIRTH (standard of care)',
            'Non-latex gloves (nitrile), catheters, equipment mandatory',
            'Known allergy: Carry epinephrine auto-injector',
            'Surgery: First case of the day, latex-free OR',
            'Proactive latex-free protocols have dramatically reduced sensitization in recent cohorts',
          ],
        ),
        MnemonicBlock(
          'Latex Cross-Reactive Foods: "BACK"',
          'Banana, Avocado, Chestnut, Kiwi — highest risk cross-reactive foods. Other moderate-risk foods: potato, tomato, papaya, fig, passion fruit, pineapple, mango, peach, celery. Mechanism: structural homology between latex hevein protein and plant class I chitinases.',
        ),
        PearlBlock(
          'Board Pearl — BACK Mnemonic',
          'Banana, Avocado, Chestnut, Kiwi — perennial board favorite for latex cross-reactive foods. Any spina bifida patient with food allergies to these items should be evaluated for latex allergy. Latex-free precautions from birth are standard of care for ALL spina bifida patients regardless of testing results.',
        ),
      ],
    ),

    // ============ TAB 3: Functional Motor Levels ============
    TopicTab(
      title: 'Functional Levels',
      blocks: [
        HeaderBlock('Functional Motor Levels'),
        TextBlock(
          'This is one of the MOST TESTED topics in spina bifida rehabilitation. The motor level determines ambulation potential, orthotic needs, orthopedic deformity patterns, and long-term mobility outcomes. Know the key muscle at each level and the corresponding functional outcome.',
          isIntro: true,
        ),

        TableBlock(
          title: 'Motor Level, Key Muscles & Functional Outcomes',
          columns: ['Level', 'Key Muscles', 'Orthotic', 'Adult Mobility'],
          rows: [
            ['Thoracic', 'No LE function', 'Parapodium/RGO\n(therapeutic)', 'Wheelchair;\ntherapeutic\nstanding only'],
            ['L1-L2', 'Iliopsoas\n(hip flexion)', 'HKAFO/RGO', 'Wheelchair;\nhousehold\nambulation only'],
            ['L3', 'Quadriceps\n(knee extension)', 'KAFO', '50% wheelchair;\n50% limited\ncommunity\nambulation'],
            ['L4', 'Tibialis anterior\n(dorsiflexion)', 'AFO', 'Community\nambulator\nwith AFOs'],
            ['L5', 'Lateral hamstrings\nPeroneals\nPartial gluteus\nmedius', 'AFO', 'Community\nambulator;\nTrendelenburg gait'],
            ['S1', 'Gastrocnemius/\nsoleus (PF)', 'AFO or shoe\ninsert', 'Near-normal\nambulation'],
            ['S2-S3', 'Foot intrinsics\nSphincters', 'None needed', 'Normal/near-\nnormal ambulation;\nbowel/bladder\nissues persist'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Level-Muscle Associations',
          'L3 = quadriceps (knee extension). L4 = tibialis anterior (dorsiflexion). L5 = peroneal/lateral hamstrings. S1 = gastrocnemius (plantarflexion). L4 is the critical board-tested level: tibialis anterior gives dorsiflexion = AFO = community ambulation.',
        ),
        PearlBlock(
          'Board Pearl — L3 = The "50/50 Level"',
          'At L3, quadriceps are present. In childhood, patients ambulate with crutches and KAFOs. By adulthood, approximately 50% become wheelchair-dependent. Community ambulation typically requires at least L4 level (tibialis anterior for ankle dorsiflexion control).',
        ),

        HeaderBlock('Orthopedic Deformity Patterns by Level'),
        TableBlock(
          title: 'Expected Deformities by Motor Level',
          columns: ['Level', 'Hip', 'Knee', 'Foot'],
          rows: [
            ['Thoracic', 'Flexion contracture,\ndislocation', 'Flexion\ncontracture', 'Equinovarus\n(positioning)'],
            ['L1-L2', 'Flexion contracture,\ndislocation\n(unopposed flexors)', 'Flexion or\nextension\ncontracture', 'Variable'],
            ['L3', 'Flexion contracture,\ndislocation\n(flexors + quads,\nno extensors)', 'Recurvatum\n(unopposed\nquads)', 'Variable'],
            ['L4', 'Subluxation\nless common', 'Flexion\ncontracture', 'CALCANEOVALGUS\n(TA without gastroc)'],
            ['L5', 'Subluxation\nrare', 'Usually\nnormal', 'CALCANEUS\n(DF + evertors\nwithout PF)'],
            ['S1', 'Usually\nnormal', 'Usually\nnormal', 'CAVOVARUS\n(intrinsic minus\nfoot)'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Classic Foot Deformity Pattern',
          'L4-L5 levels develop CALCANEUS deformity (dorsiflexors present without plantarflexors) — can cause calcaneal pressure ulcers on insensate skin. S1 develops CAVOVARUS (intrinsic minus foot). This pattern reflects differential muscle innervation and imbalance.',
        ),

        HeaderBlock('Orthotic Prescription'),
        TableBlock(
          title: 'Orthotic Prescription by Level',
          columns: ['Motor Level', 'Orthosis', 'Assistive Device'],
          rows: [
            ['T12-L2', 'HKAFO/RGO or\nParapodium', 'Crutches or walker;\nwheelchair for distance'],
            ['L3', 'KAFO', 'Crutches or walker'],
            ['L4-L5', 'AFO', 'Crutches may be needed;\nmay ambulate independently'],
            ['S1+', 'Shoe insert or\nno orthosis', 'None typically needed'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — RGO for Thoracic/High Lumbar',
          'The Reciprocating Gait Orthosis (RGO) couples hip flexion on one side with extension on the other via a cable mechanism. Despite this, most thoracic/L1-L2 patients become full-time wheelchair users by adolescence due to energy cost 2-4x normal walking.',
        ),

        HeaderBlock('Ambulation Prognosis'),
        BulletCardBlock(
          title: 'Key Prognostic Facts',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Ambulation status declines: ~75% ambulatory in early childhood → ~50% in young adulthood',
            'ALL sacral-level lesions achieve community ambulation',
            'Thoracic-level: Wheelchair dependent in adulthood',
            'Factors predicting loss of ambulation: Higher lesion level, obesity, MSK deformities, shunt complications, lower cognition',
            'Obesity is a major contributor to loss of ambulatory function',
            'Energy cost increases dramatically with higher lesion levels',
          ],
        ),
        PearlBlock(
          'Board Pearl — Sacral = Community Ambulation',
          'ALL sacral-level patients achieve community ambulation. S2-S3 lesions may have essentially normal gait with only mild loss of intrinsic foot muscles. Bowel and bladder issues persist even at sacral levels.',
        ),
      ],
    ),

    // ============ TAB 4: Bowel & Bladder ============
    TopicTab(
      title: 'Bowel & Bladder',
      blocks: [
        HeaderBlock('Neurogenic Bladder'),
        TextBlock(
          'Nearly all patients (~90-95%) with myelomeningocele have neurogenic bladder dysfunction. The primary goal of management is to PREVENT RENAL DAMAGE by maintaining low intravesical pressures and preventing UTIs and reflux. Historically, renal failure was the leading cause of death in spina bifida.',
          isIntro: true,
        ),

        HeaderBlock('Bladder Innervation'),
        TableBlock(
          title: 'Innervation of the Bladder',
          columns: ['Component', 'Spinal Level', 'Nerve', 'Function'],
          rows: [
            ['Sympathetic', 'T10-L2', 'Hypogastric', 'STORAGE\n(detrusor relaxation,\ninternal sphincter\ncontraction)'],
            ['Parasympathetic', 'S2-S4', 'Pelvic', 'EMPTYING\n(detrusor contraction)'],
            ['Somatic', 'S2-S5', 'Pudendal', 'External sphincter\n(voluntary continence)'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        MnemonicBlock(
          '"S2-S4 Keeps Urine Off the Floor"',
          'Parasympathetic innervation (S2-S4, pelvic nerve) controls bladder EMPTYING via detrusor contraction. Sympathetic (T10-L2, hypogastric) controls STORAGE. Somatic (S2-S5, pudendal) controls voluntary sphincter.',
        ),

        HeaderBlock('Bladder Dysfunction Types'),
        TableBlock(
          title: 'Hypertonic vs Hypotonic Bladder',
          columns: ['Feature', 'Hypertonic (Spastic/UMN)', 'Hypotonic (Flaccid/LMN)'],
          rows: [
            ['Most common level', 'THORACIC lesions', 'SACRAL lesions'],
            ['Bladder capacity', 'Small, HIGH-PRESSURE', 'Large, LOW-PRESSURE'],
            ['Mechanism', 'Detrusor-sphincter dyssynergia (DSD)', 'Overflow incontinence (continuous dribbling)'],
            ['Renal risk', 'HIGH — reflux and hydronephrosis', 'Lower but still requires management'],
            ['Sphincter', 'Spastic/dyssynergic', 'Incompetent'],
            ['Treatment', 'Anticholinergics + CIC', 'CIC is mainstay'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Critical Pressure Threshold',
          'Detrusor leak point pressure >40 cm H2O = HIGH RISK for upper tract (renal) deterioration (McGuire et al., 1981). This is the critical urodynamic threshold that demands aggressive intervention. Urodynamics is the GOLD STANDARD for evaluating neurogenic bladder.',
        ),

        HeaderBlock('Bladder Management Ladder'),
        ScaleBlock(
          scaleName: 'Neurogenic Bladder Management Ladder',
          description: 'Stepwise approach from conservative to surgical management.',
          columns: ['Step', 'Intervention', 'Details'],
          rows: [
            ['1', 'Clean Intermittent\nCatheterization (CIC)', 'CORNERSTONE of management;\nevery 3-4 hours (4-6x daily);\nclean NOT sterile technique;\nstart in newborn period;\nself-cath training age 5-7'],
            ['2', 'Anticholinergic\nMedications', 'Oxybutynin: 0.1-0.2 mg/kg\nBID-TID (also intravesical);\nreduces detrusor overactivity;\nside effects: dry mouth,\nconstipation, cognitive effects'],
            ['3', 'Botulinum Toxin\n(Detrusor Injection)', 'OnabotulinumtoxinA via\ncystoscopy; 10-12 U/kg;\nduration ~6-9 months;\nrepeat injections needed'],
            ['4', 'Augmentation\nCystoplasty', 'Surgical enlargement with\nbowel segment (ileocystoplasty);\nfor refractory high-pressure;\nstill requires CIC after'],
            ['5', 'Continent Urinary\nDiversion', 'Mitrofanoff (appendicovesicostomy):\ncatheterizable channel from\numbilicus to bladder;\nMonti channel if no appendix'],
          ],
          boardPearl: 'CIC (Lapides 1972) revolutionized neurogenic bladder management. Social continence achievable in ~80-90% with CIC + anticholinergics. 85% of adults with spina bifida use CIC.',
        ),
        PearlBlock(
          'Board Pearl — Self-Catheterization',
          'Self-catheterization training begins at age 5-7 years with independence goal by 8-10 years. Boys learn more easily than girls due to anatomic visibility. CLEAN (not sterile) technique is sufficient. CIC initiated when residual volume reaches 20 mL or greater.',
        ),

        HeaderBlock('Neurogenic Bowel Management'),
        BulletCardBlock(
          title: 'Bowel Dysfunction',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Virtually ALL MMC patients have neurogenic bowel',
            'Fecal incontinence: 60-70% of patients',
            'Most common presentation: Constipation with overflow incontinence (fecal soiling)',
            'Bulbocavernosus or anocutaneous reflex present = greater chance of bowel continence',
            'Goal: Social continence — predictable, timed evacuation',
          ],
        ),
        ScaleBlock(
          scaleName: 'Bowel Management Ladder',
          description: 'Progressive approach to neurogenic bowel management.',
          columns: ['Step', 'Intervention', 'Details'],
          rows: [
            ['1', 'Dietary/Behavioral', 'High-fiber diet; adequate fluids;\ntimed toileting (use gastrocolic\nreflex, post-meal timing)'],
            ['2', 'Oral Medications', 'Osmotic laxatives (MiraLAX);\nstimulant laxatives (senna);\nstool softeners (docusate)'],
            ['3', 'Rectal Interventions', 'Suppositories (glycerin/bisacodyl);\ndigital stimulation;\nmini-enemas'],
            ['4', 'ACE/Malone (MACE)\nProcedure', 'Appendicostomy or cecostomy;\nenema via stoma into cecum;\nsuccess rate ~85%;\npseudo-continence achieved'],
            ['5', 'Colostomy', 'Rare; last resort'],
          ],
          boardPearl: 'The MACE procedure achieves social continence in ~85% by allowing predictable antegrade bowel evacuations. It is one of the most commonly referenced surgical procedures in spina bifida board questions.',
        ),
        PearlBlock(
          'Board Pearl — Mitrofanoff + MACE Together',
          'The Mitrofanoff (urinary) and MACE (bowel) can be performed simultaneously. When only one appendix is available, it is typically used for the Mitrofanoff (urinary continence), with a cecostomy tube (Chait tube) used for antegrade enemas.',
        ),

        HeaderBlock('Key Urologic Statistics'),
        BulletCardBlock(
          title: 'Numbers to Know',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Urinary incontinence: 95% of MMC patients',
            'Hydronephrosis at initial evaluation: 7-30% of infants',
            'Vesicoureteral reflux at birth: 15-20%',
            'Urologic causes of death (ages 5-30): 40%',
            'Social continence with CIC + anticholinergics: 80-90%',
            'Adults on CIC: 85%',
          ],
        ),
      ],
    ),

    // ============ TAB 5: Orthopedic & Skin Management ============
    TopicTab(
      title: 'Orthopedic & Skin',
      blocks: [
        HeaderBlock('Orthopedic Management Principles'),
        TextBlock(
          'Orthopedic management in spina bifida differs fundamentally from CP. In CP, surgery aims to improve motor function. In spina bifida, flaccid paralysis means surgery cannot restore absent function — goals are to correct deformities that interfere with bracing, prevent pressure injuries, maintain sitting posture, and manage pain.',
          isIntro: true,
        ),

        HeaderBlock('Hip Management'),
        BulletCardBlock(
          title: 'Hip Dislocation in Spina Bifida',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Most common at L1-L3 levels (unopposed hip flexors without extensors/abductors)',
            'CRITICAL distinction from CP: Hip reduction surgery does NOT improve ambulation outcomes',
            'Ambulation depends on NEUROLOGICAL LEVEL, not hip location',
            'Hip will re-dislocate because underlying muscle imbalance is permanent',
            'Surgery reserved for SYMPTOMATIC (painful) dislocations only',
          ],
        ),
        PearlBlock(
          'Board Pearl — Hip Surgery: CP vs Spina Bifida',
          'CLASSIC board question: In CP, hip surveillance and timely surgical intervention are critical because hip displacement causes pain and functional decline. In spina bifida, hip reduction does NOT improve ambulation — ambulation depends on the neurological level. This is a fundamental conceptual difference.',
        ),

        HeaderBlock('Foot Deformity Management'),
        BulletCardBlock(
          title: 'Foot Deformities',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Clubfoot (equinovarus): Most common foot deformity at BIRTH; serial casting (Ponseti less predictable than idiopathic)',
            'Calcaneovalgus: Most common ACQUIRED deformity (L4-L5); causes calcaneal pressure ulcers on insensate skin',
            'Cavovarus: S1 level; intrinsic minus foot',
            'ALL foot deformities MUST be corrected to allow brace fitting and prevent pressure ulcers',
            'Goal: Plantigrade (flat), braceable foot for ambulation',
          ],
        ),
        PearlBlock(
          'Board Pearl — Plantigrade Foot Is the Goal',
          'The goal of foot management is a plantigrade (flat on ground), braceable foot. This allows effective orthotic use and maximizes ambulation potential. Rigid deformities that prevent bracing require surgical correction.',
        ),

        HeaderBlock('Scoliosis'),
        BulletCardBlock(
          title: 'Scoliosis in Myelodysplasia',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Prevalence: ~50-80% (increases with higher level and VP shunt)',
            'Scoliosis with lesions ABOVE L2: 70%',
            'Scoliosis with lesions BELOW L4: 40%',
            'Congenital type: Vertebral anomalies (hemivertebra); present at birth; may be rapidly progressive',
            'Developmental/paralytic type: Muscle imbalance + pelvic obliquity; appears after age 5-10; most common',
            'Bracing delays progression but does NOT prevent surgery',
            'Surgical fusion when curve >40-50 degrees',
            'ALWAYS evaluate for tethered cord and shunt malfunction when scoliosis progresses rapidly',
          ],
        ),
        PearlBlock(
          'Board Pearl — New Scoliosis = Workup Required',
          'New or rapidly progressive scoliosis in spina bifida = ALWAYS evaluate for tethered cord AND shunt malfunction. This is a critical management rule. Evaluate shunt function first, then MRI spine for tethered cord.',
        ),

        HeaderBlock('Fractures'),
        BulletCardBlock(
          title: 'Fractures in Spina Bifida',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Common below the level of paralysis due to osteopenia and insensate limbs',
            'CLASSIC board scenario: Warm, swollen, erythematous leg = think FRACTURE, not cellulitis',
            'Presentation: PAINLESS swelling, warmth, erythema below neurological level',
            'Physeal fractures common in children',
            'Treatment: MINIMAL immobilization (lightweight casting) to avoid further osteopenia',
          ],
        ),
        PearlBlock(
          'Board Pearl — Fractures Mimic Cellulitis',
          'Fractures in spina bifida present as painless swelling, warmth, and erythema below the neurological level. Frequently mistaken for cellulitis or DVT. The key diagnostic clue: location BELOW the level of sensation. Radiographs confirm the diagnosis.',
        ),

        HeaderBlock('Skin Integrity'),
        BulletCardBlock(
          title: 'Pressure Injury Prevention',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Insensate skin below neurological level = HIGH risk for pressure injury',
            'Common locations: Ischial tuberosities (wheelchair), sacrum, feet (in orthoses)',
            'Prevention: Pressure relief, skin inspection, properly fitting orthotics, wheelchair cushion',
            'Patients learn weight shifts every 15-30 minutes',
            'Daily skin checks using a mirror',
          ],
        ),
      ],
    ),

    // ============ TAB 6: Outcomes & Long-Term Care ============
    TopicTab(
      title: 'Outcomes',
      blocks: [
        HeaderBlock('Survival & Mortality'),
        TextBlock(
          'With modern multidisciplinary care, >85% of spina bifida patients survive to adulthood. Life expectancy extends into the 40s-60s+ with appropriate care. Transition planning should begin by age 12-14.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Causes of Death by Age',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Infancy: Central respiratory dysfunction from Chiari II (most frequent single cause)',
            'Ages 5-30: Urologic causes account for 40% of deaths (renal failure, UTI/sepsis)',
            'All ages: VP shunt malfunction/infection',
            'Overall mortality: ~24% over 25-year follow-up',
          ],
        ),

        HeaderBlock('Cognitive Profile'),
        BulletCardBlock(
          title: 'Intellectual Function',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Average IQ: approximately 80 (range 60-110)',
            'IQ correlates INVERSELY with lesion level — higher lesions = lower IQ',
            'Primarily mediated through hydrocephalus severity and number of shunt revisions',
            'Generally preserved VERBAL skills with deficits in:',
            '  • Visuospatial processing',
            '  • Executive function',
            '  • Attention and mathematics',
            '"Cocktail party syndrome": Verbal fluency without depth of understanding',
            'Verbal IQ may OVERESTIMATE overall cognitive capacity',
          ],
        ),
        PearlBlock(
          'Board Pearl — Verbal-Performance IQ Split',
          'The cognitive profile in spina bifida shows a discrepancy: relatively preserved verbal abilities but deficits in visuospatial processing and executive function. Verbal IQ may overestimate capacity. Academic accommodations should address nonverbal learning deficits, especially math.',
        ),

        HeaderBlock('Long-Term Functional Outcomes (25-Year Follow-Up)'),
        BulletCardBlock(
          title: 'Key Statistics',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '73% had stable motor level compared with infancy',
            'Ambulatory decline: ~75% ambulatory in childhood → ~50% in young adulthood',
            '85% on CIC for bladder management',
            '37% required special education',
            '50% attended or graduated college',
            '45% employed',
            '18% living independently',
          ],
        ),

        HeaderBlock('Secondary Health Conditions'),
        BulletCardBlock(
          title: 'Common Adult Health Issues',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Obesity: 35-50% prevalence — contributes to ambulation loss, CVD, skin breakdown',
            'Sleep-disordered breathing: Brainstem dysfunction from Chiari II',
            'Depression and anxiety: Common in adolescents and adults',
            'Males: Erectile dysfunction and fertility issues',
            'Females: CAN become pregnant (high-risk; genetic counseling recommended)',
            'Offspring NTD risk: 4% if one parent affected; recommend 4 mg/day folic acid',
          ],
        ),
        PearlBlock(
          'Board Pearl — Obesity Is a Major Threat',
          'Obesity is one of the most impactful secondary conditions. It contributes to loss of ambulation (increased energy cost), cardiovascular disease, skin breakdown (increased pressure on insensate skin), and metabolic syndrome. Weight management should be a priority starting in early childhood.',
        ),

        HeaderBlock('Key Board Review Points'),
        BulletCardBlock(
          title: 'High-Yield Summary',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Neural tube closes by day 28 (posterior neuropore day 27-28)',
            'Folic acid: 0.4 mg standard, 4 mg if prior NTD pregnancy',
            'Valproic acid: Most teratogenic common AED (1-2% NTD risk)',
            'MSAFP elevated in OPEN NTDs only — not in closed',
            'MOMS trial: VP shunt 40% vs 82%, walking 42% vs 21%, cognition SAME',
            'Chiari II in ~95-100% of MMC; Chiari I is NOT associated with MMC',
            'VP shunt needed in 80-90%; 96% need revision; always check shunt FIRST',
            'Tethered cord = CLINICAL diagnosis (progressive symptoms, not imaging alone)',
            'ALL MMC patients = latex-free precautions; BACK foods cross-react',
            'L4 = tibialis anterior = dorsiflexion = AFO = community ambulator',
            'Hip surgery in SB does NOT improve ambulation (unlike CP)',
            'Detrusor leak point pressure >40 cmH2O = danger to kidneys',
            'CIC is cornerstone of bladder management; self-cath by age 5-7',
            'MACE procedure achieves bowel continence in ~85%',
            'Fractures present as PAINLESS swelling mimicking cellulitis',
            'IQ inversely correlates with lesion level; verbal > performance IQ',
          ],
        ),
      ],
    ),
  ],
);
