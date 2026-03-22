import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final pediatricCancersContent = TopicData(
  id: 'pediatric-cancers',
  title: 'Pediatric Cancers',
  tabs: [
    // ============ TAB 1: Solid Tumors ============
    TopicTab(
      title: 'Solid Tumors',
      blocks: [
        HeaderBlock('Pediatric Solid Tumors'),
        TextBlock(
          'Neoplastic disease is the 2nd leading cause of death in the pediatric population. Solid tumors account for approximately 70% of pediatric cancers, while leukemias comprise the remaining 30%.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl — Pediatric Cancer Epidemiology',
          'Neoplastic disease = 2nd leading cause of death in children. Solid tumors = 70%, leukemias = 30%. Brain tumors are the 2nd most common childhood cancer after leukemia.',
        ),

        HeaderBlock('Brain Tumors'),
        TextBlock(
          'Brain tumors are the 2nd most common childhood cancer after leukemia and the most common solid tumor. Approximately 50% of pediatric brain tumors arise in the posterior fossa.',
        ),
        BulletCardBlock(
          title: 'Medulloblastoma',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Most common malignant CNS tumor in children',
            'Arises in the midline cerebellar vermis',
            'Peak incidence ages 5-7 years',
            'Males > females',
            'Presents with signs of increased ICP: headache, nausea, vomiting, mental status changes',
            'Cerebellar dysfunction: ataxia, poor balance, dysmetria',
          ],
        ),
        PearlBlock(
          'Board Pearl — Medulloblastoma',
          'Medulloblastoma = most common malignant CNS tumor in children. Location: midline cerebellar vermis (posterior fossa). Presents with increased ICP + cerebellar signs.',
        ),
        BulletCardBlock(
          title: 'Brain Tumor Presentation by Location',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Cerebellar and 4th ventricle tumors: Increased ICP + cerebellar signs (ataxia, dysmetria, poor balance)',
            'Supratentorial tumors: Increased ICP + seizures (present in ~40%)',
            'Brainstem tumors: Cranial nerve palsies + hemiparesis + ataxia',
          ],
        ),
        BulletCardBlock(
          title: 'Signs of Increased Intracranial Pressure (ICP)',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Headache (often worse in morning)',
            'Nausea and vomiting',
            'Mental status changes',
            'Papilledema',
            'In infants: bulging fontanelle, increasing head circumference',
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
            'Etiology unknown',
          ],
        ),
        BulletCardBlock(
          title: 'Non-Hodgkin\'s Lymphoma (NHL)',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'More common than Hodgkin\'s disease in children',
            'Burkitt\'s lymphoma (African lymphoma): Associated with Epstein-Barr virus (EBV)',
            'Burkitt\'s has predilection for facial bones and mandible',
            'Primary abdominal nodes and viscera involvement',
            'Massive proliferation of primitive lymphoid cells',
          ],
        ),
        PearlBlock(
          'Board Pearl — Lymphoma in Children',
          'Non-Hodgkin\'s lymphoma is more common than Hodgkin\'s in children (opposite of adults). Burkitt\'s lymphoma is associated with EBV and has predilection for facial bones/mandible.',
        ),

        HeaderBlock('Neuroblastoma'),
        BulletCardBlock(
          title: 'Neuroblastoma',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Arises from sympathetic ganglia and adrenal medulla',
            '3rd most common pediatric neoplasm',
            'Highest incidence in children <5 years (peak at 2 years)',
            'Abdominal presentation most common',
            'Distant metastasis common at diagnosis',
            'Generally poor prognosis',
          ],
        ),

        HeaderBlock('Wilms Tumor (Nephroblastoma)'),
        BulletCardBlock(
          title: 'Wilms Tumor',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Develops in the renal parenchyma',
            'Most common ages 2-5 years',
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
        PearlBlock(
          'Board Pearl — Soft Tissue Tumors',
          'Rhabdomyosarcoma is the most common malignant soft tissue tumor in children. Most common location: head and neck. Associated with neurofibromatosis.',
        ),

        HeaderBlock('Germ Cell Tumors'),
        BulletCardBlock(
          title: 'Germ Cell Tumors',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Derived from primordial germ cells',
            'Can be benign or malignant',
            'Can be gonadal or extragonadal',
            'Extragonadal midline sites in 2/3 of cases',
            'Common extragonadal sites: sacrococcygeal, mediastinum, retroperitoneum, CNS',
          ],
        ),

        TableBlock(
          title: 'Common Pediatric Solid Tumors Summary',
          columns: ['Tumor', 'Origin / Location', 'Key Features'],
          rows: [
            ['Medulloblastoma', 'Cerebellar vermis\n(posterior fossa)', 'Most common malignant\nCNS tumor in children'],
            ['Neuroblastoma', 'Sympathetic ganglia,\nadrenal medulla', '3rd most common;\npeak age 2yr'],
            ['Wilms tumor', 'Renal parenchyma', 'Ages 2-5yr;\nbilateral in 5%'],
            ['Rhabdomyosarcoma', 'Head and neck\n(soft tissue)', 'Most common malignant\nsoft tissue tumor'],
            ['Burkitt\'s lymphoma', 'Facial bones,\nmandible', 'EBV association;\nAfrican lymphoma'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
      ],
    ),

    // ============ TAB 2: Bone Tumors ============
    TopicTab(
      title: 'Bone Tumors',
      blocks: [
        HeaderBlock('Pediatric Bone Tumors'),
        TextBlock(
          'In children, primary bone tumors are more common than metastatic bone tumors. This is the opposite of the adult population, where metastatic disease predominates.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl — Primary vs Metastatic',
          'In children: primary bone tumors > metastatic (opposite of adults). Osteosarcoma is the most common malignant bone tumor in children, followed by Ewing\'s sarcoma.',
        ),

        HeaderBlock('Benign Bone Tumors'),
        BulletCardBlock(
          title: 'Common Benign Bone Tumors in Children',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Osteochondroma — most common benign bone tumor',
            'Unicameral (simple) bone cyst',
            'Osteoid osteoma',
            'Eosinophilic granuloma (Langerhans cell histiocytosis)',
            'Chondroblastoma',
            'Chondromyxoid fibroma',
            'Fibrous dysplasia',
          ],
        ),

        HeaderBlock('Osteosarcoma'),
        BulletCardBlock(
          title: 'Osteosarcoma',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Most common malignant bone tumor in children',
            'Arises in the metaphysis of long bones',
            'Most common site: distal femur',
            'Followed by proximal tibia and proximal humerus',
            'Occurs more often in children >10 years of age',
            'Predilection for areas of rapid bone growth (around the knee)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Osteosarcoma Location',
          'Osteosarcoma arises in the METAPHYSIS, classically "around the knee" (distal femur > proximal tibia). Think: Osteo = mEtaphysis.',
        ),

        HeaderBlock('Ewing\'s Sarcoma'),
        BulletCardBlock(
          title: 'Ewing\'s Sarcoma',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            '2nd most common malignant bone tumor in children',
            'Arises in the diaphysis of long and flat bones',
            'Includes the pelvis as a common site',
            'Characteristic "onion-skin" periosteal reaction on imaging',
            'Systemic symptoms (fever, weight loss) may mimic infection',
          ],
        ),
        PearlBlock(
          'Board Pearl — Ewing\'s Location',
          'Ewing\'s sarcoma arises in the DIAPHYSIS of long bones and flat bones (especially pelvis). Think: Ewing\'s = Diaphysis. This is opposite of osteosarcoma (metaphysis).',
        ),

        HeaderBlock('Bone Tumor Location by Anatomic Region'),
        TableBlock(
          title: 'Bone Tumors by Location',
          columns: ['Region', 'Tumors'],
          rows: [
            ['Diaphysis', 'Ewing\'s sarcoma\nEosinophilic granuloma'],
            ['Metaphysis', 'Osteosarcoma\nOsteochondroma\nUnicameral bone cyst\nChondromyxoid fibroma\nAneurysmal bone cyst'],
            ['Epiphysis', 'Chondroblastoma\nGiant cell tumor'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl — Tumor Location Mnemonic',
          'Metaphysis = Osteosarcoma (around the knee). Diaphysis = Ewing\'s sarcoma (flat bones, pelvis). Epiphysis = Chondroblastoma and giant cell tumor. This is a frequently tested distinction.',
        ),

        HeaderBlock('Retinoblastoma'),
        BulletCardBlock(
          title: 'Retinoblastoma',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Malignant ocular tumor of childhood',
            '>90% present before age 5 years',
            'May be inherited (bilateral) or sporadic (unilateral)',
            'Inherited form: Autosomal dominant, bilateral, earlier onset',
            'Sporadic form: Unilateral, later onset',
            'RB1 gene on chromosome 13q14',
            'Leukocoria (white pupillary reflex) is classic presentation',
          ],
        ),
        PearlBlock(
          'Board Pearl — Retinoblastoma',
          'Retinoblastoma: Inherited = bilateral; Sporadic = unilateral. Look for leukocoria (white pupillary reflex). RB1 tumor suppressor gene on 13q14.',
        ),

        TableBlock(
          title: 'Malignant Bone Tumors Comparison',
          columns: ['Feature', 'Osteosarcoma', 'Ewing\'s Sarcoma'],
          rows: [
            ['Bone location', 'Metaphysis', 'Diaphysis'],
            ['Most common site', 'Distal femur\n(around the knee)', 'Long bones, flat\nbones, pelvis'],
            ['Age', '>10 years', '5-15 years'],
            ['Imaging', 'Sunburst pattern,\nCodman triangle', 'Onion-skin\nperiosteal reaction'],
            ['Rank', '1st most common\nmalignant bone tumor', '2nd most common\nmalignant bone tumor'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
      ],
    ),

    // ============ TAB 3: Leukemias ============
    TopicTab(
      title: 'Leukemias',
      blocks: [
        HeaderBlock('Pediatric Leukemias'),
        TextBlock(
          'Leukemias account for approximately 30% of all pediatric neoplasms and are the most common childhood cancer. 97.5% of childhood leukemias are acute rather than chronic.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl — Leukemia Facts',
          'Leukemias = 30% of all pediatric cancers. 97.5% are acute. ALL is the most common type (80% of childhood leukemias). Peak incidence ages 2-5 years.',
        ),

        HeaderBlock('Acute Lymphoblastic Leukemia (ALL)'),
        BulletCardBlock(
          title: 'ALL — Key Features',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'Most common type of childhood leukemia (~80%)',
            'Highest incidence ages 2-5 years',
            'Increased risk with chromosomal abnormalities (e.g., Down syndrome)',
            'Increased risk with immune deficiency states',
            'Presents with fatigue, pallor, bruising, bone pain, hepatosplenomegaly',
            'Diagnosis: Peripheral blood smear and bone marrow biopsy',
            'Overall survival >85% with current treatment protocols',
          ],
        ),
        PearlBlock(
          'Board Pearl — ALL and Down Syndrome',
          'Children with Down syndrome (Trisomy 21) have a 10-20x increased risk of developing leukemia, particularly ALL. Chromosomal abnormalities and immune deficiency states are risk factors for ALL.',
        ),

        HeaderBlock('Acute Myeloid Leukemia (AML)'),
        BulletCardBlock(
          title: 'AML — Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Less common than ALL in children (~20% of childhood leukemias)',
            'Can occur at any age',
            'More aggressive course than ALL',
            'Lower overall survival rate compared to ALL',
            'Auer rods on blood smear are pathognomonic',
          ],
        ),

        TableBlock(
          title: 'ALL vs AML Comparison',
          columns: ['Feature', 'ALL', 'AML'],
          rows: [
            ['Frequency', '~80% of childhood\nleukemias', '~20% of childhood\nleukemias'],
            ['Peak age', '2-5 years', 'Any age'],
            ['Cell type', 'Lymphoblasts', 'Myeloblasts'],
            ['Prognosis', 'Overall survival\n>85%', 'Lower survival\nthan ALL'],
            ['Associations', 'Down syndrome,\nimmune deficiency', 'Auer rods\npathognomonic'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),

        HeaderBlock('Rehabilitation in Pediatric Cancer'),
        TextBlock(
          'Rehabilitation plays a critical role throughout the continuum of pediatric cancer care, from diagnosis through treatment and long-term survivorship.',
        ),
        BulletCardBlock(
          title: 'Fatigue Management',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Cancer-related fatigue is the most common symptom reported by pediatric cancer patients',
            'Energy conservation techniques and activity pacing',
            'Graded exercise programs improve fatigue and functional capacity',
            'Monitor hemoglobin and platelet counts before exercise prescription',
            'Avoid high-intensity exercise during periods of severe cytopenias',
          ],
        ),
        BulletCardBlock(
          title: 'Exercise Prescription Considerations',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Platelet count <50,000: Avoid resistive exercise and high-impact activities',
            'Platelet count <20,000: Limit to gentle ROM and ADL activities',
            'ANC (absolute neutrophil count) <500: Avoid public gyms and pools due to infection risk',
            'Hemoglobin <8 g/dL: Limit to light activity, monitor for exercise intolerance',
            'Indwelling catheters: Avoid swimming and contact sports',
            'Bone metastases: Precautions against pathologic fracture',
          ],
        ),
        PearlBlock(
          'Board Pearl — Exercise Precautions',
          'Key thresholds: Platelets <50,000 = no resistive/high-impact exercise. Platelets <20,000 = gentle ROM only. ANC <500 = infection precautions. Always check labs before exercise prescription in oncology patients.',
        ),
        BulletCardBlock(
          title: 'Functional Mobility & School Re-entry',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Assess for chemotherapy-induced peripheral neuropathy (CIPN) affecting gait and balance',
            'Address deconditioning from prolonged hospitalization and bed rest',
            'Adaptive equipment assessment for school and community access',
            'Coordinate with school for accommodations (504 Plan or IEP)',
            'Graduated return to physical activities and sports',
          ],
        ),
        BulletCardBlock(
          title: 'Psychosocial Support',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Address anxiety, depression, and adjustment disorders',
            'Support body image concerns (hair loss, weight changes, surgical scars)',
            'Peer support and reintegration into social activities',
            'Family-centered care approach including sibling support',
            'Screen for post-traumatic stress symptoms in survivors',
          ],
        ),
        BulletCardBlock(
          title: 'Long-Term Survivorship Issues',
          themeColor: const Color(0xFFEC4899),
          backgroundColor: const Color(0xFFFDF2F8),
          points: [
            'Late effects of chemotherapy: Cardiotoxicity (anthracyclines), ototoxicity (cisplatin), peripheral neuropathy (vincristine)',
            'Late effects of radiation: Growth disturbances, secondary malignancies, endocrine dysfunction',
            'Cognitive late effects ("chemo brain"): Attention, processing speed, executive function deficits',
            'Musculoskeletal: Osteoporosis, avascular necrosis (steroids), limb length discrepancy',
            'Ongoing surveillance and transition to adult survivorship care',
          ],
        ),
        PearlBlock(
          'Board Pearl — Late Effects',
          'Common late effects by treatment: Anthracyclines = cardiotoxicity. Cisplatin = ototoxicity. Vincristine = peripheral neuropathy. Corticosteroids = avascular necrosis and osteoporosis. Cranial radiation = neurocognitive deficits and growth hormone deficiency.',
        ),
      ],
    ),
  ],
);
