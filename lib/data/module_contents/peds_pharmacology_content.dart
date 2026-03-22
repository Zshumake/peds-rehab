import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final pedsPharmacologyContent = TopicData(
  id: 'peds-pharmacology',
  title: 'Pediatric Pharmacology',
  tabs: [
    // ============ TAB 1: Spasticity Medications ============
    TopicTab(
      title: 'Spasticity Meds',
      blocks: [
        HeaderBlock('Spasticity Medications'),
        TextBlock(
          'Management of spasticity in pediatric rehabilitation involves oral agents, intrathecal delivery, chemodenervation, and chemical neurolysis. Understanding the mechanism and site of action for each medication is critical for board preparation and clinical decision-making.',
          isIntro: true,
        ),

        // --- Baclofen ---
        MedicationCardBlock(
          name: 'Baclofen (Lioresal)',
          drugClass: 'GABA-B Agonist',
          mechanism: 'Binds GABA-B receptors in the spinal cord, inhibiting monosynaptic and polysynaptic reflexes. Reduces excitatory neurotransmitter release at the spinal level.',
          indication: 'Drug of choice for spasticity from MS and SCI. Available in oral and intrathecal (ITB) forms.',
          dosing: 'Oral: Start low, titrate slowly. Intrathecal: Via implanted pump, allows much lower doses with fewer systemic side effects.',
          sideEffects: 'Sedation, drowsiness, weakness, dizziness. Abrupt withdrawal can be life-threatening.',
          boardPearl: 'Baclofen acts CENTRALLY in the spinal cord at GABA-B receptors. It is the drug of choice for MS and SCI spasticity. Intrathecal baclofen pump is FDA-approved for CP, TBI, MS, and SCI.',
        ),
        BulletCardBlock(
          title: 'Intrathecal Baclofen (ITB) Pump',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'FDA-approved for spasticity in CP, TBI, MS, and SCI',
            'Delivers medication directly to CSF, bypassing blood-brain barrier',
            'Much lower doses needed compared to oral (micrograms vs milligrams)',
            'Reduces systemic side effects (sedation, cognitive effects)',
            'Requires surgical implantation and regular refills',
            'Pump battery life approximately 5-7 years',
          ],
        ),
        BulletCardBlock(
          title: 'ITB Withdrawal — MEDICAL EMERGENCY',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Can be FATAL if untreated — treat as medical emergency',
            'Progression: Pruritus (itching) is often the earliest sign',
            'Followed by: Increasing spasticity and dystonia',
            'Then: Hyperthermia (high fever)',
            'Then: Tachycardia and hypertension',
            'Finally: Seizures, rhabdomyolysis, multi-organ failure, death',
            'Causes: Catheter kink/dislodgement, pump malfunction, missed refill',
            'Treatment: Restore intrathecal baclofen delivery; oral baclofen, benzodiazepines, dantrolene as bridge',
          ],
        ),
        BulletCardBlock(
          title: 'ITB Overdose — MEDICAL EMERGENCY',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Also a medical emergency — can be fatal',
            'Decreased muscle tone (flaccidity)',
            'Hypothermia (opposite of withdrawal)',
            'Hypotension (opposite of withdrawal)',
            'Decreased respiratory drive — may require intubation',
            'Seizures',
            'Coma',
            'Treatment: Supportive care, airway management, CSF drainage if needed',
          ],
        ),
        PearlBlock(
          'Board Pearl — ITB Withdrawal vs Overdose',
          'Withdrawal = HOT (hyperthermia, hypertension, tachycardia, spasticity). Overdose = COLD (hypothermia, hypotension, flaccidity, respiratory depression). Both can cause seizures and both are medical emergencies.',
        ),

        // --- Dantrolene ---
        MedicationCardBlock(
          name: 'Dantrolene (Dantrium)',
          drugClass: 'Direct-Acting Muscle Relaxant',
          mechanism: 'Acts PERIPHERALLY at the sarcoplasmic reticulum of skeletal muscle. Inhibits calcium release from the sarcoplasmic reticulum, reducing muscle contraction strength.',
          indication: 'Drug of choice for CEREBRAL spasticity (CP, TBI, stroke). Also used for malignant hyperthermia and neuroleptic malignant syndrome.',
          dosing: 'Oral: Start 0.5 mg/kg BID, titrate up to 3 mg/kg QID (max 400 mg/day).',
          sideEffects: 'Hepatotoxicity (potentially fatal) — requires baseline and periodic LFT monitoring. Weakness, drowsiness, diarrhea.',
          boardPearl: 'Dantrolene is the ONLY spasticity medication that acts PERIPHERALLY (at the muscle, not the CNS). It is the drug of choice for cerebral spasticity. Monitor LFTs for hepatotoxicity.',
        ),
        PearlBlock(
          'Board Pearl — Dantrolene',
          'Dantrolene acts at the sarcoplasmic reticulum (peripheral mechanism). All other oral spasticity medications act centrally. Hepatotoxicity is the most serious side effect — obtain baseline LFTs and monitor regularly.',
        ),

        // --- Benzodiazepines ---
        MedicationCardBlock(
          name: 'Diazepam (Valium)',
          drugClass: 'Benzodiazepine (GABA-A Agonist)',
          mechanism: 'Binds GABA-A receptors in the brainstem and reticular formation, enhancing inhibitory neurotransmission. Increases frequency of chloride channel opening.',
          indication: 'Spasticity from upper motor neuron lesions. Often used as adjunctive therapy.',
          dosing: 'Oral: 0.12-0.8 mg/kg/day divided TID-QID.',
          sideEffects: 'Sedation is the MAJOR limiting side effect. Cognitive impairment, dependence, tolerance, paradoxical excitation in children.',
          boardPearl: 'Benzodiazepines bind GABA-A receptors (not GABA-B like baclofen). The brainstem and reticular formation are the primary sites. Sedation is the major dose-limiting side effect.',
        ),

        // --- Tizanidine ---
        MedicationCardBlock(
          name: 'Tizanidine (Zanaflex)',
          drugClass: 'Alpha-2 Adrenergic Agonist',
          mechanism: 'Central alpha-2 adrenergic agonist. Reduces spasticity by increasing presynaptic inhibition of motor neurons and reducing excitatory amino acid release.',
          indication: 'Spasticity. Also useful for dystonia, torticollis, and blepharospasm.',
          dosing: 'Children: Start 1 mg at bedtime, titrate slowly.',
          sideEffects: 'Sedation, dry mouth, dizziness, hypotension, hepatotoxicity (monitor LFTs).',
          boardPearl: 'Tizanidine is particularly useful for dystonia, torticollis, and blepharospasm in addition to spasticity. It is an alpha-2 agonist (same class as clonidine).',
        ),

        // --- Clonidine ---
        MedicationCardBlock(
          name: 'Clonidine (Catapres)',
          drugClass: 'Alpha-2 Adrenergic Agonist',
          mechanism: 'Central alpha-2 adrenergic agonist acting in the brain, brainstem, and substantia gelatinosa of the spinal cord. Reduces sympathetic outflow and modulates spinal reflex arcs.',
          indication: 'Adjunctive treatment for spasticity. Also used for ADHD, tics, and autonomic dysreflexia.',
          sideEffects: 'Hypotension, sedation, dry mouth, bradycardia. Rebound hypertension if stopped abruptly.',
          boardPearl: 'Clonidine acts at the brain, brainstem, and substantia gelatinosa. It is in the same class as tizanidine (alpha-2 agonist) but with different clinical applications.',
        ),

        // --- Botulinum Toxin ---
        HeaderBlock('Chemodenervation & Chemical Neurolysis'),
        MedicationCardBlock(
          name: 'Botulinum Toxin (Botox/Dysport)',
          drugClass: 'Neuromuscular Blocking Agent',
          mechanism: 'Acts PRESYNAPTICALLY at the neuromuscular junction (NMJ). Blocks acetylcholine release by cleaving SNARE proteins, preventing vesicle fusion with the presynaptic membrane.',
          indication: 'Focal spasticity, dystonia, sialorrhea, hyperhidrosis. Used for dynamic contractures in CP.',
          dosing: 'Onset: 24-72 hours. Peak effect: 2 weeks. Duration: 3-6 months. Can be repeated.',
          sideEffects: 'Local weakness, pain at injection site. NO sensory side effects. Rare: dysphagia, generalized weakness.',
          boardPearl: 'Botulinum toxin has NO sensory side effects and does NOT develop true tolerance. Advantages over phenol: no dysesthesias, less painful injection, fully reversible, no risk of permanent nerve damage.',
        ),
        BulletCardBlock(
          title: 'Botulinum Toxin — Key Facts',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Onset: 24-72 hours after injection',
            'Peak effect: ~2 weeks',
            'Duration: 3-6 months',
            'NO sensory side effects (major advantage over phenol)',
            'NO true tolerance development',
            'Advantages over phenol: No dysesthesias, less painful, reversible',
            'Can be used with EMG or electrical stimulation guidance',
            'Antibody formation possible but rare — may reduce efficacy',
          ],
        ),

        // --- Phenol ---
        MedicationCardBlock(
          name: 'Phenol',
          drugClass: 'Chemical Neurolytic Agent',
          mechanism: 'Chemical neurolysis — causes protein denaturation and axonal destruction of both motor and sensory fibers at the injection site. Concentration used: 3-7% solution.',
          indication: 'Focal spasticity when large muscle groups are involved. Motor point or nerve blocks. Cost-effective alternative to botulinum toxin.',
          dosing: '3-7% aqueous solution. Effect is immediate. Duration: 3-6 months (nerve regeneration occurs).',
          sideEffects: 'Dysesthesias (painful burning sensation) — risk of PERMANENT dysesthesias if injected near sensory nerves. Pain at injection. Tissue necrosis if extravasated.',
          boardPearl: 'Phenol destroys both motor AND sensory nerve fibers, which is why dysesthesias are a major risk. This is the key disadvantage compared to botulinum toxin, which only affects the motor endplate.',
        ),

        // --- Comparison Table ---
        TableBlock(
          title: 'Spasticity Medications Comparison',
          columns: ['Medication', 'Mechanism / Site', 'Key Side Effects'],
          rows: [
            ['Baclofen', 'GABA-B agonist\nSpinal cord (central)', 'Sedation, weakness\nWithdrawal = emergency'],
            ['Dantrolene', 'Ca²+ release inhibitor\nSarcoplasmic reticulum\n(PERIPHERAL)', 'Hepatotoxicity\n(monitor LFTs)\nWeakness'],
            ['Diazepam', 'GABA-A agonist\nBrainstem/reticular\nformation (central)', 'Sedation (major)\nDependence\nCognitive effects'],
            ['Tizanidine', 'Alpha-2 agonist\n(central)', 'Sedation, dry mouth\nHypotension\nHepatic effects'],
            ['Clonidine', 'Alpha-2 agonist\nBrain/brainstem/\nsubstantia gelatinosa', 'Hypotension\nSedation\nRebound HTN'],
            ['Botulinum\nToxin', 'Presynaptic ACh\nrelease blocker at NMJ', 'Local weakness\nNO sensory effects\nNO tolerance'],
            ['Phenol', 'Chemical neurolysis\n3-7% solution', 'Dysesthesias\n(may be permanent)\nTissue necrosis'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Site of Action',
          'Baclofen = spinal cord (GABA-B). Diazepam = brainstem (GABA-A). Tizanidine/Clonidine = central alpha-2. Dantrolene = sarcoplasmic reticulum (PERIPHERAL — the only one). Botulinum toxin = presynaptic NMJ. Phenol = chemical neurolysis (motor + sensory).',
        ),
      ],
    ),

    // ============ TAB 2: JIA & Anti-inflammatory ============
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
            '1. Naproxen (Naprosyn)',
            '2. Ibuprofen (Motrin/Advil)',
            '3. Tolmetin (Tolectin)',
            'NSAIDs are first-line therapy for JIA',
            'May take 4-6 weeks to achieve full anti-inflammatory effect',
            'GI side effects are the most common class effect',
          ],
        ),
        PearlBlock(
          'Board Pearl — Aspirin & Reye Syndrome',
          'Aspirin use in children with influenza or varicella (chickenpox) infections is associated with Reye syndrome — an acute, potentially fatal encephalopathy with liver failure. Aspirin is generally avoided in pediatric patients for this reason.',
        ),

        HeaderBlock('Drug Therapy for JIA — Side Effects'),
        TextBlock(
          'The following table summarizes medications used in JIA management and their important side effects. This is a high-yield board topic.',
        ),
        TableBlock(
          title: 'JIA Drug Therapy & Side Effects (Cuccurullo 10-12)',
          columns: ['Drug', 'Key Side Effects'],
          rows: [
            ['Aspirin', 'Drowsiness, tinnitus, Reye syndrome\n(avoid with influenza/varicella)'],
            ['Naproxen', 'GI upset, pseudoporphyria,\ncutanea tarda'],
            ['Ibuprofen', 'GI upset, rash,\naseptic meningitis'],
            ['Tolmetin', 'GI upset'],
            ['Indomethacin', 'Headache, epigastric pain'],
            ['Gold salts', 'Mucosal ulcers, rash,\nproteinuria, nephropathy'],
            ['Auranofin\n(oral gold)', 'GI upset, rash'],
            ['Hydroxychloroquine', 'Macular degeneration\n(requires ophthalmologic monitoring)'],
            ['D-Penicillamine', 'Bone marrow suppression,\nrenal toxicity, autoimmune syndromes'],
            ['Sulfasalazine', 'GI upset, rash,\nhypersensitivity reactions'],
            ['Methotrexate', 'Bone marrow suppression, GI,\nhepatotoxicity (avoid with NSAIDs\n— increased toxicity)'],
            ['Azathioprine', 'Liver side effects,\ndose-related leukopenia'],
            ['Cyclophosphamide', 'Alopecia, nausea,\nhemorrhagic cystitis,\npulmonary fibrosis'],
            ['Cyclosporine', 'Immunosuppression,\nhypertension, renal toxicity'],
            ['Corticosteroids', 'Growth failure, adrenal suppression,\nosteopenia, AVN, weight gain,\ncataracts, myopathy'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),

        HeaderBlock('Disease-Modifying Antirheumatic Drugs (DMARDs)'),
        MedicationCardBlock(
          name: 'Methotrexate',
          drugClass: 'DMARD / Antimetabolite',
          mechanism: 'Folate antagonist that inhibits dihydrofolate reductase. Suppresses immune-mediated inflammation. Also has anti-proliferative effects.',
          indication: 'Most commonly used DMARD for JIA. Used when NSAIDs fail to control disease after adequate trial.',
          dosing: 'Weekly dosing (oral or subcutaneous). Folic acid supplementation to reduce side effects.',
          sideEffects: 'Bone marrow suppression, GI effects (nausea, mucositis), hepatotoxicity. AVOID concurrent NSAIDs (increased methotrexate toxicity).',
          boardPearl: 'Methotrexate is the most commonly used DMARD for JIA. Critical drug interaction: NSAIDs decrease renal clearance of methotrexate, increasing toxicity risk.',
        ),
        MedicationCardBlock(
          name: 'Hydroxychloroquine (Plaquenil)',
          drugClass: 'DMARD / Antimalarial',
          mechanism: 'Interferes with antigen processing and immune activation. Exact mechanism in autoimmune disease not fully understood.',
          indication: 'Most commonly used antimalarial agent for JIA. Also first-line for SLE.',
          sideEffects: 'Retinal toxicity / macular degeneration — requires regular ophthalmologic screening (typically every 6-12 months).',
          boardPearl: 'Hydroxychloroquine is the most commonly used antimalarial for JIA. The key side effect to remember is macular degeneration requiring ophthalmologic monitoring.',
        ),
        MedicationCardBlock(
          name: 'D-Penicillamine',
          drugClass: 'DMARD / Chelating Agent',
          mechanism: 'Mechanism in rheumatic diseases not fully understood. May suppress T-cell function and reduce rheumatoid factor levels.',
          indication: 'Second-line DMARD for JIA. Can induce remission in 60-70% of patients.',
          sideEffects: 'Bone marrow suppression, renal toxicity, drug-induced autoimmune syndromes (lupus-like, myasthenia-like).',
          boardPearl: 'D-Penicillamine can induce remission in 60-70% of JIA patients but has significant toxicity. It can paradoxically cause autoimmune syndromes.',
        ),

        HeaderBlock('Biologic Agents'),
        BulletCardBlock(
          title: 'Biologics in JIA',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'TNF-alpha inhibitors: Etanercept (Enbrel), Adalimumab (Humira), Infliximab (Remicade)',
            'IL-1 inhibitors: Anakinra (Kineret), Canakinumab (Ilaris)',
            'IL-6 inhibitors: Tocilizumab (Actemra)',
            'T-cell co-stimulation blocker: Abatacept (Orencia)',
            'Used when DMARDs fail to control disease adequately',
            'Increased risk of infections — screen for TB before starting',
            'Etanercept is the most commonly used biologic for JIA',
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
            'Growth failure — major concern in children',
            'Adrenal suppression with chronic use',
            'Osteopenia/osteoporosis',
            'Avascular necrosis (AVN) — especially femoral head',
            'Weight gain, cushingoid features',
            'Posterior subcapsular cataracts',
            'Steroid myopathy — proximal weakness',
          ],
        ),
        PearlBlock(
          'Board Pearl — JIA Medication Ladder',
          'First-line: NSAIDs (naproxen, ibuprofen, tolmetin). Second-line: DMARDs (methotrexate most common). Third-line: Biologics (etanercept most common). Corticosteroids: Bridge therapy or intra-articular for oligoarticular disease.',
        ),
      ],
    ),

    // ============ TAB 3: Pain & Seizure Medications ============
    TopicTab(
      title: 'Pain & Seizures',
      blocks: [
        HeaderBlock('Pediatric Pain Assessment'),
        TextBlock(
          'Pain assessment in pediatric rehabilitation requires age-appropriate tools. Nonverbal children and those with cognitive impairment require observational scales. Proper assessment drives appropriate pain management.',
          isIntro: true,
        ),

        ScaleBlock(
          scaleName: 'FLACC Pain Scale',
          description: 'Behavioral pain assessment for nonverbal children ages 0-7 years. Each category scored 0-2, total score 0-10. Used for preverbal children, cognitively impaired patients, and intubated/sedated children.',
          columns: ['Category', '0', '1', '2'],
          rows: [
            ['Face', 'No expression\nor smile', 'Occasional grimace,\nfrown, withdrawn', 'Frequent quivering\nchin, clenched jaw'],
            ['Legs', 'Normal/relaxed', 'Uneasy, restless,\ntense', 'Kicking or\nlegs drawn up'],
            ['Activity', 'Lying quietly,\nnormal position', 'Squirming, shifting,\ntense', 'Arched, rigid,\nor jerking'],
            ['Cry', 'No cry', 'Moans, whimpers,\noccasional complaint', 'Crying steadily,\nscreams, sobs'],
            ['Consolability', 'Content, relaxed', 'Reassured by touch,\ndistractible', 'Difficult to\nconsole or comfort'],
          ],
          boardPearl: 'FLACC = Face, Legs, Activity, Cry, Consolability. Used for NONVERBAL children ages 0-7 years. This is the go-to scale for preverbal or cognitively impaired patients.',
        ),
        BulletCardBlock(
          title: 'Wong-Baker FACES Pain Scale',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Self-report scale for VERBAL children ages 3+ years',
            'Uses 6 cartoon faces ranging from smiling (no hurt) to crying (worst hurt)',
            'Scores: 0, 2, 4, 6, 8, 10',
            'Child points to the face that best represents their pain',
            'Requires ability to understand and communicate',
            'Widely used in emergency departments and pediatric units',
          ],
        ),
        PearlBlock(
          'Board Pearl — Pain Scales',
          'FLACC = observational, for NONVERBAL children ages 0-7 (preverbal, cognitively impaired). Wong-Baker FACES = self-report, for VERBAL children ages 3+. Know which scale to use for which patient population.',
        ),

        HeaderBlock('Pediatric Pain Management'),
        BulletCardBlock(
          title: 'WHO Pain Management Ladder (Adapted for Pediatrics)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Step 1 — Mild pain: Acetaminophen or NSAIDs (ibuprofen, naproxen)',
            'Step 2 — Moderate pain: Weak opioid (codeine, tramadol) + non-opioid adjuvant',
            'Step 3 — Severe pain: Strong opioid (morphine, hydromorphone) + non-opioid adjuvant',
            'Adjuvant therapies at all levels: Physical modalities, CBT, relaxation, biofeedback',
            'Neuropathic pain: Gabapentin, pregabalin, tricyclic antidepressants',
            'Codeine: Use with caution — CYP2D6 ultra-rapid metabolizers at risk for toxicity',
            'Multimodal approach is preferred in pediatric rehabilitation',
          ],
        ),

        HeaderBlock('Seizure Medications in Pediatric Rehab'),
        TextBlock(
          'Children with TBI and CP have increased seizure risk. Antiepileptic drug (AED) selection must consider cognitive and behavioral side effects, as these can impact rehabilitation participation and outcomes.',
        ),
        TableBlock(
          title: 'Common AEDs in Pediatric Rehabilitation',
          columns: ['Medication', 'Indications', 'Key Side Effects / Notes'],
          rows: [
            ['Levetiracetam\n(Keppra)', 'Broad-spectrum\nFirst-line for TBI', 'Behavioral changes,\nirritability, aggression\nMinimal drug interactions'],
            ['Valproic acid\n(Depakote)', 'Broad-spectrum\nGeneralized seizures', 'Hepatotoxicity, weight gain,\nthrombocytopenia, teratogen\nMonitor LFTs and levels'],
            ['Carbamazepine\n(Tegretol)', 'Focal seizures\nTrigeminal neuralgia', 'Aplastic anemia, SIADH,\nStevens-Johnson syndrome\nMany drug interactions'],
            ['Oxcarbazepine\n(Trileptal)', 'Focal seizures', 'Hyponatremia, rash\nFewer interactions than\ncarbamazepine'],
            ['Phenobarbital', 'Neonatal seizures\nStatus epilepticus', 'Sedation, cognitive effects,\nbehavioral changes\nAvoid in rehab if possible'],
            ['Phenytoin\n(Dilantin)', 'Focal, tonic-clonic\nStatus epilepticus', 'Gingival hyperplasia,\nhirsutism, osteomalacia\nZero-order kinetics'],
            ['Topiramate\n(Topamax)', 'Broad-spectrum\nMigraine prophylaxis', 'Cognitive slowing ("dopamax"),\nweight loss, kidney stones,\nmetabolic acidosis'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — AEDs in TBI',
          'Levetiracetam (Keppra) is preferred in TBI because it has minimal cognitive side effects and few drug interactions. Phenytoin and phenobarbital can impair cognitive recovery and should be avoided when possible in rehabilitation settings.',
        ),

        HeaderBlock('Corticosteroids in DMD'),
        MedicationCardBlock(
          name: 'Prednisone / Deflazacort',
          drugClass: 'Corticosteroid',
          mechanism: 'Anti-inflammatory and immunomodulatory effects. In DMD, corticosteroids slow muscle degeneration, prolong ambulation, preserve pulmonary function, and delay scoliosis progression.',
          indication: 'Standard of care in DMD. Initiate at motor plateau, typically age 4-6 years (when motor skills stop progressing or begin to decline).',
          dosing: 'Prednisone: 0.75 mg/kg/day. Deflazacort: 0.9 mg/kg/day. Daily dosing most effective.',
          sideEffects: 'Weight gain (may be less with deflazacort), growth suppression, osteoporosis, cataracts, behavioral changes, adrenal suppression, cushingoid features.',
          boardPearl: 'Start corticosteroids at motor plateau (age 4-6 years). Deflazacort may cause less weight gain than prednisone. Corticosteroids prolong ambulation by 2-5 years and are the only medications proven to slow DMD progression.',
        ),
        BulletCardBlock(
          title: 'Prednisone vs Deflazacort in DMD',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Both prolong ambulation and preserve function',
            'Deflazacort may have LESS weight gain than prednisone',
            'Deflazacort may have HIGHER risk of cataracts',
            'Start at motor plateau (age 4-6 years)',
            'Daily dosing is most effective regimen',
            'Monitor: Growth, bone density, glucose, blood pressure, eyes',
            'Vitamin D and calcium supplementation recommended',
          ],
        ),

        HeaderBlock('Growth Plate Considerations'),
        BulletCardBlock(
          title: 'Medications Affecting Growth Plates',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Corticosteroids: Growth suppression — dose-dependent inhibition of linear growth, reduced growth velocity',
            'Fluoroquinolones: Cartilage damage shown in juvenile animal studies — generally avoided in children',
            'Chronic opioid use: May suppress growth hormone secretion',
            'AEDs (phenytoin, phenobarbital): Can affect vitamin D metabolism, leading to osteomalacia/rickets',
            'Always consider growth plate status when prescribing in pediatric patients',
          ],
        ),
      ],
    ),

    // ============ TAB 4: Growth & Development Considerations ============
    TopicTab(
      title: 'Growth & Emerging Rx',
      blocks: [
        HeaderBlock('Growth & Development Pharmacology'),
        TextBlock(
          'Pediatric pharmacology requires special consideration of the growing skeleton, maturing organ systems, and the unique disease-modifying therapies emerging for neuromuscular conditions. Gene therapies are transforming treatment of previously untreatable conditions.',
          isIntro: true,
        ),

        HeaderBlock('Unique Pharmacologic Considerations in Children'),
        BulletCardBlock(
          title: 'Pediatric Pharmacokinetic Differences',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Higher body water percentage — affects volume of distribution for water-soluble drugs',
            'Immature hepatic metabolism — neonates metabolize drugs more slowly',
            'Immature renal function — reduced clearance in neonates and infants',
            'Higher metabolic rate in children — may require higher weight-based doses than adults',
            'Changing body composition — fat-to-lean ratio changes with age affect drug distribution',
            'Open growth plates — unique vulnerability to certain medications',
            'Blood-brain barrier more permeable in neonates',
          ],
        ),

        HeaderBlock('Growth Plate Effects of Medications & Modalities'),
        BulletCardBlock(
          title: 'Corticosteroids & Growth',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Suppress linear growth through multiple mechanisms',
            'Inhibit growth hormone secretion and IGF-1 activity',
            'Decrease osteoblast activity and increase osteoclast activity',
            'Reduce intestinal calcium absorption',
            'Growth suppression is dose-dependent and partially reversible',
            'Catch-up growth may occur after discontinuation but is often incomplete',
            'Critical consideration in DMD, JIA, and chronic asthma management',
          ],
        ),
        BulletCardBlock(
          title: 'Fluoroquinolones & Cartilage',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Cartilage damage demonstrated in juvenile animal studies (dogs, rats)',
            'Mechanism: Toxic effect on chondrocytes in weight-bearing joints',
            'Generally AVOIDED in children under 18 years',
            'May be used when benefits outweigh risks (e.g., anthrax, CF with Pseudomonas)',
            'Human data less conclusive than animal studies but caution is warranted',
          ],
        ),
        BulletCardBlock(
          title: 'Therapeutic Ultrasound Near Growth Plates',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'AVOID ultrasound therapy over or near open epiphyseal (growth) plates',
            'Risk of premature growth plate closure',
            'Thermal effects may damage the highly metabolically active physis',
            'This is a CONTRAINDICATION, not just a precaution',
            'Applies to therapeutic ultrasound, not diagnostic ultrasound',
            'Growth plates remain open until skeletal maturity (girls ~14-16, boys ~16-18)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Growth Plate Safety',
          'Three things to avoid near open growth plates: (1) Therapeutic ultrasound — risk of premature closure. (2) Fluoroquinolone antibiotics — cartilage damage in animal studies. (3) Chronic corticosteroids — growth suppression. These are commonly tested topics.',
        ),

        HeaderBlock('SMA Gene Therapies'),
        TextBlock(
          'Spinal muscular atrophy treatment has been revolutionized by three FDA-approved therapies targeting the underlying genetic defect (SMN1 gene deletion/mutation on chromosome 5q).',
        ),
        MedicationCardBlock(
          name: 'Nusinersen (Spinraza)',
          drugClass: 'Antisense Oligonucleotide (ASO)',
          mechanism: 'Modifies SMN2 pre-mRNA splicing to increase production of functional SMN protein. SMN2 normally produces mostly truncated, nonfunctional protein; nusinersen corrects splicing to produce full-length SMN protein.',
          indication: 'All types of SMA (Types 1-4). FDA-approved 2016 — first approved treatment for SMA.',
          dosing: 'INTRATHECAL injection. Loading doses: Days 0, 14, 28, 63. Maintenance: Every 4 months. Lifelong treatment.',
          sideEffects: 'Thrombocytopenia, coagulation abnormalities, renal toxicity. Procedural risks of repeated lumbar punctures (headache, back pain). May be technically challenging in patients with scoliosis/spinal fusion.',
          boardPearl: 'Nusinersen is administered INTRATHECALLY (into CSF via lumbar puncture). It was the first FDA-approved SMA treatment (2016). It targets SMN2 splicing to increase functional SMN protein production.',
        ),
        MedicationCardBlock(
          name: 'Onasemnogene abeparvovec (Zolgensma)',
          drugClass: 'Gene Replacement Therapy (AAV9 vector)',
          mechanism: 'Delivers a functional copy of the SMN1 gene via adeno-associated virus serotype 9 (AAV9) vector. The vector crosses the blood-brain barrier and delivers the gene to motor neurons, providing a functional source of SMN protein.',
          indication: 'SMA in children under 2 years of age. One-time treatment.',
          dosing: 'Single INTRAVENOUS infusion — ONE-TIME dose. No repeat dosing needed. Most expensive drug in the world at launch.',
          sideEffects: 'Hepatotoxicity (elevated transaminases — monitor LFTs). Thrombotic microangiopathy. Immune response to AAV vector. Requires pre-treatment with corticosteroids.',
          boardPearl: 'Zolgensma is a ONE-TIME IV gene therapy that delivers a functional SMN1 gene copy. Approved for children under 2 years. It was the most expensive drug at launch. Monitor LFTs for hepatotoxicity.',
        ),
        MedicationCardBlock(
          name: 'Risdiplam (Evrysdi)',
          drugClass: 'SMN2 Splicing Modifier (Small Molecule)',
          mechanism: 'Oral small molecule that modifies SMN2 pre-mRNA splicing, similar to nusinersen but acts systemically. Increases functional SMN protein production in both CNS and peripheral tissues.',
          indication: 'SMA in patients 2 months of age and older. All SMA types.',
          dosing: 'ORAL liquid — taken daily at home. No injections or hospital procedures required. Lifelong treatment.',
          sideEffects: 'Fever, diarrhea, rash. Potential teratogenicity (pregnancy avoidance required).',
          boardPearl: 'Risdiplam is the only ORAL SMA therapy. Key advantage: No intrathecal injections (unlike nusinersen) and no IV infusion (unlike Zolgensma). Can be administered at home. Approved for ages 2 months and older.',
        ),
        TableBlock(
          title: 'SMA Therapies Comparison',
          columns: ['Feature', 'Nusinersen', 'Zolgensma', 'Risdiplam'],
          rows: [
            ['Route', 'Intrathecal\n(lumbar puncture)', 'IV infusion\n(one-time)', 'Oral\n(daily liquid)'],
            ['Mechanism', 'SMN2 splicing\nmodifier (ASO)', 'SMN1 gene\nreplacement\n(AAV9)', 'SMN2 splicing\nmodifier\n(small molecule)'],
            ['Frequency', 'Every 4 months\n(after loading)', 'ONE-TIME', 'Daily'],
            ['Age', 'All ages', 'Under 2 years', '2 months +'],
            ['Key\nMonitoring', 'Platelets,\ncoagulation,\nrenal', 'LFTs\n(hepatotoxicity)', 'CBC,\npregnancy test'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),

        HeaderBlock('DMD Emerging Therapies'),
        MedicationCardBlock(
          name: 'Eteplirsen (Exondys 51)',
          drugClass: 'Antisense Oligonucleotide (Exon-Skipping)',
          mechanism: 'Exon-skipping therapy that causes exon 51 to be skipped during dystrophin pre-mRNA splicing. This allows production of a shorter but partially functional dystrophin protein (similar to Becker-type dystrophin).',
          indication: 'DMD patients with confirmed nonsense mutations amenable to exon 51 skipping — approximately 13% of all DMD patients.',
          dosing: 'IV infusion weekly. Lifelong treatment.',
          sideEffects: 'Balance/gait disturbance, vomiting. Generally well-tolerated.',
          boardPearl: 'Eteplirsen (Exondys 51) is an exon-skipping therapy applicable to only ~13% of DMD patients (those with nonsense mutations amenable to exon 51 skipping). It produces a truncated but partially functional dystrophin.',
        ),
        BulletCardBlock(
          title: 'Additional Exon-Skipping Therapies for DMD',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Golodirsen (Vyondys 53): Exon 53 skipping — ~8% of DMD patients',
            'Viltolarsen (Viltepso): Exon 53 skipping — alternative to golodirsen',
            'Casimersen (Amondys 45): Exon 45 skipping — ~8% of DMD patients',
            'Each targets a specific subset of DMD mutations',
            'All produce truncated but partially functional dystrophin',
            'Accelerated FDA approval based on dystrophin production (surrogate endpoint)',
          ],
        ),

        HeaderBlock('Cardiac Medications in DMD'),
        BulletCardBlock(
          title: 'Cardiac Management in DMD',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Cardiomyopathy is a leading cause of death in DMD',
            'ACE inhibitors (enalapril, lisinopril) or ARBs recommended',
            'Start BEFORE cardiomyopathy develops (prophylactic use)',
            'Typically initiate by age 10 or at first sign of cardiac dysfunction',
            'Beta-blockers may be added for heart failure management',
            'Annual cardiac monitoring: Echocardiogram and ECG recommended',
            'Cardiac MRI more sensitive than echo for detecting early fibrosis',
            'Cardiomyopathy develops in virtually all DMD patients by late teens',
          ],
        ),
        PearlBlock(
          'Board Pearl — Cardiac in DMD',
          'ACE inhibitors or ARBs should be started prophylactically in DMD — BEFORE clinical cardiomyopathy develops. Cardiomyopathy is a leading cause of death. Annual echocardiography is standard monitoring. Early treatment with ACE inhibitors has been shown to delay onset and progression of cardiomyopathy.',
        ),

        HeaderBlock('Summary of Key Pharmacology Pearls'),
        BulletCardBlock(
          title: 'High-Yield Board Review',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Baclofen: GABA-B, spinal cord, drug of choice MS/SCI spasticity',
            'Dantrolene: PERIPHERAL (sarcoplasmic reticulum), drug of choice cerebral spasticity, hepatotoxicity',
            'Diazepam: GABA-A, brainstem, sedation is major side effect',
            'ITB withdrawal: Pruritus → spasticity → hyperthermia → HTN/tachycardia → seizures (FATAL)',
            'Botox vs Phenol: Botox = no sensory side effects, no tolerance; Phenol = risk of permanent dysesthesias',
            'Only 3 NSAIDs FDA-approved for children: Naproxen, Ibuprofen, Tolmetin',
            'Aspirin + influenza/varicella = Reye syndrome',
            'Methotrexate + NSAIDs = AVOID (increased toxicity)',
            'FLACC: Nonverbal ages 0-7; Wong-Baker FACES: Verbal ages 3+',
            'DMD steroids: Start at motor plateau (age 4-6), deflazacort may have less weight gain',
            'DMD cardiac: ACE inhibitors/ARBs BEFORE cardiomyopathy develops',
            'Avoid therapeutic ultrasound near open growth plates',
            'Nusinersen = intrathecal, Zolgensma = IV one-time, Risdiplam = oral daily',
            'Eteplirsen: Exon-skipping for ~13% of DMD (nonsense mutations)',
          ],
        ),
      ],
    ),
  ],
);
