import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final pedsPharmacologyContent = TopicData(
  id: 'peds-pharmacology',
  title: 'Pediatric Pharmacology',
  tabs: [
    // ============ TAB 1: Spasticity Management Ladder & Oral Meds ============
    TopicTab(
      title: 'Spasticity Meds',
      blocks: [
        HeaderBlock('The Spasticity Management Ladder'),
        TextBlock(
          'Spasticity management follows a structured, stepwise approach matching treatment intensity to severity and distribution of hypertonia. Endorsed by the AAN, NICE, and AACPDM, this ladder guides clinical decision-making. Interventions from multiple steps are often used simultaneously.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Spasticity Management Ladder (6 Steps)',
          columns: ['Step', 'Intervention', 'Indication', 'Reversibility'],
          rows: [
            ['1', 'PT, positioning,\nstretching, serial\ncasting, orthotics', 'ALL patients\nwith spasticity', 'Fully reversible'],
            ['2', 'Oral medications\n(baclofen, diazepam,\ndantrolene, tizanidine)', 'Generalized\nspasticity', 'Reversible'],
            ['3', 'Focal chemodenervation\n(BoNT, phenol/alcohol)', 'Focal or segmental\nspasticity', 'Reversible (BoNT)\nSemi-permanent (phenol)'],
            ['4', 'Intrathecal baclofen\npump', 'Severe generalized\nspasticity refractory\nto oral agents', 'Reversible\n(pump removable)'],
            ['5', 'Selective dorsal\nrhizotomy (SDR)', 'Selected patients\nwith spastic diplegia', 'Irreversible'],
            ['6', 'Orthopedic surgery', 'Fixed contractures,\nbony deformities', 'Irreversible'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Spasticity Ladder',
          'The ladder is NOT strictly sequential. A child may use oral baclofen for generalized tone while receiving botulinum toxin for focal equinus, all while continuing therapy and orthotics. Physical management forms the foundation at EVERY level and should continue alongside all pharmacologic and surgical treatments.',
        ),

        HeaderBlock('Oral Antispasticity Medications'),

        // --- Baclofen ---
        MedicationCardBlock(
          name: 'Baclofen (Lioresal)',
          drugClass: 'GABA-B Receptor Agonist',
          mechanism: 'Binds GABA-B receptors on presynaptic terminals in the dorsal horn of the spinal cord. Inhibits release of excitatory neurotransmitters (glutamate, aspartate), reducing monosynaptic and polysynaptic reflex activity. Acts CENTRALLY at the spinal cord level.',
          indication: 'Generalized spasticity from upper motor neuron lesions. Available in oral and intrathecal forms.',
          dosing: 'Start 0.5 mg/kg/day divided BID-TID. Titrate by 0.5 mg/kg/day weekly. Target: 1-2 mg/kg/day. Max: ~60 mg/day (children), ~80 mg/day (adolescents/adults). AAN evidence level: C.',
          sideEffects: 'Sedation, drowsiness, fatigue, generalized hypotonia, dizziness, nausea, constipation. Cognitive dulling at higher doses. Sedation may be beneficial when spasticity interferes with sleep.',
          boardPearl: 'Only ~5% of oral baclofen crosses the blood-brain barrier. This poor CNS penetration is why intrathecal delivery is so much more effective: direct CSF delivery allows 100- to 1000-fold dose reduction with superior spasticity control. MUST taper gradually -- abrupt withdrawal causes seizures, hallucinations, rebound spasticity, autonomic instability.',
        ),

        // --- Diazepam ---
        MedicationCardBlock(
          name: 'Diazepam (Valium)',
          drugClass: 'Benzodiazepine (GABA-A Agonist)',
          mechanism: 'Enhances GABA-A receptor-mediated inhibition at both spinal and supraspinal levels. Increases frequency of chloride channel opening. Mechanism is DISTINCT from baclofen (GABA-B).',
          indication: 'Spasticity from upper motor neuron lesions. Often used as adjunctive therapy.',
          dosing: '0.1-0.3 mg/kg/day divided BID-QID. Max: 2 mg per dose in young children. AAN evidence level: A -- the ONLY oral antispasticity med to achieve Level A recommendation.',
          sideEffects: 'Sedation (major limiting factor), cognitive impairment, tolerance with chronic use, physical dependence, respiratory depression. Behavioral disinhibition in some children. Must taper to avoid withdrawal seizures.',
          boardPearl: 'Diazepam is the ONLY oral antispasticity medication with AAN Level A evidence for short-term spasticity reduction in children with CP. Despite strong efficacy, its side effect profile (sedation, tolerance, dependence) limits long-term use.',
        ),

        // --- Dantrolene ---
        MedicationCardBlock(
          name: 'Dantrolene (Dantrium)',
          drugClass: 'Direct-Acting Muscle Relaxant',
          mechanism: 'Acts PERIPHERALLY at the skeletal muscle level. Inhibits calcium release from the sarcoplasmic reticulum by binding the ryanodine receptor (RyR1), reducing excitation-contraction coupling. The ONLY peripherally acting antispasticity agent.',
          indication: 'Spasticity from upper motor neuron lesions. Also the drug of choice for malignant hyperthermia and neuroleptic malignant syndrome (IV dantrolene).',
          dosing: 'Start 0.5 mg/kg once daily. Titrate to max 2 mg/kg QID (not exceeding 100 mg/dose or 12 mg/kg/day). Some refs cite max 400 mg/day for adolescents/adults. AAN evidence level: C.',
          sideEffects: 'HEPATOTOXICITY -- potentially fatal (case-fatality rate up to 28%). Risk factors: >400 mg/day, >60 days use, female sex, concurrent hepatotoxins. Monitor LFTs at baseline and monthly x6 months. Contraindicated in active liver disease. Also: drowsiness, dizziness, diarrhea, weakness, photosensitivity.',
          boardPearl: 'Dantrolene is the ONLY oral antispasticity agent that acts PERIPHERALLY (at the sarcoplasmic reticulum). All others (baclofen, diazepam, tizanidine) act centrally. This is a recurring board topic. Its peripheral mechanism also makes it the drug of choice for malignant hyperthermia.',
        ),

        // --- Tizanidine ---
        MedicationCardBlock(
          name: 'Tizanidine (Zanaflex)',
          drugClass: 'Alpha-2 Adrenergic Agonist',
          mechanism: 'Centrally acting alpha-2 adrenergic agonist. Reduces spasticity by enhancing presynaptic inhibition of excitatory amino acid release in the spinal cord, decreasing polysynaptic reflex activity. Mechanism similar to clonidine.',
          indication: 'Spasticity. Also useful for dystonia. Pediatric use is largely off-label.',
          dosing: 'Start 1-2 mg at bedtime. Titrate by 2-4 mg every 3-7 days. Max: 24-36 mg/day. Pediatric dosing not well established. AAN evidence level: C.',
          sideEffects: 'Sedation (can be severe), dry mouth, hypotension, dizziness. Hepatotoxicity (lower risk than dantrolene but monitor LFTs). CRITICAL drug interaction: Metabolized by CYP1A2 -- CONTRAINDICATED with fluvoxamine and ciprofloxacin, which dramatically increase tizanidine levels causing profound hypotension and sedation.',
          boardPearl: 'Tizanidine is an alpha-2 agonist (same class as clonidine). The CYP1A2 drug interaction with fluvoxamine and ciprofloxacin is high-yield. These potent CYP1A2 inhibitors cause dangerous elevation of tizanidine levels.',
        ),

        // --- Oral Med Comparison ---
        TableBlock(
          title: 'Oral Antispasticity Medications Comparison',
          columns: ['Medication', 'Mechanism / Site', 'AAN Level', 'Key Side Effect'],
          rows: [
            ['Baclofen', 'GABA-B agonist\nSpinal cord (central)', 'C', 'Sedation;\nwithdrawal seizures'],
            ['Diazepam', 'GABA-A agonist\nSpinal + supraspinal', 'A', 'Sedation; tolerance;\ndependence'],
            ['Dantrolene', 'Ryanodine receptor blocker\nSkeletal muscle\n(PERIPHERAL)', 'C', 'Hepatotoxicity\n(fatal risk)'],
            ['Tizanidine', 'Alpha-2 agonist\nSpinal cord (central)', 'C', 'Sedation;\nCYP1A2 interactions'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Site of Action',
          'Baclofen = spinal cord (GABA-B). Diazepam = spinal + supraspinal (GABA-A). Tizanidine = spinal cord (alpha-2 agonist). Dantrolene = sarcoplasmic reticulum (PERIPHERAL -- the ONLY one). Know these mechanisms and sites of action for boards.',
        ),
      ],
    ),

    // ============ TAB 2: Chemodenervation, ITB & SDR ============
    TopicTab(
      title: 'BoNT, ITB & SDR',
      blocks: [
        HeaderBlock('Botulinum Toxin in Pediatric Spasticity'),
        TextBlock(
          'Botulinum toxin type A (BoNT-A) is the cornerstone of focal spasticity management in children. It provides reversible chemodenervation with onset in 24-72 hours, peak effect at ~2 weeks, and duration of 3-4 months.',
          isIntro: true,
        ),

        MedicationCardBlock(
          name: 'OnabotulinumtoxinA (Botox)',
          drugClass: 'Neuromuscular Blocking Agent (BoNT-A)',
          mechanism: 'Internalized at the presynaptic terminal of the neuromuscular junction. Cleaves SNAP-25 (a SNARE complex protein), preventing acetylcholine vesicle fusion and release. Produces chemical denervation. Recovery occurs via collateral axonal sprouting.',
          indication: 'Focal or segmental spasticity in CP. Dynamic contractures, equinus gait, scissoring, upper extremity posturing.',
          dosing: 'Max per session: 12-16 U/kg (max 400 U total). Max per injection site: 50 U. Typical dilution: 100 U in 1-2 mL saline. Minimum reinjection interval: 3 months.',
          sideEffects: 'Local: injection site pain, bruising, excessive weakness. Systemic (3.6% of sessions): generalized weakness, dysphagia, respiratory compromise. FDA black box warning (2009) for distant spread. Risk factors: GMFCS IV-V, underlying dysphagia, aspiration history. NO sensory side effects.',
          boardPearl: 'Botox has NO sensory side effects (unlike phenol). Neutralizing antibodies form in 3-10% after repeated injections -- minimize risk by using lowest effective dose, maintaining 3-month minimum interval, and avoiding booster injections. BoNT-A does NOT prevent contracture development long-term.',
        ),
        MedicationCardBlock(
          name: 'AbobotulinumtoxinA (Dysport)',
          drugClass: 'Neuromuscular Blocking Agent (BoNT-A)',
          mechanism: 'Same mechanism as onabotulinumtoxinA -- cleaves SNAP-25, blocks acetylcholine release at the neuromuscular junction.',
          indication: 'Focal spasticity in CP. Same indications as Botox.',
          dosing: 'Max per session: 30 U/kg (max 1000 U total). Max per injection site: 125 U. Typical dilution: 300-500 U in 1.5-2.5 mL. Units are NOT interchangeable with Botox (approximate ratio: 1 Botox = 2.5-3 Dysport).',
          sideEffects: 'Same profile as onabotulinumtoxinA. Same FDA black box warning.',
          boardPearl: 'Botox and Dysport units are NOT interchangeable. The approximate conversion is 1:2.5-3 (Botox:Dysport). Both have same onset (24-72 hrs), peak (~2 weeks), duration (3-4 months), and minimum reinjection interval (3 months).',
        ),
        TableBlock(
          title: 'BoNT-A Dosing by Muscle Group (OnabotulinumtoxinA)',
          columns: ['Target Muscle', 'Dose (U/kg)', 'Common Indication'],
          rows: [
            ['Gastrocnemius\n(both heads)', '3-6', 'Equinus gait'],
            ['Soleus', '2-3', 'Equinus gait'],
            ['Medial hamstrings', '3-6 each', 'Crouch gait,\nscissoring'],
            ['Lateral hamstrings', '3-6 each', 'Crouch gait'],
            ['Hip adductors', '2-6 per side', 'Scissoring'],
            ['Tibialis posterior', '1-2', 'Varus foot\ndeformity'],
            ['Biceps brachii', '1-3', 'Elbow flexion\nposturing'],
            ['Pronator teres', '0.5-1.5', 'Forearm pronation'],
            ['Flexor carpi ulnaris', '0.5-1.5', 'Wrist flexion\nposturing'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),

        // --- Phenol ---
        HeaderBlock('Phenol & Alcohol Neurolysis'),
        MedicationCardBlock(
          name: 'Phenol (5-7% Aqueous Solution)',
          drugClass: 'Chemical Neurolytic Agent',
          mechanism: 'Produces chemical neurolysis via protein denaturation, causing Wallerian degeneration. Destroys BOTH motor and sensory fibers. Onset is IMMEDIATE (within minutes) -- a key advantage over BoNT-A.',
          indication: 'Focal spasticity, especially large muscle groups. Common targets: obturator nerve motor branches (hip adductor spasticity), musculocutaneous nerve (elbow flexion), tibial nerve branches (ankle plantarflexion).',
          dosing: '5-7% aqueous solution. Duration: 3-12 months (average ~6 months). No dose ceiling per session. Requires nerve stimulator or ultrasound guidance.',
          sideEffects: 'Painful dysesthesias (when mixed sensorimotor nerve is injected -- can be severe and persistent). Tissue necrosis at injection site. Vascular injury.',
          boardPearl: 'Phenol destroys both motor AND sensory fibers, causing risk of painful dysesthesias. Inject into PURE MOTOR nerves or motor branches to avoid this. The obturator nerve motor branch is an ideal target because it is a pure motor nerve. Advantages over BoNT: immediate onset, longer duration, lower cost, no antibody formation, no dose ceiling.',
        ),

        // --- ITB ---
        HeaderBlock('Intrathecal Baclofen (ITB) Therapy'),
        BulletCardBlock(
          title: 'ITB Pump Overview',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Delivers baclofen directly to CSF via surgically implanted programmable pump (Medtronic SynchroMed II)',
            'Pump reservoir in abdomen; catheter threaded into thoracic intrathecal space',
            'Catheter tip at T10-T12: targets LOWER extremity spasticity',
            'Catheter tip at C5-T2: targets UPPER extremity involvement',
            'Typical doses: 50-1500 mcg/day (average 200-400 mcg/day in children)',
            'This represents 100- to 1000-fold dose reduction vs oral baclofen',
            'Refills every 1-6 months; battery life ~5-7 years',
            'Novak et al. (2020): Green traffic light for reducing spasticity in CP',
          ],
        ),
        BulletCardBlock(
          title: 'ITB Trial Protocol',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'ALL candidates undergo screening trial before permanent pump implantation',
            'Lumbar puncture with intrathecal bolus dose of baclofen',
            'Starting dose: 25-50 mcg (children), 50 mcg (adolescents/adults)',
            'If no response: repeat at 75 mcg, then 100 mcg (doses 24 hours apart)',
            'Positive trial: >= 1 point reduction on Modified Ashworth Scale',
            'Onset from bolus: 30-60 minutes',
            'Peak effect: ~4 hours',
            'Duration: 4-8 hours',
            'No response at 100 mcg = NOT a candidate -- reconsider diagnosis (dystonia vs spasticity)',
          ],
        ),
        BulletCardBlock(
          title: 'ITB WITHDRAWAL -- MEDICAL EMERGENCY',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Can be FATAL (mortality 10-22%) -- treat as medical emergency',
            'Causes: Catheter kink/fracture/disconnection/migration, pump malfunction, battery depletion, missed refill, programming error',
            'EARLY (hours): Return of baseline spasticity, PRURITUS (often earliest sign -- facial/truncal), diaphoresis, anxiety',
            'INTERMEDIATE (24-72 hrs): Hyperthermia (>40C/104F), tachycardia, labile BP, rigidity, altered mental status',
            'SEVERE (48-96 hrs): Rhabdomyolysis (elevated CK, myoglobinuria, renal failure), DIC, seizures, multi-organ failure, cardiac arrest',
            'Mimics: Malignant hyperthermia, NMS, serotonin syndrome, autonomic dysreflexia, sepsis',
            'KEY: Temporal relationship to baclofen delivery disruption',
          ],
        ),
        BulletCardBlock(
          title: 'ITB Withdrawal Management',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            '1. RESTORE intrathecal baclofen delivery ASAP (check pump volume, interrogate, assess catheter -- XR, dye study)',
            '2. High-dose ORAL baclofen as temporizing measure (poor oral bioavailability -- often insufficient alone)',
            '3. IV benzodiazepines (diazepam) for GABAergic support, rigidity, seizures',
            '4. Cyproheptadine as adjunctive agent',
            '5. ICU admission for moderate-severe withdrawal',
            '6. Aggressive supportive care: external cooling, IV fluids, renal monitoring for rhabdomyolysis',
            '7. Dantrolene for severe rigidity unresponsive to other measures',
          ],
        ),
        BulletCardBlock(
          title: 'ITB OVERDOSE -- MEDICAL EMERGENCY',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Also potentially fatal but generally more readily managed than withdrawal',
            'Causes: Programming error, pump malfunction, pocket fill (accidental subcutaneous refill)',
            'Excessive hypotonia and FLACCIDITY',
            'Progressive drowsiness, obtundation, COMA',
            'RESPIRATORY DEPRESSION -- the primary life-threatening concern',
            'Bradycardia and HYPOTENSION',
            'Seizures (rare)',
            'Management: Airway/ventilatory support FIRST, lumbar puncture to withdraw 30-40 mL CSF, stop pump, supportive care',
          ],
        ),
        PearlBlock(
          'Board Pearl — ITB Withdrawal vs Overdose',
          'Withdrawal = HOT: Hyperthermia, hypertension, tachycardia, rigidity, rhabdomyolysis (resembles malignant hyperthermia). Overdose = COLD: Hypothermia, hypotension, flaccidity, respiratory depression, coma (resembles anesthetic overdose). Both can cause seizures. Both are emergencies, but withdrawal carries HIGHER mortality and is more difficult to manage.',
        ),

        // --- SDR ---
        HeaderBlock('Selective Dorsal Rhizotomy (SDR)'),
        BulletCardBlock(
          title: 'Ideal SDR Candidate',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Age: 3-8 years (some centers 2-10 years)',
            'Diagnosis: Spastic DIPLEGIA (bilateral spastic CP)',
            'GMFCS Level: II or III (ambulatory with or without assistive devices)',
            'Tone pattern: PURE spasticity -- NO dystonia, athetosis, or ataxia',
            'Underlying strength: Adequate voluntary motor control beneath the spasticity',
            'Trunk and head control: Sufficient for upright posture',
            'Cognition: Sufficient for intensive postoperative PT participation',
            'Contractures: No significant fixed contractures (or correctable at time of surgery)',
            'MRI: Periventricular leukomalacia (PVL) is the most favorable imaging finding (ex-premature)',
            'Family: Committed to 6-12 months intensive postoperative rehabilitation',
          ],
        ),
        BulletCardBlock(
          title: 'SDR Contraindications & Outcomes',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Contraindications: Dystonia or mixed tone, severe underlying weakness, fixed contractures >15-20 degrees, GMFCS IV-V (relative), significant ataxia, severe cognitive impairment',
            'Procedure: Laminectomy with selective sectioning of 50-70% of dorsal rootlets using intraoperative EMG',
            'Meta-analysis (McLaughlin 2002): SDR + PT > PT alone; Ashworth reduction 1.2 points; GMFM-66 improvement ~2.6 points',
            'Long-term (20-28 years): Durable spasticity reduction; motor gains most sustained at GMFCS I',
            '~10% adverse events (wound infection, foot dysesthesias)',
            '~40% eventually require additional BoNT or orthopedic surgery despite SDR',
          ],
        ),
        PearlBlock(
          'Board Pearl — SDR Irreversibility',
          'SDR is IRREVERSIBLE. Once dorsal rootlets are cut, spasticity reduction is permanent. This is both its advantage (no ongoing medication costs or pump maintenance) and its risk (weakness may be unmasked, balance may worsen). Careful patient selection is paramount. The ideal candidate is a child with spastic diplegia (GMFCS II-III), pure spasticity, PVL on MRI, and a motivated family.',
        ),
      ],
    ),

    // ============ TAB 3: Pain, Tone Scales & AEDs ============
    TopicTab(
      title: 'Pain & Seizures',
      blocks: [
        HeaderBlock('Pediatric Pain Assessment Scales'),
        TextBlock(
          'Accurate pain assessment requires developmentally appropriate tools based on the child\'s age, cognitive ability, and communication capacity.',
          isIntro: true,
        ),

        ScaleBlock(
          scaleName: 'FLACC Pain Scale',
          description: 'Behavioral observation tool validated for ages 2 months to 7 years and for nonverbal or cognitively impaired patients of ANY age. The revised FLACC (r-FLACC) incorporates individualized pain descriptors from caregivers for children with cognitive impairment.',
          columns: ['Category', '0', '1', '2'],
          rows: [
            ['Face', 'No particular\nexpression or smile', 'Occasional grimace,\nfrown, withdrawn', 'Frequent quivering\nchin, clenched jaw'],
            ['Legs', 'Normal position\nor relaxed', 'Uneasy, restless,\ntense', 'Kicking or\nlegs drawn up'],
            ['Activity', 'Lying quietly,\nnormal position', 'Squirming, shifting,\ntense', 'Arched, rigid,\nor jerking'],
            ['Cry', 'No cry\n(awake or asleep)', 'Moans or whimpers,\noccasional complaint', 'Crying steadily,\nscreams or sobs'],
            ['Consolability', 'Content, relaxed', 'Reassured by\ntouching, distractible', 'Difficult to\nconsole or comfort'],
          ],
          boardPearl: 'Total score 0-10. Interpretation: 0 = comfortable, 1-3 = mild discomfort, 4-6 = moderate pain, 7-10 = severe pain. Use FLACC for children who CANNOT self-report pain (preverbal, cognitively impaired, intubated/sedated).',
        ),
        TableBlock(
          title: 'Pediatric Pain Assessment Tools',
          columns: ['Scale', 'Type', 'Age Range', 'Scoring'],
          rows: [
            ['FLACC', 'Behavioral\nobservation', '2 months - 7 years;\nnonverbal any age', '0-10\n(5 categories,\neach 0-2)'],
            ['Wong-Baker\nFACES', 'Self-report', '3+ years\n(verbal)', '0-10\n(even numbers;\n6 faces)'],
            ['Numeric Rating\nScale (NRS)', 'Self-report', '8+ years', '0-10'],
            ['NIPS\n(Neonatal Infant\nPain Scale)', 'Behavioral\nobservation', 'Neonates', '0-7\n(6 categories)'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Pain Scale Selection',
          'FLACC = observational, for NONVERBAL children (0-7 years, or cognitively impaired any age). Wong-Baker FACES = self-report, for VERBAL children ages 3+. NRS = self-report for older children 8+. NIPS = neonates. Match the tool to the patient\'s developmental and communication ability.',
        ),

        HeaderBlock('Spasticity & Tone Assessment Scales'),
        ScaleBlock(
          scaleName: 'Modified Ashworth Scale (MAS)',
          description: 'The most widely used clinical measure of spasticity. Grades resistance to passive muscle stretch on an ordinal scale. Limitation: Does NOT distinguish spasticity (velocity-dependent) from contracture (fixed shortening) or dystonia.',
          columns: ['Grade', 'Description'],
          rows: [
            ['0', 'No increase in muscle tone'],
            ['1', 'Slight increase; catch and release\nor minimal resistance at end of range'],
            ['1+', 'Slight increase; catch followed by\nminimal resistance through <1/2 ROM'],
            ['2', 'More marked increase through most\nof ROM; part easily moved'],
            ['3', 'Considerable increase; passive\nmovement difficult'],
            ['4', 'Affected part rigid in flexion\nor extension'],
          ],
          boardPearl: 'The MAS measures resistance to passive stretch but is velocity-INDEPENDENT as typically administered. It cannot distinguish spasticity from contracture or dystonia. The Tardieu Scale addresses this limitation.',
        ),
        BulletCardBlock(
          title: 'Modified Tardieu Scale',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Velocity-DEPENDENT assessment that differentiates spasticity from contracture',
            'R1 = Angle at which catch or clonus is first felt during FAST passive stretch (spastic component)',
            'R2 = Full passive ROM during SLOW stretch (true muscle length / contracture)',
            'Dynamic component = R2 - R1',
            'LARGE R2-R1 = Predominantly SPASTIC -- responds to antispasticity Rx (BoNT, baclofen, SDR)',
            'SMALL R2-R1 = Predominantly FIXED CONTRACTURE -- needs mechanical/surgical intervention (serial casting, tendon lengthening)',
            'Example: R2-R1 of 30 degrees at ankle = excellent BoNT candidate; R2-R1 of 5 degrees = needs orthopedic intervention',
          ],
        ),
        PearlBlock(
          'Board Pearl — Tardieu vs Ashworth',
          'Tardieu is SUPERIOR to Modified Ashworth for guiding treatment decisions because it quantifies the relative contributions of spasticity vs contracture. R2 - R1 = dynamic component. Large R2-R1 = good candidate for spasticity management (BoNT, baclofen). Small R2-R1 = needs mechanical/surgical intervention, not chemodenervation.',
        ),

        HeaderBlock('Antiepileptic Drugs (AEDs)'),
        TextBlock(
          'Epilepsy co-occurs in 25-45% of children with CP. AED selection must consider cognitive and behavioral side effects, as these impact rehabilitation participation.',
        ),
        TableBlock(
          title: 'AEDs: Key Side Effects (Board High-Yield)',
          columns: ['AED', 'Key Side Effects'],
          rows: [
            ['Levetiracetam\n(Keppra)', 'Behavioral/psychiatric effects\n(irritability, aggression, depression)\nOtherwise relatively benign;\nminimal drug interactions\nPREFERRED in TBI'],
            ['Valproic acid\n(Depakote)', 'Hepatotoxicity (highest risk <2 yrs\nwith metabolic disease), pancreatitis,\nteratogenicity (NTDs), weight gain,\nthrombocytopenia, tremor, alopecia'],
            ['Carbamazepine\n(Tegretol)', 'Hyponatremia (SIADH), aplastic anemia,\nStevens-Johnson syndrome (screen\nHLA-B*1502 in Asian descent),\ndiplopia, ataxia; many interactions'],
            ['Phenytoin\n(Dilantin)', 'Gingival hyperplasia, hirsutism,\nosteoporosis, cerebellar atrophy,\ncoarsened facies, folate deficiency,\nteratogenicity; ZERO-ORDER kinetics'],
            ['Phenobarbital', 'Sedation, cognitive impairment,\nbehavioral problems, vitamin D\ndeficiency, osteomalacia;\nAVOID in rehab if possible'],
            ['Topiramate\n(Topamax)', 'Cognitive slowing ("dopamax"),\nmetabolic acidosis, nephrolithiasis,\nweight loss, acute angle-closure\nglaucoma'],
            ['Lamotrigine', 'Stevens-Johnson syndrome (risk\nincreased with rapid titration or\nconcurrent valproic acid), rash'],
            ['Oxcarbazepine\n(Trileptal)', 'Hyponatremia (more frequent than\ncarbamazepine), rash, dizziness'],
            ['Vigabatrin', 'IRREVERSIBLE bilateral concentric\nvisual field constriction;\nfirst-line for infantile spasms\nin tuberous sclerosis'],
            ['Gabapentin', 'Sedation, dizziness, weight gain;\noff-label for neuropathic pain\nand spasticity'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — AEDs in TBI & Key Pearls',
          'Levetiracetam (Keppra) is PREFERRED in TBI -- minimal cognitive effects, few drug interactions. Phenytoin and phenobarbital impair cognitive recovery -- avoid in rehab. Phenytoin uses ZERO-ORDER kinetics (small dose changes cause disproportionate level changes). Valproic acid is CONTRAINDICATED in children <2 years with suspected metabolic disease (fatal hepatotoxicity risk).',
        ),
      ],
    ),

    // ============ TAB 4: DMD Steroids & Gene Therapies ============
    TopicTab(
      title: 'DMD & Gene Therapy',
      blocks: [
        HeaderBlock('DMD Corticosteroid Management'),
        TextBlock(
          'Corticosteroids remain the standard of care for Duchenne muscular dystrophy, providing the most robust evidence for altering disease natural history. They prolong ambulation by 2-5 years and preserve respiratory and cardiac function.',
          isIntro: true,
        ),
        MedicationCardBlock(
          name: 'Prednisone',
          drugClass: 'Corticosteroid',
          mechanism: 'Anti-inflammatory and immunomodulatory effects. Slows muscle degeneration, prolongs ambulation, preserves pulmonary function, delays scoliosis progression in DMD.',
          indication: 'Standard of care for DMD. Initiate at motor plateau, typically age 4-6 years (when motor skills stop progressing or begin to decline).',
          dosing: '0.75 mg/kg/day (Griggs 1991 landmark trial established this optimal dose). Daily dosing most effective. Alternative regimens: weekend-only (10 mg/kg over weekend) or 10-days-on/10-days-off.',
          sideEffects: 'Significant weight gain (more than deflazacort), growth suppression, osteoporosis, behavioral changes, adrenal suppression, cushingoid features, cataracts (lower risk than deflazacort).',
          boardPearl: 'Start corticosteroids at motor PLATEAU (age 4-6). Starting while still improving exposes to side effects without clear benefit. Starting too late misses the window of maximum benefit.',
        ),
        MedicationCardBlock(
          name: 'Deflazacort (Emflaza)',
          drugClass: 'Corticosteroid (Oxazoline Derivative)',
          mechanism: 'Same mechanism as prednisone. FDA-approved specifically for DMD in 2017.',
          indication: 'DMD. Alternative to prednisone with potentially favorable weight gain profile.',
          dosing: '0.9 mg/kg/day.',
          sideEffects: 'LESS weight gain than prednisone (major clinical advantage). HIGHER risk of posterior subcapsular cataracts. Similar other corticosteroid effects.',
          boardPearl: 'FOR-DMD trial (McDonald 2022) confirmed both daily prednisone and daily deflazacort provide benefit. Deflazacort = less weight gain but more cataracts. Both prolong ambulation by 2-5 years.',
        ),
        MedicationCardBlock(
          name: 'Vamorolone (Agamree)',
          drugClass: 'Dissociative Corticosteroid',
          mechanism: 'Retains anti-inflammatory and membrane-stabilizing properties while dissociating glucocorticoid receptor transactivation that mediates classic steroid side effects.',
          indication: 'DMD in patients aged 2 years and older (FDA-approved October 2023).',
          dosing: 'Weight-based dosing; similar to prednisone regimen.',
          sideEffects: 'Less bone mineral density loss and fewer behavioral side effects than traditional corticosteroids (VISION-DMD phase 3 trial). Represents a significant advance in long-term DMD management.',
          boardPearl: 'Vamorolone is a newer dissociative corticosteroid designed to reduce classic steroid side effects while preserving efficacy. Approved for DMD in patients 2 years and older.',
        ),
        BulletCardBlock(
          title: 'DMD Corticosteroid Monitoring Requirements',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Growth: Height, weight, and growth velocity at each visit',
            'Body composition: BMI; dietary counseling',
            'Bone density: DEXA scanning; vertebral fracture assessment (compression fractures often asymptomatic)',
            'Ophthalmology: Annual screening for posterior subcapsular cataracts',
            'Blood pressure and glucose: Screen for metabolic syndrome',
            'Behavioral health: Mood changes, irritability, sleep disturbance',
            'Adrenal function: Risk of adrenal insufficiency; stress-dose steroid protocols for surgery/illness',
            'Vitamin D and calcium supplementation recommended',
          ],
        ),

        HeaderBlock('SMA Gene Therapies'),
        TextBlock(
          'Three disease-modifying therapies target the fundamental defect in SMA -- insufficient survival motor neuron (SMN) protein. Pre-symptomatic treatment via newborn screening (on RUSP since 2018) has transformed SMA natural history.',
        ),
        MedicationCardBlock(
          name: 'Nusinersen (Spinraza)',
          drugClass: 'Antisense Oligonucleotide (ASO)',
          mechanism: 'Modifies SMN2 pre-mRNA splicing (exon 7 inclusion) to increase production of functional full-length SMN protein. SMN2 normally produces mostly truncated, nonfunctional protein.',
          indication: 'All types of SMA (Types 1-4). FDA-approved December 2016 -- first approved SMA treatment.',
          dosing: 'INTRATHECAL injection via lumbar puncture. Loading: Days 0, 14, 28, 63. Maintenance: Every 4 months. Lifelong treatment. ~\$375,000/year.',
          sideEffects: 'Thrombocytopenia, coagulation abnormalities, renal toxicity. Procedural risks of repeated LPs. Technically challenging with scoliosis/spinal fusion.',
          boardPearl: 'ENDEAR trial (SMA Type 1): 51% achieved motor milestones vs 0% in sham. CHERISH trial (Types 2/3, Mercuri 2018 NEJM): HFMSE improvement +4.0 vs -1.9 in sham. NURTURE trial (pre-symptomatic): Near-normal motor development when treated before symptoms.',
        ),
        MedicationCardBlock(
          name: 'Onasemnogene abeparvovec (Zolgensma)',
          drugClass: 'Gene Replacement Therapy (AAV9 Vector)',
          mechanism: 'Delivers a functional copy of the SMN1 gene via adeno-associated virus serotype 9 (AAV9). The vector crosses the blood-brain barrier and delivers the gene to motor neurons.',
          indication: 'SMA in children under 2 years. ONE-TIME treatment.',
          dosing: 'Single INTRAVENOUS infusion. ONE-TIME dose. ~\$2.1 million. Requires pre-treatment with corticosteroids.',
          sideEffects: 'Hepatotoxicity (monitor LFTs), thrombotic microangiopathy, immune response to AAV vector.',
          boardPearl: 'START trial: All 15 SMA Type 1 infants alive at 20 months without permanent ventilation (vs 8% historical controls). 11/12 high-dose achieved independent sitting. One-time cost may be comparable to lifetime nusinersen cost.',
        ),
        MedicationCardBlock(
          name: 'Risdiplam (Evrysdi)',
          drugClass: 'SMN2 Splicing Modifier (Small Molecule)',
          mechanism: 'Oral small molecule that modifies SMN2 pre-mRNA splicing systemically (CNS and peripheral tissues). Same splicing modification as nusinersen but via different mechanism.',
          indication: 'SMA in patients 2 months of age and older. All SMA types. FDA-approved August 2020.',
          dosing: 'ORAL liquid -- taken DAILY at home. No injections or hospital procedures. Lifelong treatment. ~\$100,000-340,000/year.',
          sideEffects: 'Fever, diarrhea, rash. Potential teratogenicity (pregnancy avoidance required).',
          boardPearl: 'FIREFISH trial (Type 1): 29-41% achieved sitting without support at 12 months; 85-90% alive without permanent ventilation. The ONLY oral SMA therapy. Key advantage: No intrathecal injections, no IV infusion, administered at home.',
        ),
        TableBlock(
          title: 'SMA Gene Therapies Comparison',
          columns: ['Feature', 'Nusinersen\n(Spinraza)', 'Onasemnogene\n(Zolgensma)', 'Risdiplam\n(Evrysdi)'],
          rows: [
            ['Route', 'Intrathecal\n(lumbar puncture)', 'IV infusion\n(one-time)', 'Oral\n(daily liquid)'],
            ['Mechanism', 'SMN2 splicing\nmodifier (ASO)', 'SMN1 gene\nreplacement\n(AAV9)', 'SMN2 splicing\nmodifier\n(small molecule)'],
            ['Frequency', 'Every 4 months\n(after loading)', 'ONE-TIME', 'Daily'],
            ['Approved Age', 'All ages', '<2 years', '>=2 months'],
            ['Key Trial', 'ENDEAR /\nCHERISH', 'START /\nSTR1VE', 'FIREFISH /\nSUNFISH'],
            ['Approx Cost', '~\$375K/year', '~\$2.1M\n(one-time)', '~\$100-340K/year'],
            ['Key Monitoring', 'Platelets,\ncoagulation, renal', 'LFTs\n(hepatotoxicity)', 'CBC,\npregnancy test'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),

        HeaderBlock('DMD Gene Therapies'),
        BulletCardBlock(
          title: 'Exon-Skipping Antisense Oligonucleotides',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Cause specific exons to be skipped during pre-mRNA processing',
            'Produce TRUNCATED but partially functional dystrophin (similar to milder Becker phenotype)',
            'Unlike SMA (all patients share same defect), DMD arises from hundreds of different dystrophin gene mutations',
            'Each exon-skipping agent is MUTATION-SPECIFIC -- applicable to only a subset of DMD patients',
            'Collectively, the 4 approved agents cover ~30% of amenable DMD mutations',
            'All weekly IV infusions; all received FDA accelerated approval based on surrogate endpoints (dystrophin production)',
          ],
        ),
        TableBlock(
          title: 'DMD Exon-Skipping Therapies',
          columns: ['Agent', 'Brand', 'Target', 'FDA Approval', '% Applicable'],
          rows: [
            ['Eteplirsen', 'Exondys 51', 'Exon 51', 'Sept 2016', '~13%'],
            ['Golodirsen', 'Vyondys 53', 'Exon 53', 'Dec 2019', '~8%'],
            ['Viltolarsen', 'Viltepso', 'Exon 53', 'Aug 2020', '~8%'],
            ['Casimersen', 'Amondys 45', 'Exon 45', 'Feb 2021', '~8%'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        MedicationCardBlock(
          name: 'Delandistrogene moxeparvovec (Elevidys)',
          drugClass: 'AAV Gene Replacement Therapy',
          mechanism: 'AAV-based gene therapy delivering a micro-dystrophin construct. First gene REPLACEMENT approach for DMD (as opposed to exon-skipping).',
          indication: 'Ambulatory boys with DMD aged 4-5 years. FDA accelerated approval June 2023.',
          dosing: 'Single IV infusion.',
          sideEffects: 'Immune-mediated reactions, hepatotoxicity (monitor LFTs), thrombocytopenia.',
          boardPearl: 'Elevidys is the first gene replacement therapy for DMD, delivering a micro-dystrophin gene via AAV. Unlike exon-skipping therapies (which are mutation-specific), gene replacement could theoretically benefit all DMD patients regardless of their specific dystrophin mutation.',
        ),

        HeaderBlock('Growth Plate Effects of Medications'),
        TableBlock(
          title: 'Medications Affecting the Pediatric Growth Plate',
          columns: ['Medication/Agent', 'Effect on Growth Plate'],
          rows: [
            ['Chronic\ncorticosteroids', 'Suppress growth velocity via\nGH axis and IGF-1 reduction;\ndo not cause premature closure;\nassociated osteopenia'],
            ['Fluoroquinolones', 'Cartilage damage in juvenile\nanimal studies; FDA black box;\navoided in children <18 yrs'],
            ['Sex steroids\n(testosterone,\nestrogen)', 'Accelerate skeletal maturation\nand epiphyseal fusion;\nprecocious puberty = early\nfusion and short stature'],
            ['Retinoids\n(isotretinoin)', 'Case reports of premature\nepiphyseal closure;\nhyperostosis'],
            ['Excessive\nVitamin A', 'Premature growth plate closure'],
            ['Growth hormone', 'Does NOT cause premature\nclosure; accelerates growth\nvelocity; used therapeutically'],
            ['Bisphosphonates', 'No direct growth plate effect;\nincrease BMD; used in OI\nand DMD osteoporosis'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        PearlBlock(
          'Board Pearl — Growth Plate Safety',
          'Corticosteroids suppress growth velocity but do NOT cause premature closure. Fluoroquinolones carry FDA black box for cartilage damage -- generally avoided in children. Sex steroids accelerate epiphyseal fusion. Therapeutic ultrasound is CONTRAINDICATED over open growth plates (risk of premature closure). Growth hormone does NOT cause premature closure.',
        ),
      ],
    ),

    // ============ TAB 5: JIA & Anti-inflammatory ============
    TopicTab(
      title: 'JIA & Anti-inflammatory',
      blocks: [
        HeaderBlock('JIA & Anti-inflammatory Medications'),
        TextBlock(
          'Pharmacologic management of juvenile idiopathic arthritis (JIA) involves a stepwise approach from NSAIDs to DMARDs to biologics. Understanding FDA approvals, drug-specific side effects, and monitoring requirements is essential.',
          isIntro: true,
        ),

        HeaderBlock('NSAIDs in Pediatrics'),
        BulletCardBlock(
          title: 'FDA-Approved NSAIDs for Children',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Only THREE NSAIDs are FDA-approved for use in children with JIA:',
            '1. Naproxen (Naprosyn) -- 5-7 mg/kg/dose q12h, max 20 mg/kg/day',
            '2. Ibuprofen (Motrin/Advil) -- 5-10 mg/kg/dose q6-8h, max 40 mg/kg/day',
            '3. Tolmetin (Tolectin)',
            'Celecoxib (COX-2 inhibitor): FDA-approved specifically for JIA',
            'NSAIDs are first-line therapy for JIA',
            'May take 4-6 weeks to achieve full anti-inflammatory effect',
            'GI side effects are the most common class effect',
          ],
        ),
        PearlBlock(
          'Board Pearl — Aspirin & Reye Syndrome',
          'Aspirin use in children with influenza or varicella infections is associated with Reye syndrome -- an acute, potentially fatal encephalopathy with liver failure. Aspirin is generally avoided in children under 19 years for this reason.',
        ),

        HeaderBlock('DMARDs'),
        MedicationCardBlock(
          name: 'Methotrexate',
          drugClass: 'DMARD / Antimetabolite',
          mechanism: 'Folate antagonist that inhibits dihydrofolate reductase. Suppresses immune-mediated inflammation. Also has anti-proliferative effects.',
          indication: 'Most commonly used DMARD for JIA. Used when NSAIDs fail after adequate trial.',
          dosing: 'Weekly dosing (oral or subcutaneous). Folic acid supplementation to reduce side effects.',
          sideEffects: 'Bone marrow suppression, GI effects (nausea, mucositis), hepatotoxicity. AVOID concurrent NSAIDs (decrease renal clearance of methotrexate, increasing toxicity).',
          boardPearl: 'Methotrexate is the most commonly used DMARD for JIA. CRITICAL drug interaction: NSAIDs + methotrexate = increased toxicity (decreased renal clearance).',
        ),
        MedicationCardBlock(
          name: 'Hydroxychloroquine (Plaquenil)',
          drugClass: 'DMARD / Antimalarial',
          mechanism: 'Interferes with antigen processing and immune activation.',
          indication: 'JIA and SLE. Most commonly used antimalarial for autoimmune disease.',
          sideEffects: 'Retinal toxicity / macular degeneration -- requires regular ophthalmologic screening (every 6-12 months).',
          boardPearl: 'Key side effect is macular degeneration requiring ophthalmologic monitoring. This is a high-yield association for boards.',
        ),

        HeaderBlock('Biologic Agents'),
        BulletCardBlock(
          title: 'Biologics in JIA',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'TNF-alpha inhibitors: Etanercept (Enbrel -- most commonly used biologic for JIA), Adalimumab (Humira), Infliximab (Remicade)',
            'IL-1 inhibitors: Anakinra (Kineret), Canakinumab (Ilaris)',
            'IL-6 inhibitors: Tocilizumab (Actemra)',
            'T-cell co-stimulation blocker: Abatacept (Orencia)',
            'Used when DMARDs fail to control disease adequately',
            'Increased risk of infections -- screen for TB before starting',
          ],
        ),

        HeaderBlock('Corticosteroids in JIA'),
        BulletCardBlock(
          title: 'Corticosteroid Use & Side Effects',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Used for severe/systemic JIA or as bridge therapy',
            'Intra-articular injections for oligoarticular disease',
            'Growth failure -- major concern in children',
            'Adrenal suppression with chronic use',
            'Osteopenia/osteoporosis',
            'Avascular necrosis (AVN) -- especially femoral head',
            'Weight gain, cushingoid features',
            'Posterior subcapsular cataracts',
            'Steroid myopathy -- proximal weakness',
          ],
        ),
        TableBlock(
          title: 'JIA Drug Therapy & Key Side Effects',
          columns: ['Drug', 'Key Side Effects'],
          rows: [
            ['Aspirin', 'Drowsiness, tinnitus, Reye syndrome\n(avoid with influenza/varicella)'],
            ['Naproxen', 'GI upset, pseudoporphyria'],
            ['Ibuprofen', 'GI upset, rash,\naseptic meningitis'],
            ['Gold salts', 'Mucosal ulcers, rash,\nproteinuria, nephropathy'],
            ['Hydroxychloroquine', 'Macular degeneration\n(ophthalmologic monitoring)'],
            ['D-Penicillamine', 'Bone marrow suppression, renal\ntoxicity, autoimmune syndromes'],
            ['Sulfasalazine', 'GI upset, rash,\nhypersensitivity'],
            ['Methotrexate', 'Bone marrow suppression, GI,\nhepatotoxicity (avoid with\nNSAIDs -- increased toxicity)'],
            ['Cyclophosphamide', 'Alopecia, nausea,\nhemorrhagic cystitis,\npulmonary fibrosis'],
            ['Cyclosporine', 'Immunosuppression,\nhypertension, renal toxicity'],
            ['Corticosteroids', 'Growth failure, adrenal\nsuppression, osteopenia,\nAVN, cataracts, myopathy'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — JIA Medication Ladder',
          'First-line: NSAIDs (naproxen, ibuprofen, tolmetin). Second-line: DMARDs (methotrexate most common). Third-line: Biologics (etanercept most common). Corticosteroids: Bridge therapy or intra-articular for oligoarticular disease. Key interaction: Methotrexate + NSAIDs = increased methotrexate toxicity.',
        ),
      ],
    ),
  ],
);
