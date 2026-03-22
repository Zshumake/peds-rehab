import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final pediatricCancersContent = TopicData(
  id: 'pediatric-cancers',
  title: 'Pediatric Cancers',
  tabs: [
    // ============ TAB 1: Epidemiology & Leukemias ============
    TopicTab(
      title: 'Epidemiology & Leukemias',
      blocks: [
        HeaderBlock('Pediatric Cancer Epidemiology'),
        TextBlock(
          'Approximately 16,000 new pediatric cancer cases are diagnosed annually in the United States (ages 0-19). The overall 5-year survival rate has improved from less than 60% in the 1970s to approximately 85% today, making survivorship and late effects increasingly important. An estimated 500,000+ childhood cancer survivors live in the United States, and approximately two-thirds will develop at least one chronic health condition.',
          isIntro: true,
        ),

        TableBlock(
          title: 'Pediatric Cancer Epidemiology Overview',
          columns: ['Cancer Type', 'Key Facts'],
          rows: [
            ['Leukemia', 'Most common pediatric\nmalignancy (~30% of\nchildhood cancers)'],
            ['ALL', '~80% of pediatric\nleukemias; ~25% of\nall childhood cancers;\npeak age 2-5yr;\n5yr survival ~90%'],
            ['AML', '~20% of pediatric\nleukemias;\n5yr survival ~65-70%'],
            ['CNS Tumors', 'Most common solid tumor\n(~25% of pediatric\ncancers)'],
            ['Neuroblastoma', 'Most common extracranial\nsolid tumor'],
            ['Osteosarcoma', 'Most common primary\nbone tumor'],
            ['Ewing Sarcoma', 'Second most common\nbone tumor'],
            ['Wilms Tumor', 'Most common renal\ntumor; peak age 3-4yr;\n5yr survival ~90%'],
            ['Rhabdomyosarcoma', 'Most common soft\ntissue sarcoma\nin children'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl -- Pediatric Cancer Rankings',
          'Leukemia is the most common overall pediatric malignancy (30%). CNS tumors are the most common solid tumor (25%). Neuroblastoma is the most common extracranial solid tumor. Osteosarcoma is the most common primary bone tumor. Rhabdomyosarcoma is the most common soft tissue sarcoma.',
        ),

        HeaderBlock('Acute Lymphoblastic Leukemia (ALL)'),
        BulletCardBlock(
          title: 'ALL -- Key Features',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Most common childhood cancer (~80% of pediatric leukemias)',
            'Most curable childhood cancer with 5-year survival approaching 90%',
            'Peak incidence ages 2-5 years',
            'Treatment spans 2-3 years: induction, consolidation, and maintenance phases with intrathecal chemotherapy for CNS prophylaxis',
            'Cell type: B-cell precursor (85%), T-cell (15%)',
            'Children with Down syndrome have 10-20x increased risk of leukemia',
          ],
        ),

        TableBlock(
          title: 'ALL Prognostic Factors',
          columns: ['Factor', 'Favorable', 'Unfavorable'],
          rows: [
            ['Age', '1-9 years', '<1 or >10 years'],
            ['WBC', '<50,000', '>50,000'],
            ['Cell type', 'B-cell (85%)', 'T-cell (15%)'],
            ['Cytogenetics', 'Hyperdiploidy\n(>50 chromosomes);\nt(12;21)/TEL-AML1', 'MLL rearrangements;\nt(9;22)/Philadelphia\nchromosome;\nhypodiploidy'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),

        HeaderBlock('Rehabilitation-Relevant ALL Treatment Effects'),
        TableBlock(
          title: 'Treatment Effects in ALL',
          columns: ['Effect', 'Mechanism'],
          rows: [
            ['Steroid\nmyopathy', 'Dexamethasone/prednisone\ncause proximal weakness\nand functional decline'],
            ['AVN\n(Osteonecrosis)', 'Corticosteroid-related;\naffects hips and knees;\na late effect'],
            ['Vincristine\nneuropathy', 'Peripheral sensorimotor\nneuropathy; foot drop;\ndose-limiting toxicity'],
            ['Methotrexate\nneurotoxicity', 'Leukoencephalopathy\n(especially intrathecal\nor high-dose IV);\nexecutive function\ndeficits'],
            ['Obesity', 'Common late effect\nof ALL treatment'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl -- Vincristine Neuropathy',
          'Vincristine-induced peripheral neuropathy is the most important rehabilitation-relevant side effect during ALL treatment. It presents as distal sensorimotor neuropathy with weakness (foot drop is characteristic), numbness, and pain. It is dose-limiting -- the chemotherapy dose must be reduced or held if neuropathy becomes severe.',
        ),

        HeaderBlock('Acute Myeloid Leukemia (AML)'),
        BulletCardBlock(
          title: 'AML -- Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Less common than ALL (~20% of childhood leukemias)',
            '5-year survival approximately 65-70%',
            'More aggressive course than ALL',
            'Auer rods -- needle-shaped crystalline inclusions in blast cell cytoplasm -- are pathognomonic for AML',
            'APL (acute promyelocytic leukemia / M3): Treated with ATRA (all-trans retinoic acid) + arsenic trioxide; unique risk of DIC',
            'Down syndrome children have 10-20x increased risk of AML (particularly acute megakaryoblastic leukemia/AMKL) and generally respond well to treatment',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Auer Rods',
          'Auer rods are pathognomonic for AML. They are needle-shaped crystalline inclusions visible in blast cell cytoplasm. Especially prominent in APL (M3 subtype), which carries unique treatment (ATRA + arsenic trioxide) and risk of DIC.',
        ),

        TableBlock(
          title: 'ALL vs AML Comparison',
          columns: ['Feature', 'ALL', 'AML'],
          rows: [
            ['Frequency', '~80% of childhood\nleukemias', '~20% of childhood\nleukemias'],
            ['Peak age', '2-5 years', 'Any age'],
            ['Cell type', 'Lymphoblasts\n(B-cell 85%,\nT-cell 15%)', 'Myeloblasts\n(Auer rods\npathognomonic)'],
            ['5yr Survival', '~90%', '~65-70%'],
            ['Down Syndrome', '10-20x increased\nrisk of leukemia', '10-20x increased risk;\nespecially AMKL'],
            ['Key Drug\nToxicity', 'Vincristine\nneuropathy;\nsteroid myopathy', 'ATRA for APL;\nDIC risk in APL'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
      ],
    ),

    // ============ TAB 2: Solid & Brain Tumors ============
    TopicTab(
      title: 'Solid & Brain Tumors',
      blocks: [
        HeaderBlock('Brain Tumors'),
        TextBlock(
          'Brain tumors are the most common solid tumor in children (~25% of pediatric cancers) and the 2nd most common childhood cancer after leukemia. Approximately 50% of pediatric brain tumors arise in the posterior fossa.',
        ),
        BulletCardBlock(
          title: 'Medulloblastoma',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Most common malignant CNS tumor in children',
            'Arises in the midline cerebellar vermis (posterior fossa)',
            'Peak incidence ages 5-7 years',
            'Males > females',
            'Presents with signs of increased ICP: headache (worse in morning), nausea, vomiting, mental status changes, papilledema',
            'Cerebellar dysfunction: ataxia, poor balance, dysmetria',
            'In infants: bulging fontanelle, increasing head circumference',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Medulloblastoma',
          'Medulloblastoma = most common malignant CNS tumor in children. Location: midline cerebellar vermis (posterior fossa). Presents with increased ICP + cerebellar signs (ataxia, dysmetria).',
        ),

        BulletCardBlock(
          title: 'Posterior Fossa Syndrome',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Occurs after cerebellar tumor resection',
            'Characterized by cerebellar mutism (complete loss of speech)',
            'Also includes severe ataxia and emotional lability',
            'Typically develops 1-2 days after surgery',
            'Speech usually recovers over weeks to months, but persistent dysarthria and ataxia are common',
          ],
        ),

        HeaderBlock('Neuroblastoma'),
        BulletCardBlock(
          title: 'Neuroblastoma',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Most common extracranial solid tumor in children',
            'Arises from sympathetic ganglia and adrenal medulla',
            'Highest incidence in children <5 years (peak at 2 years)',
            'Abdominal presentation most common',
            'Distant metastasis common at diagnosis',
            'Generally poor prognosis in older children',
          ],
        ),

        HeaderBlock('Wilms Tumor (Nephroblastoma)'),
        BulletCardBlock(
          title: 'Wilms Tumor',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Most common renal tumor in children',
            'Peak age 3-4 years; 5-year survival ~90%',
            'Bilateral in up to 5% of cases',
            'May be associated with congenital anomalies (aniridia, hemihypertrophy, genitourinary malformations)',
          ],
        ),

        HeaderBlock('Rhabdomyosarcoma'),
        BulletCardBlock(
          title: 'Rhabdomyosarcoma',
          themeColor: const Color(0xFFEC4899),
          backgroundColor: const Color(0xFFFDF2F8),
          points: [
            'Most common malignant soft tissue tumor in children',
            'Associated with neurofibromatosis',
            'Most commonly occurs in the head and neck region',
          ],
        ),

        HeaderBlock('Lymphomas'),
        BulletCardBlock(
          title: 'Hodgkin\'s Disease',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Males > females (2:1)',
            'Peak incidence in the 3rd decade, but reported as young as 3 years',
            'Painless cervical adenopathy is the most common presentation',
          ],
        ),
        BulletCardBlock(
          title: 'Non-Hodgkin\'s Lymphoma (NHL)',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'More common than Hodgkin\'s disease in children (opposite of adults)',
            'Burkitt\'s lymphoma (African lymphoma): Associated with Epstein-Barr virus (EBV)',
            'Burkitt\'s has predilection for facial bones and mandible',
            'Primary abdominal nodes and viscera involvement',
          ],
        ),
        PearlBlock(
          'Board Pearl -- NHL vs Hodgkin\'s in Children',
          'Non-Hodgkin\'s lymphoma is more common than Hodgkin\'s in children (opposite of adults). Burkitt\'s lymphoma is associated with EBV and has predilection for facial bones/mandible.',
        ),

        HeaderBlock('Germ Cell Tumors'),
        BulletCardBlock(
          title: 'Germ Cell Tumors',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Derived from primordial germ cells',
            'Can be benign or malignant; gonadal or extragonadal',
            'Extragonadal midline sites in 2/3 of cases',
            'Common extragonadal sites: sacrococcygeal, mediastinum, retroperitoneum, CNS',
          ],
        ),
      ],
    ),

    // ============ TAB 3: Bone Tumors ============
    TopicTab(
      title: 'Bone Tumors',
      blocks: [
        HeaderBlock('Pediatric Bone Tumors'),
        TextBlock(
          'In children, primary bone tumors are more common than metastatic bone tumors -- the opposite of adults. The distinction between osteosarcoma and Ewing sarcoma is one of the most frequently tested bone tumor concepts on board examinations.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl -- Primary vs Metastatic',
          'In children: primary bone tumors > metastatic (opposite of adults). Osteosarcoma is the most common malignant bone tumor, followed by Ewing sarcoma.',
        ),

        HeaderBlock('Osteosarcoma vs Ewing Sarcoma'),
        TableBlock(
          title: 'Osteosarcoma vs Ewing Sarcoma Comparison',
          columns: ['Feature', 'Osteosarcoma', 'Ewing Sarcoma'],
          rows: [
            ['Bone location', 'Metaphysis', 'Diaphysis'],
            ['Bone preference', 'Long bones\naround the knee\n(distal femur #1,\nproximal tibia #2,\nproximal humerus #3)', 'Long bones +\nflat bones\n(pelvis, ribs,\nscapula)'],
            ['Peak age', '10-25 years\n(adolescent\ngrowth spurt)', '5-25 years\n(peak 10-15)'],
            ['Imaging', '"Sunburst" pattern;\nCodman triangle', '"Onion skin"\nperiosteal reaction;\npermeative'],
            ['Histology', 'Malignant osteoid\nproduction', 'Small round\nblue cell tumor'],
            ['Molecular', 'RB1 and TP53\nmutations', 't(11;22)\nEWSR1-FLI1\nfusion (~85%)'],
            ['Metastasis\nat diagnosis', '15-20%;\nlung is #1 site', '20-25%;\nlung and bone'],
            ['Radiosensitive?', 'NO -- radiation\nhas limited role', 'YES -- radiation\nused for local\ncontrol'],
            ['Treatment', 'Neoadjuvant chemo,\nwide surgical\nresection,\nadjuvant chemo', 'Chemo + surgery\nand/or radiation'],
            ['5yr survival\n(localized)', '~70%', '~70%'],
            ['5yr survival\n(metastatic)', '~20-30%', '~20-30%'],
            ['Race', 'All races', 'Rare in African\nAmericans'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl -- Metaphysis vs Diaphysis',
          'Osteosarcoma = METAPHYSIS (around the knee). Ewing sarcoma = DIAPHYSIS (long bones and flat bones, including pelvis). This is the single most important distinguishing feature for boards. Remember: Ewing sarcoma is radiosensitive; osteosarcoma is NOT.',
        ),

        HeaderBlock('Bone Tumor Location Map'),
        TableBlock(
          title: 'Bone Tumors by Location Within Bone',
          columns: ['Location', 'Tumors', 'Typical Sites'],
          rows: [
            ['Metaphysis', 'Osteosarcoma\nOsteochondroma\nUnicameral bone cyst\nAneurysmal bone cyst\nChondromyxoid fibroma', 'Distal femur >\nproximal tibia >\nproximal humerus'],
            ['Diaphysis', 'Ewing sarcoma\nEosinophilic granuloma\n(LCH)', 'Femur > pelvis >\nribs > tibia;\nSkull > femur >\nspine (LCH)'],
            ['Epiphysis', 'Chondroblastoma\nGiant cell tumor', 'Proximal humerus >\ndistal femur;\nboth are benign\nbut locally aggressive'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl -- Epiphyseal Tumors',
          'Giant cell tumor and chondroblastoma are the epiphyseal bone tumors. This is frequently tested as "what tumor occurs in the epiphysis?" Both are benign but locally aggressive.',
        ),

        BulletCardBlock(
          title: 'Benign Bone Tumors in Children',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Osteochondroma -- most common benign bone tumor',
            'Unicameral (simple) bone cyst',
            'Osteoid osteoma',
            'Eosinophilic granuloma (Langerhans cell histiocytosis)',
            'Chondroblastoma (epiphyseal)',
            'Chondromyxoid fibroma',
            'Fibrous dysplasia',
          ],
        ),

        HeaderBlock('Retinoblastoma'),
        BulletCardBlock(
          title: 'Retinoblastoma',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Malignant ocular tumor of childhood; >90% present before age 5',
            'Inherited form: Autosomal dominant, bilateral, earlier onset',
            'Sporadic form: Unilateral, later onset',
            'RB1 tumor suppressor gene on chromosome 13q14',
            'Leukocoria (white pupillary reflex) is the classic presentation',
            'RB1 mutations are also a risk factor for osteosarcoma',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Retinoblastoma',
          'Retinoblastoma: Inherited = bilateral; Sporadic = unilateral. Look for leukocoria (white pupillary reflex). RB1 on 13q14. Prior radiation for retinoblastoma and hereditary RB1 mutations are risk factors for developing osteosarcoma.',
        ),

        HeaderBlock('Van Ness Rotationplasty'),
        BulletCardBlock(
          title: 'Van Ness Rotationplasty Procedure',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Limb-salvage procedure for malignant bone tumors around the knee in skeletally immature patients',
            'Distal femur and proximal tibia resected with tumor; remaining distal limb rotated 180 degrees and reattached',
            'Ankle joint functions as a biological knee joint',
            'Ankle plantarflexors (gastrocnemius-soleus) function as "knee extensors" because limb is rotated 180 degrees',
            'Result: Functional BELOW-knee amputation level (biomechanically superior to above-knee amputation)',
            'Prosthesis attaches to the rotated foot',
            'Advantages: Biological joint preserved, growth potential maintained, better prosthetic function and energy expenditure than AKA with endoprosthesis',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Van Ness Rotationplasty',
          'The Van Ness rotationplasty converts what would be an above-knee amputation into a functional below-knee amputation by using the ankle as a knee joint. The key rehabilitation concept is that ankle plantarflexors become knee extensors. Gait analysis shows functional outcomes comparable to AKA with endoprosthesis, with the advantage of a biological joint and preserved growth.',
        ),
      ],
    ),

    // ============ TAB 4: Cancer Rehabilitation ============
    TopicTab(
      title: 'Cancer Rehabilitation',
      blocks: [
        HeaderBlock('Cancer-Related Fatigue'),
        TextBlock(
          'Cancer-related fatigue is the most common symptom, reported by 50-90% of pediatric cancer patients during treatment. It is multifactorial, arising from the disease process, chemotherapy/radiation, anemia, deconditioning, sleep disruption, and psychosocial distress.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl -- Exercise for Fatigue',
          'Exercise is the MOST EFFECTIVE intervention for cancer-related fatigue. Supervised aerobic and resistance training are safe during active cancer treatment and improve fitness, reduce fatigue, and enhance quality of life. Fatigue persists into survivorship in 20-30% of survivors years after treatment completion.',
        ),

        HeaderBlock('Exercise Precautions'),
        BulletCardBlock(
          title: 'Exercise Safety Thresholds',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Platelet count <50,000: Avoid resistive exercise and high-impact activities (bleeding risk)',
            'Platelet count <20,000: Limit to gentle ROM and ADL activities',
            'ANC <500: Avoid public gyms and pools (infection risk)',
            'Hemoglobin <8 g/dL: Limit to light activity; monitor for exercise intolerance',
            'Central line precautions: Avoid activities that stress catheter site (contact sports, swimming)',
            'Bone metastases: Precautions against pathologic fracture -- avoid weight-bearing exercise',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Key Exercise Thresholds',
          'Platelets <50,000 = no resistive/high-impact exercise. Platelets <20,000 = gentle ROM only. ANC <500 = infection precautions (no public gyms/pools). Always check labs before exercise prescription in oncology patients.',
        ),

        HeaderBlock('Impairment-Driven Rehabilitation'),
        BulletCardBlock(
          title: 'Musculoskeletal Impairments',
          themeColor: const Color(0xFFEF4444),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Steroid myopathy: Proximal weakness, Cushingoid habitus',
            'Avascular necrosis: Hips and knees (especially after ALL treatment with corticosteroids)',
            'Osteoporosis and fracture risk: Corticosteroids, methotrexate, radiation, inactivity',
            'Gait abnormalities after amputation or limb-salvage surgery',
          ],
        ),
        BulletCardBlock(
          title: 'Neurologic Impairments',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Vincristine neuropathy: Distal sensorimotor; foot drop is characteristic',
            'Methotrexate leukoencephalopathy: Cognitive and executive function deficits',
            'Cranial radiation effects: Attention, processing speed, and memory deficits',
            'Posterior fossa syndrome: Cerebellar mutism, ataxia, emotional lability after tumor resection',
          ],
        ),
        BulletCardBlock(
          title: 'Cardiovascular & Pulmonary',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Anthracycline-related cardiomyopathy: Dose-dependent; may be acute or delayed years later',
            'Deconditioning from prolonged treatment and inactivity',
            'Bleomycin-related pulmonary fibrosis',
            'Radiation-related pneumonitis',
          ],
        ),

        HeaderBlock('Functional Mobility & School Re-entry'),
        BulletCardBlock(
          title: 'Reintegration',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Assess for chemotherapy-induced peripheral neuropathy (CIPN) affecting gait and balance',
            'Address deconditioning from prolonged hospitalization',
            'Adaptive equipment assessment for school and community access',
            'Coordinate with school for accommodations (504 Plan or IEP)',
            'Graduated return to physical activities and sports',
          ],
        ),

        HeaderBlock('Phantom Limb Pain in Children'),
        BulletCardBlock(
          title: 'Phantom Phenomena After Amputation',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Phantom limb sensation and pain occur in children after amputation for bone tumors',
            'More frequent after amputation than after limb-salvage surgery',
            'Current evidence suggests phantom phenomena are common even in young children',
            'Management: Mirror therapy, desensitization, TENS, medications (gabapentin, amitriptyline), psychological support',
            'Early prosthetic fitting and active prosthetic use are associated with reduced phantom pain intensity',
          ],
        ),

        HeaderBlock('Psychosocial Support'),
        BulletCardBlock(
          title: 'Psychosocial Considerations',
          themeColor: const Color(0xFFEC4899),
          backgroundColor: const Color(0xFFFDF2F8),
          points: [
            'Disruptions to schooling, peer relationships, self-image, and normal developmental tasks',
            'Sibling distress from altered family dynamics and parental attention distribution',
            'Body image concerns (hair loss, weight changes, surgical scars, amputation)',
            'Fear of cancer recurrence in survivors',
            'Screen for anxiety, depression, adjustment disorders, and PTSD symptoms',
            'Family-centered care approach is essential',
          ],
        ),
      ],
    ),

    // ============ TAB 5: Late Effects & Survivorship ============
    TopicTab(
      title: 'Late Effects & Survivorship',
      blocks: [
        HeaderBlock('COG Survivorship Guidelines'),
        TextBlock(
          'The Children\'s Oncology Group (COG) Long-Term Follow-Up Guidelines provide risk-based screening recommendations for late effects. With 85% survival, an estimated 500,000+ childhood cancer survivors live in the US. Approximately two-thirds will develop at least one chronic health condition. Survivors demonstrate physiologic frailty at rates comparable to adults 20-30 years older.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl -- Accelerated Aging',
          'Childhood cancer survivors experience accelerated aging and premature frailty. A landmark study found that adult survivors demonstrated physiologic frailty at rates comparable to adults 20-30 years older. Two-thirds will develop at least one chronic health condition.',
        ),

        HeaderBlock('Late Effects by Treatment'),
        TableBlock(
          title: 'Major Late Effects by Treatment Exposure',
          columns: ['Treatment', 'Late Effect', 'Screening'],
          rows: [
            ['Anthracyclines\n(doxorubicin,\ndaunorubicin)', 'Dose-dependent\ncardiomyopathy', 'Echocardiogram\nstarting 2yr\nafter therapy;\nfrequency based\non cumulative dose'],
            ['Cranial\nRadiation', 'Neurocognitive deficits;\nGH deficiency;\nhypothyroidism;\nsecondary CNS\ntumors', 'Neuropsych testing;\nendocrine monitoring;\nbrain MRI\nsurveillance'],
            ['Alkylating\nAgents\n(cyclophosphamide,\nifosfamide)', 'Gonadal dysfunction;\ninfertility;\nsecondary leukemia\n(MDS/AML)', 'Gonadal function\ntesting;\nCBC monitoring'],
            ['Bleomycin', 'Pulmonary fibrosis', 'PFTs at baseline\nand with\nrespiratory symptoms'],
            ['Cisplatin', 'Ototoxicity\n(high-frequency\nSNHL);\nnephrotoxicity', 'Audiometry;\nrenal function\nmonitoring'],
            ['Vincristine', 'Peripheral\nneuropathy\n(motor and sensory)', 'Clinical neurologic\nexamination'],
            ['Corticosteroids', 'AVN; osteoporosis;\nobesity; metabolic\nsyndrome', 'DEXA screening;\nmetabolic panels'],
            ['Radiation\n(any field)', 'Secondary\nmalignancies\n(3-6x increased\nrisk); field-specific\norgan damage', 'Risk-based cancer\nscreening per\nCOG guidelines'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl -- Late Effects by Drug',
          'Anthracyclines = cardiomyopathy. Cisplatin = ototoxicity. Vincristine = peripheral neuropathy. Corticosteroids = AVN and osteoporosis. Cranial radiation = neurocognitive deficits and GH deficiency. Alkylating agents = gonadal dysfunction and secondary malignancies.',
        ),

        HeaderBlock('Bone Health in Survivors'),
        BulletCardBlock(
          title: 'Bone Health Concerns',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Multiple treatment exposures compromise bone density: corticosteroids, methotrexate, cranial radiation (via GH deficiency), and prolonged inactivity',
            'DEXA scanning recommended for at-risk survivors',
            'Weight-bearing exercise is a cornerstone of prevention',
            'Calcium and vitamin D supplementation',
            'Endocrine optimization (GH replacement if deficient)',
            'AVN (osteonecrosis) commonly affects hips and knees after ALL treatment',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Bone Health',
          'Bone health is a critical concern in childhood cancer survivors. Multiple treatment exposures compromise bone density. DEXA scanning is recommended for at-risk survivors. Weight-bearing exercise, calcium, vitamin D, and endocrine optimization are the cornerstones of prevention.',
        ),

        HeaderBlock('Endocrine Late Effects'),
        BulletCardBlock(
          title: 'Endocrine Dysfunction in Survivors',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Growth hormone deficiency: From cranial radiation; growth deceleration months to years after treatment',
            'Hypothyroidism: From neck or craniospinal radiation',
            'Gonadal dysfunction and infertility: From alkylating agents or gonadal radiation',
            'Obesity: Especially after ALL treatment and cranial radiation',
            'Metabolic syndrome: Increased risk in long-term survivors',
          ],
        ),

        HeaderBlock('Exercise Recommendations for Survivors'),
        BulletCardBlock(
          title: 'COG Exercise Guidelines',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            '150 minutes/week of moderate-intensity OR 75 minutes/week of vigorous-intensity aerobic activity',
            'Consistent with general population guidelines but with special emphasis on cardiovascular, metabolic, and psychosocial benefits',
            'Resistance training for maintenance of bone density and lean mass',
            'Exercise is the most effective intervention for cancer-related fatigue',
            'Benefits extend to improved quality of life, body composition, and cardiovascular fitness',
            'Transition to adult survivorship care is a critical juncture -- many young adult survivors disengage from recommended surveillance',
          ],
        ),
        PearlBlock(
          'Board Pearl -- Survivorship Transition',
          'Transition to adult-oriented follow-up care is a critical juncture. Many young adult survivors disengage from recommended surveillance, putting them at risk for undetected late effects including cardiomyopathy, secondary malignancies, and endocrine dysfunction.',
        ),
      ],
    ),
  ],
);
