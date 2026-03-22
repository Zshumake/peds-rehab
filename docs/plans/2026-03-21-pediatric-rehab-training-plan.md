# Pediatric Rehab Training - Flutter App Implementation Plan

## Enhancement Summary

**Deepened on:** 2026-03-21
**Research agents used:** Flutter Expert, Board Content Researcher, UI/UX Designer, Code Pattern Analyzer, PDF Content Researcher
**Sections enhanced:** All

### Key Improvements
1. **Content gaps filled:** Added brachial plexus palsy and pediatric SCI/SCIWORA coverage; expanded ASD content
2. **Architecture upgrade:** Dart 3 sealed classes for compile-time exhaustive block rendering; extracted block widgets into separate files
3. **Widget prioritization:** Tiered 24 custom widgets by board relevance with Learn/Quiz dual-mode design
4. **Board content deepened:** Added comprehensive mnemonics, clinical scales (12 assessment tools), pediatric-vs-adult comparison tables, and high-yield board pearls throughout all 14 modules
5. **Persistence layer:** Added shared_preferences for quiz scores and progress tracking across sessions

### New Considerations Discovered
- Brachial plexus palsy (Erb's/Klumpke's) is heavily tested but was missing entirely - added to Module 11
- Pediatric SCI/SCIWORA is a classic board topic - added to Module 8 (renamed to "Pediatric Neurotrauma")
- SMA gene therapy revolution (Spinraza/Zolgensma/Evrysdi) must be included as board-testable content
- GMFCS expanded & revised includes age bands (0-2, 2-4, 4-6, 6-12, 12-18) - critical for widget design
- Early CP diagnosis guidelines (Novak et al.) - can diagnose before 5 months corrected age using GMA + MRI + HINE

---

## Overview

Build a **Pediatric Rehabilitation Training** Flutter application following the identical architecture, patterns, and UX established in the existing TBI, SCI, and CVA Training modules. This is the 4th module in the PM&R board review training suite.

**Source Material:**
- Cuccurullo Pediatric Rehabilitation Chapter (Parts 1-5)
- DeLisa's Physical Medicine and Rehabilitation, 6th Edition - Peds Rehab chapter
- Content covers 11 subsections expanded to 14 modules

**Target Audience:** PM&R residents, physicians, and rehabilitation professionals preparing for ABPMR board exams.

**Board Exam Context:** Pediatric rehabilitation represents ~8-12% of the ABPMR Part I exam. Highest-yield topics in order: (1) CP/GMFCS, (2) Developmental milestones, (3) Spina bifida functional levels, (4) Neuromuscular diseases, (5) Pediatric TBI, (6) JIA subtypes, (7) DDH/orthopedic exams, (8) Genetic syndromes, (9) Brachial plexus, (10) Outcome measures.

---

## Architecture

Replicate the proven Flutter architecture from TBI/SCI/CVA modules with targeted improvements:

```
pediatric_rehab_training/
├── lib/
│   ├── main.dart
│   ├── core/
│   │   ├── theme/app_theme.dart
│   │   ├── models/
│   │   │   ├── quiz_model.dart
│   │   │   ├── flashcard_model.dart
│   │   │   ├── topic_content_model.dart       # USE SEALED CLASSES
│   │   │   └── module_model.dart
│   │   └── widgets/
│   │       ├── quiz_session_view.dart
│   │       ├── flashcard_view.dart
│   │       ├── content_card.dart
│   │       ├── responsive_content_wrapper.dart  # NEW: max-width 800 for desktop
│   │       └── blocks/                          # NEW: extracted block renderers
│   │           ├── header_block_widget.dart
│   │           ├── text_block_widget.dart
│   │           ├── pearl_block_widget.dart
│   │           ├── bullet_card_block_widget.dart
│   │           ├── table_block_widget.dart
│   │           ├── mnemonic_block_widget.dart
│   │           ├── scale_block_widget.dart
│   │           ├── medication_card_block_widget.dart
│   │           ├── comparison_card_block_widget.dart
│   │           ├── numbered_list_block_widget.dart
│   │           └── custom_widget_block_widget.dart
│   ├── features/
│   │   ├── learning/
│   │   │   ├── home_screen.dart
│   │   │   ├── module_content_screen.dart
│   │   │   ├── topic_content_view.dart
│   │   │   └── widgets/flashcard_view.dart
│   │   └── custom_widgets/                      # NEW: interactive tool widgets
│   │       ├── gmfcs_level_guide.dart
│   │       ├── pediatric_gcs_calculator.dart
│   │       ├── burn_size_calculator.dart
│   │       ├── developmental_milestones_timeline.dart
│   │       ├── primitive_reflex_tracker.dart
│   │       ├── sle_criteria_checker.dart
│   │       ├── cp_classification_tool.dart
│   │       ├── functional_level_chart.dart
│   │       ├── jia_subtype_comparison.dart
│   │       ├── jia_management_pyramid.dart
│   │       ├── spasticity_management_ladder.dart
│   │       ├── scoliosis_assessment.dart
│   │       ├── orthotic_selection_guide.dart
│   │       ├── hip_exam_maneuvers.dart
│   │       ├── chromosomal_syndromes_comparison.dart
│   │       ├── limb_deficiency_classification.dart
│   │       ├── nontraumatic_hip_differential.dart
│   │       ├── burn_positioning_guide.dart
│   │       ├── bone_tumor_location_map.dart
│   │       ├── muscular_dystrophy_comparison.dart
│   │       ├── sma_types_comparison.dart
│   │       ├── pediatric_medication_reference.dart
│   │       └── outcome_measures_comparison.dart
│   ├── services/                                 # NEW: persistence
│   │   └── progress_service.dart
│   └── data/
│       ├── module_data.dart
│       ├── models/
│       │   ├── module_model.dart
│       │   ├── topic_content_model.dart
│       │   └── flashcard_model.dart
│       ├── module_contents/                      (14 content files)
│       └── quiz_banks/                           (quiz + flashcard files)
├── pubspec.yaml
├── assets/
│   ├── images/
│   ├── icons/
│   └── audio/
├── android/
├── ios/
├── macos/
└── linux/
```

### Architecture Improvements Over Existing Modules

**1. Sealed Classes for Content Blocks (Dart 3)**

Replace abstract class + if/else chain with sealed class + exhaustive switch:

```dart
sealed class ContentBlock {
  const ContentBlock();
}

class HeaderBlock extends ContentBlock {
  final String title;
  const HeaderBlock(this.title);
}
// ... all block types with const constructors

// In topic_content_view.dart:
Widget _buildBlock(ContentBlock block) {
  return switch (block) {
    HeaderBlock b => HeaderBlockWidget(block: b),
    TextBlock b => TextBlockWidget(block: b),
    PearlBlock b => PearlBlockWidget(block: b),
    // ... compile error if any type is missing
  };
}
```

**2. Extracted Block Renderers** - Each block type gets its own `StatelessWidget` file in `core/widgets/blocks/` for maintainability.

**3. Const Constructors Everywhere** - All content data is static and defined at compile time. Every block instance in data files should be `const` for optimal widget identity optimization.

**4. AutomaticKeepAliveClientMixin** on tab content views to preserve scroll position on tab switches (pattern from EMG Mastery app).

**5. RepaintBoundary** on expensive TableBlock and ScaleBlock widgets.

**6. ResponsiveContentWrapper** with `maxWidth: 800` for desktop readability.

**7. Progress Persistence** with `shared_preferences`:

```dart
class ProgressService {
  static Future<void> saveQuizScore(String moduleId, int score, int total) async { ... }
  static Future<Map<String, int>> getQuizScores() async { ... }
  static Future<void> markFlashcard(String moduleId, String cardId, bool knewIt) async { ... }
  static Future<void> setModuleComplete(String moduleId) async { ... }
}
```

---

## 14 Modules (Content Organization)

### Module 1: Genetics & Chromosomal Abnormalities
- **ID:** `genetics-chromosomal`
- **Topics:** Trisomy 21/18/13, Turner syndrome (45,X), Klinefelter (47,XXY), Fragile X, TORCHES infections, teratogens, genetic counseling indications
- **Key Tables:** Selected Chromosomal Syndromes (Table 10-1)
- **Tabs:** Chromosomal Abnormalities | Teratogens & TORCHES | Genetic Counseling
- **Board Pearls:**
  - Trisomy 21: Atlantoaxial instability in 10-30% (flexion/extension C-spine before Special Olympics), endocardial cushion defect most common cardiac defect, Brushfield spots, single palmar crease
  - Trisomy 18: Overlapping fingers (2nd over 3rd, 5th over 4th), rocker-bottom feet
  - Turner: Coarctation of aorta, webbed neck, normal to near-normal IQ
  - TORCHES mnemonic: Toxoplasmosis, Other, Rubella, CMV, Herpes, Syphilis
- **Mnemonics:** TORCHES, DANISH (Down syndrome: Duodenal atresia, Atlantoaxial instability, Nuchal translucency, Intellectual disability, Single palmar crease, Heart defects)
- **Custom Widget:** Chromosomal Syndromes Comparison Tool

### Module 2: Development & Growth
- **ID:** `development-growth`
- **Topics:** Height/weight milestones, head/skull development, fontanelle closure, ossification centers, bone development, primitive reflexes, postural reflexes, developmental milestones (gross motor, fine motor, language, cognitive, social/emotional), autism spectrum disorder (expanded), developmental red flags, Denver II screening, ASQ
- **Key Tables:** Postural Reflex Responses (Table 10-2), Milestones in Child Development (Table 10-3)
- **Tabs:** Growth Parameters | Primitive & Postural Reflexes | Milestones by Age | ASD & Developmental Red Flags
- **Board Pearls:**
  - Fontanelle: Anterior closes 10-14 months (up to 18); posterior closes by 4 months
  - Milestone red flags: No social smile by 3 mo, not sitting by 9 mo, not walking by 18 mo, no words by 18 mo, no 2-word phrases by 24 mo
  - Primitive reflexes integrate by 4-6 months (except plantar grasp: 9-12 mo)
  - Obligatory/persistent primitive reflexes = sign of CNS pathology
  - Key motor milestones: Head control 4mo, sits 6mo, crawls 9mo, walks 12mo, runs 18mo
  - Ossification centers at birth: 5 (distal femur, proximal tibia, calcaneus, talus, cuboid)
  - Clavicle is first bone to calcify in utero (5th fetal week)
- **Mnemonics:** "6-12-3" for prosthetic fitting timeline parallels milestone ages
- **Custom Widgets:** Developmental Milestones Interactive Timeline, Primitive Reflex Tracker
- **Widget Design:** Timeline with draggable age cursor; reflexes as horizontal bars showing emergence-to-integration spans

### Module 3: Pediatric Limb Deficiencies
- **ID:** `limb-deficiencies`
- **Topics:** Congenital UE/LE deficiency, ISPO/Classic/Frantz classification, transradial/transhumeral deficiency, prosthetic fitting timetables, acquired amputations, phantom pain, PFFD (proximal femoral focal deficiency), Van Ness rotationplasty, terminal overgrowth, VACTERL association
- **Key Tables:** Classification Systems (Table 10-4), Associated Syndromes with Limb Deficiencies (Table 10-5)
- **Tabs:** Classification Systems | Upper Extremity | Lower Extremity | Prosthetic Fitting | Acquired Amputations
- **Board Pearls:**
  - Most common congenital UE deficiency: Left transradial
  - Most common congenital LE deficiency: Fibular hemimelia (longitudinal fibular deficiency)
  - PFFD: 70-80% have associated fibular deficiencies
  - Prosthetic fitting: "6-12-3" — passive TD at 6mo, voluntary-opening at 12mo, myoelectric at 3yr
  - Terminal overgrowth: Most common in humerus and fibula; requires surgical revision
  - Children do NOT develop phantom pain if deficiency/amputation before age 6
  - Krukenberg procedure: Separates ulna/radius to create prehensile surface
  - VACTERL: Vertebral, Anal atresia, Cardiac, Tracheo-Esophageal fistula, Renal, Limb
- **Custom Widget:** Limb Deficiency Classification Comparison Tool

### Module 4: Diseases of the Bones & Joints
- **ID:** `bones-joints`
- **Topics:** Feet (metatarsus varus, clubfoot/CTEV, cavus foot, claw toes), leg (genu varum/valgum, Blount's disease), hip (DDH, Barlow/Ortolani/Galeazzi tests, Legg-Calve-Perthes, SCFE, toxic synovitis), neck (congenital torticollis), traumatic conditions (nursemaid's elbow, medial epicondylar apophysitis, Osgood-Schlatter), scoliosis (Cobb method, treatment thresholds), Scheuermann's disease, spondylolisthesis
- **Key Tables:** Nontraumatic Hip Pain Comparison (Table 10-6), Functional vs Structural Scoliosis (Table 10-8), Scoliosis Treatment by Degree (Table 10-9)
- **Tabs:** Foot & Ankle | Knee & Leg | Hip Conditions | Neck & Spine | Traumatic Conditions
- **Board Pearls:**
  - CAVE mnemonic for clubfoot: Cavus, Adductus, Varus, Equinus
  - Ponseti method (serial casting) is first-line for clubfoot
  - DDH: Barlow = provokes dislocation (Bad), Ortolani = reduces dislocation (OK)
  - Torticollis direction: Right torticollis = head tilted right, chin rotated LEFT; SCM fibrosis most common cause
  - Scoliosis treatment: Observe <25°, brace 25-40°, surgery >40-50°
  - Legg-Calve-Perthes: AVN femoral head, ages 4-10, boys 4:1
  - SCFE: Overweight adolescent, decreased internal rotation, externally rotated leg
  - Osgood-Schlatter: Tibial tubercle apophysitis, boys > girls 3:1
  - Blount's disease: Most common morphologic cause of bowing in obese early walkers
- **Custom Widgets:** Hip Exam Maneuvers Guide (animated Barlow/Ortolani/Galeazzi), Scoliosis Assessment Tool (interactive Cobb angle), Nontraumatic Hip Pain Differential Tool (age-axis + comparison matrix)

### Module 5: Connective Tissue & Joint Disease
- **ID:** `connective-tissue`
- **Topics:** JIA (7 ILAR subtypes), adult RA vs JIA differences, JIA management pyramid (NSAIDs → DMARDs → biologics → surgery), juvenile spondyloarthropathies (ankylosing spondylitis, reactive arthritis/Reiter's, IBD-related), SLE (11 diagnostic criteria), juvenile dermatomyositis, scleroderma (morphea, systemic, CREST), infectious arthritis (Lyme disease, rheumatic fever/Jones criteria, septic arthritis by age), hemophilias (A/B/C), Kawasaki disease
- **Key Tables:** JIA 7 Types Comparison (Table 10-10), ACR Functional Classification (Table 10-13), SLE 11 Diagnostic Criteria (Table 10-14), Jones Criteria for Rheumatic Fever (Table 10-15), Drug Therapy in JRA (Table 10-12), Septic Arthritis Pathogens by Age (Table 10-16)
- **Tabs:** JIA Subtypes | JIA Management | Spondyloarthropathies | SLE & Dermatomyositis | Infectious Arthritis | Hemophilia & Kawasaki
- **Board Pearls:**
  - Oligoarticular JIA: Most common (40-50%), highest uveitis risk, ANA+ 70-80%, slit-lamp every 3-4 months
  - Systemic JIA (Still's disease): Quotidian fever, salmon rash, risk of macrophage activation syndrome (MAS)
  - Enthesitis-related JIA: HLA-B27+, males > females, sacroiliitis
  - JIA vs adult RA: JIA = ANA+/uveitis risk; adult RA = RF+/no uveitis; JIA has radial deviation (adult = ulnar)
  - SLE: Diagnosis requires 4 of 11 criteria; nephritis in 75% determines outcome
  - Juvenile dermatomyositis: Heliotropic rash + proximal weakness; no malignancy association (unlike adult)
  - Jones Criteria: 2 major OR 1 major + 2 minor with evidence of strep infection
  - Kawasaki: Fever >5 days + 4 of 5 criteria (strawberry tongue, conjunctivitis, rash, extremity changes, lymphadenopathy)
  - Septic arthritis pathogens: Newborn = Staph aureus; 2mo-2yr = H. influenzae; >2yr = Staph aureus; sexually active = Gonococcal
  - Hemophilia A (Factor VIII): Hallmark is hemarthrosis
- **Custom Widgets:** JIA Subtype Comparison Tool (swipeable cards + comparison matrix), JIA Management Pyramid (expandable levels), SLE Criteria Checker (interactive checklist with 4/11 threshold animation)

### Module 6: Pediatric Burns
- **ID:** `pediatric-burns`
- **Topics:** Epidemiology, burn classification (superficial/partial/full thickness), Lund & Browder chart (age-adjusted), Rule of 9s (pediatric modification), 5-10-20 hospitalization rule, positioning/anti-deformity, rehabilitation principles (splinting, ROM, ADLs, exercise, physical modalities), burns requiring special attention (neck, axilla, hands/feet)
- **Key Tables:** Child Burn Size Estimation by Age (Table 10-17), Proper Positioning (Table 10-18), Splinting Hands/Feet (Table 10-19)
- **Tabs:** Epidemiology & Classification | Burn Sizing | Hospitalization & Positioning | Rehabilitation | Special Attention Areas
- **Board Pearls:**
  - Scald burns = #1 most common pediatric burn type (vs flame in adults)
  - "COMFORT = CONTRACTURE" — anti-deformity positioning is opposite of comfort
  - Modified Rule of 9s: Head = 18% (vs 9% adult), each leg = 14% (vs 18% adult)
  - Lund & Browder is most accurate for children (age-adjusted percentages)
  - 16% of burn injuries are nonaccidental; 50% of those from abuse
  - Epiphyseal plate concern with ultrasound therapy in children
  - Anti-deformity positions: Neck extension, shoulder 90° abduction, elbow extension, wrist 15-20° extension, MCP 70-90° flexion, IPs extended, hip extension/abduction, knee extension, ankle 90° dorsiflexion
- **Custom Widgets:** Pediatric Burn Size Calculator (tappable body diagram with age slider for dynamic percentage adjustment), Burn Positioning Guide (interactive body with do/don't comparison)

### Module 7: Pediatric Cancers
- **ID:** `pediatric-cancers`
- **Topics:** Solid tumors 70% (brain tumors/medulloblastoma, Hodgkin's, NHL/Burkitt's, neuroblastoma, Wilm's tumor/nephroblastoma, soft tissue tumors/rhabdomyosarcoma, bone tumors/osteosarcoma/Ewing's sarcoma, retinoblastoma, germ cell tumors), leukemias 30% (ALL, AML), bone tumor location by anatomic region, rehabilitation considerations
- **Key Tables:** Bone tumor sites (diaphysis/metaphysis/epiphysis), Cancer incidence percentages
- **Tabs:** Solid Tumors | Bone Tumors | Leukemias | Rehabilitation
- **Board Pearls:**
  - ALL = most common childhood leukemia (80%), peak incidence 2-5 years
  - Osteosarcoma = most common malignant bone tumor, metaphysis of long bones (distal femur most common)
  - Ewing's sarcoma = diaphysis, flat bones
  - Bone tumor locations: Epiphysis (chondroblastoma, giant cell), Metaphysis (osteosarcoma, osteochondroma), Diaphysis (Ewing's, eosinophilic granuloma)
  - Medulloblastoma: Most common malignant CNS tumor, posterior fossa, midline
  - Neuroblastoma: Sympathetic ganglia/adrenal medulla, <5 years
  - Retinoblastoma: <5 years, >90% of cases
- **Custom Widget:** Bone Tumor Location Map (skeletal diagram with color-coded benign vs malignant markers by region)

### Module 8: Pediatric Neurotrauma (TBI + SCI)
- **ID:** `pediatric-neurotrauma`
- **Topics:** **TBI:** Epidemiology (#1 cause death >1yr), mechanism differences (falls, NAT in <2yr), diffuse vs focal injury patterns, pediatric GCS modifications, PECARN criteria, abusive head trauma (shaken baby), second impact syndrome, concussion management (return-to-learn before return-to-play), "growing into deficits" phenomenon, school re-entry. **SCI:** SCIWORA (Spinal Cord Injury Without Radiographic Abnormality), pediatric vs adult SCI patterns, higher cervical injuries in young children, ligamentous laxity
- **Tabs:** Pediatric TBI Fundamentals | Pediatric GCS & Assessment | Concussion & Mild TBI | Abusive Head Trauma | Pediatric SCI & SCIWORA
- **Board Pearls:**
  - TBI is #1 cause of death and disability in children >1 year
  - Children: More diffuse cerebral swelling; adults: more focal contusions
  - Better motor recovery but "growing into deficits" — executive function deficits emerge as demands increase (ages 7-12)
  - Pediatric GCS: Modified verbal scale for pre-verbal (<2yr); best verbal = cries, consolable
  - Abusive head trauma: Peak <1 year; retinal hemorrhages + subdural hematomas + no external trauma
  - Second impact syndrome: Catastrophic cerebral edema from second concussion before first resolves
  - Return-to-LEARN before return-to-PLAY (2023 Berlin consensus update)
  - Brief relative rest 24-48 hours, then sub-symptom threshold activity (no longer complete cocooning)
  - SCIWORA: More common in children due to ligamentous laxity and proportionally larger head
  - Higher cervical injuries (C1-C3) in children <8 years
- **Custom Widget:** Pediatric GCS Calculator (3 sections with age-adjusted verbal scale, "Intubated" toggle for T notation)

### Module 9: Cerebral Palsy
- **ID:** `cerebral-palsy`
- **Topics:** Definition (non-progressive disorder of movement/posture from developing brain injury), epidemiology (2-3 per 1000), etiology by timing (prenatal 70-80%/perinatal/postnatal), classification by type (spastic 70-80%/dyskinetic/ataxic/mixed) and topography (hemi/di/tri/quadri), GMFCS I-V (expanded & revised with age bands), MACS (Manual Ability Classification), CFCS (Communication Function Classification), associated conditions (seizures, intellectual disability, visual/hearing impairment, feeding difficulties), early diagnosis (GMA + MRI + HINE before 5 months), medical management, spasticity management ladder, surgical interventions (SDR, orthopedic), hip surveillance, CIMT, rehabilitation approach, orthotics
- **Key Tables:** GMFCS Levels I-V by age band, Spasticity management ladder, CP Classification matrix
- **Tabs:** Definition & Epidemiology | Classification & GMFCS | Associated Conditions | Spasticity Management | Surgical Interventions | Early Diagnosis & Rehabilitation
- **Board Pearls:**
  - Spastic CP = 70-80% of all cases (UMN pattern, velocity-dependent)
  - Spastic diplegia = most common type in premature infants (PVL)
  - Spastic quadriplegia = most severe; highest seizure + intellectual disability risk
  - Dyskinetic/athetoid CP = basal ganglia injury (kernicterus/bilirubin encephalopathy)
  - GMFCS is a CLASSIFICATION (stable, does not change); GMFM is EVALUATIVE (measures change)
  - GMFCS III-V: High risk hip subluxation — screening AP pelvis every 6-12 months starting at 12 months
  - Migration percentage >30% = orthopedic referral
  - Spasticity ladder: Positioning/stretching → oral meds (baclofen, diazepam, dantrolene) → botulinum toxin → ITB pump → SDR → orthopedic surgery
  - Dantrolene acts peripherally at muscle (not centrally) — unique board pearl
  - ITB pump complications: Withdrawal (hyperthermia, rhabdomyolysis — can be fatal), overdose (respiratory depression), catheter malfunction
  - Early diagnosis: GMA (fidgety movements) + MRI + HINE can diagnose CP before 5 months corrected age
  - CIMT: 2-6 hours/day of constraint for hemiplegic CP
- **Mnemonics:** GMFCS: I=Independent, II=Limitations, III=Handheld device, IV=Power wheelchair, V=Transported
- **Custom Widgets:** GMFCS Level Guide (5 levels with age-banded descriptions + silhouette illustrations + assistive device annotations), CP Classification Tool (2-axis matrix: topography x type), Spasticity Management Ladder (expandable levels with medications/indications at each step)
- **Widget Priority:** TIER 1 — Highest board yield. GMFCS is THE most important CP widget.

### Module 10: Spina Bifida (Myelodysplasia)
- **ID:** `spina-bifida`
- **Topics:** Types (occulta, meningocele, myelomeningocele), epidemiology, folic acid prevention (0.4mg all women, 4mg with prior NTD), associated conditions (Arnold-Chiari II malformation, hydrocephalus/VP shunt in ~90%, tethered cord, latex allergy 18-73%), functional levels by motor level, bowel/bladder management (CIC, bowel program), orthotic management by level, ambulatory prognosis, cognitive considerations, sexuality/fertility
- **Key Tables:** Functional Level by Motor Level Chart (L1-S2)
- **Tabs:** Types & Epidemiology | Associated Conditions | Functional Levels by Motor Level | Bowel & Bladder | Orthotic Management | Tethered Cord & Monitoring
- **Board Pearls:**
  - Folic acid: 0.4 mg/day ALL women of childbearing age; 4 mg/day if prior NTD pregnancy (reduces risk 50-70%)
  - Arnold-Chiari II: Almost universal in myelomeningocele; symptoms in infants = stridor, apnea, dysphagia
  - Hydrocephalus: ~90% of myelomeningocele patients require VP shunt
  - Latex allergy: ALL myelomeningocele patients treated as latex-allergic (universal precautions)
  - Tethered cord: Presents as changing neuro status, progressive scoliosis, new urologic dysfunction, or pain — especially during growth spurts
  - **Functional motor levels (EXTREMELY high yield):**
    - L1-L2: Community wheelchair user; hip flexors only
    - L3: Household ambulator with KAFOs; quads present
    - L4: Community ambulator with AFOs; tibialis anterior (dorsiflexion)
    - L5: Community ambulator with AFOs; peroneals, hip abductors (heel walk)
    - S1-S2: Community ambulator, may need no orthosis; plantar flexion present
  - Most common level = lumbar; bowel/bladder dysfunction at virtually all levels
- **Custom Widgets:** Functional Level by Motor Level Chart (tappable spinal column with dynamic functional profile), Orthotic Selection Guide (decision tree by motor level)
- **Widget Priority:** TIER 1 — Motor level chart is extremely high yield

### Module 11: Neuromuscular Diseases in Children
- **ID:** `neuromuscular-diseases`
- **Topics:** Duchenne muscular dystrophy (Xp21/dystrophin absent, Gower's sign, pseudohypertrophy, CK >10000, steroids, cardiac monitoring), Becker MD (reduced dystrophin, milder), myotonic dystrophy, spinal muscular atrophy types I-IV (SMN1 gene, chromosome 5q) + NEW gene therapies (nusinersen/Spinraza, onasemnogene/Zolgensma, risdiplam/Evrysdi), Charcot-Marie-Tooth (PMP22 duplication, stork legs, pes cavus), Guillain-Barre syndrome, **brachial plexus palsy** (Erb's C5-C6 waiter's tip, Klumpke's C8-T1, total plexus, Narakas classification, microsurgical timing, Toronto Test Score)
- **Key Tables:** SMA Types Comparison, DMD vs Becker comparison, Brachial plexus palsy types
- **Tabs:** Duchenne & Becker MD | Spinal Muscular Atrophy | CMT & GBS | Brachial Plexus Palsy | Management Principles
- **Board Pearls:**
  - DMD: X-linked recessive, Xp21, ABSENT dystrophin, onset 2-5yr, Gower's sign, pseudohypertrophy calves, CK 10,000-50,000+, loss of ambulation by age 12, death late 20s (cardiac/respiratory)
  - Becker: Same gene, REDUCED dystrophin, later onset, ambulatory past age 16
  - Steroids (deflazacort/prednisone): Start when motor plateau (age 4-6), prolongs ambulation ~2 years
  - SMA Types: I = Never Sits (Werdnig-Hoffmann, <6mo), II = Sits never stands (6-18mo), III = Stands/walks then loses (Kugelberg-Welander, >18mo), IV = Adult onset
  - All SMA: Autosomal recessive, SMN1 gene deletion, chromosome 5q
  - **SMA Gene Therapy Revolution (board-testable):** Nusinersen (intrathecal, all types), Zolgensma (one-time IV gene therapy, type I <2yr), Risdiplam (oral, ≥2months)
  - CMT1A: Most common hereditary neuropathy, AD, PMP22 duplication chr 17, demyelinating, stork legs, pes cavus, hammer toes
  - **Brachial Plexus (ADDED - heavily tested):** Erb's palsy C5-C6 = waiter's tip (adducted, internally rotated shoulder, extended elbow, pronated forearm); Klumpke's C8-T1 = claw hand ± Horner syndrome; Microsurgery if no biceps recovery by 3-6 months
- **Mnemonics:** SMA "1-2-3 = None-Sit-Stand"; DMD "Gower's = Goes Over"
- **Custom Widgets:** Muscular Dystrophy Comparison Tool (DMD vs Becker with age-of-onset timeline), SMA Types Comparison (milestone tower showing ceiling for each type)

### Module 12: Pediatric Rehabilitation Pharmacology
- **ID:** `peds-pharmacology`
- **Topics:** Spasticity medications (baclofen, diazepam, dantrolene, tizanidine, botulinum toxin), seizure medications, pain management (FLACC scale, Wong-Baker FACES), JIA medications (NSAIDs — naproxen/ibuprofen/tolmetin approved for children, DMARDs — methotrexate/sulfasalazine, biologics), ADHD medications, SMA gene therapies, corticosteroids in DMD, growth plate considerations, pediatric-specific drug interactions
- **Key Tables:** Drug Therapy in JRA (Table 10-12), Spasticity medication comparison
- **Tabs:** Spasticity Medications | Seizure Medications | JIA Pharmacology | Pain Management | Growth & Development Considerations
- **Board Pearls:**
  - Dantrolene: Acts peripherally at muscle (not centrally like baclofen)
  - Baclofen: GABA-B agonist; ITB pump for generalized spasticity GMFCS IV-V
  - Botulinum toxin: Onset 24-72hr, peak 2-6 weeks, duration 3-6 months
  - Aspirin risk: Reye's syndrome with influenza/varicella infections in children
  - Only naproxen, ibuprofen, and tolmetin are FDA-approved NSAIDs for JIA
  - Methotrexate: Avoid with NSAIDs (potentiates bone marrow suppression)
  - Hydroxychloroquine: Most commonly used antimalarial for JIA
  - Growth plate concerns: Avoid US overexposure; corticosteroids affect growth
  - Deflazacort may have fewer side effects than prednisone in DMD (less weight gain)
- **Custom Widget:** Pediatric Medication Reference Card (searchable, filterable cards with board pearl callout per drug)

### Module 13: Pediatric Orthotic & Assistive Technology
- **ID:** `orthotics-at`
- **Topics:** Lower extremity orthotics (AFOs: solid, hinged, GRAFO, floor-reaction; KAFOs; HKAFOs; RGOs), upper extremity orthotics, spinal orthoses (TLSO, Milwaukee brace), wheelchair/seating considerations (tilt vs recline, pressure mapping), adaptive equipment, powered mobility introduction (as young as 12-18 months in exceptional cases, traditionally 5-6yr), gait trainers, standing frames
- **Tabs:** Lower Extremity Orthotics | Upper Extremity & Spinal | Wheelchair & Seating | Powered Mobility | Adaptive Equipment
- **Board Pearls:**
  - AFO prescription by CP pattern: Hemiplegic = hinged AFO; diplegic = solid AFOs or GRAFOs
  - Orthotic prescription by spina bifida level: L3 = KAFOs, L4 = AFOs, L5 = AFOs, S1 = shoe insert or no orthosis
  - Powered mobility: Cognitive skills of spatial relation and problem-solving are essential predictors
  - SACH foot: Most common prosthetic foot for child amputees
  - Milwaukee brace: Cervical to sacral, for thoracic scoliosis curves
  - TLSO: For thoracolumbar/lumbar curves
  - Scoliosis bracing: Worn 16-23 hours/day during growth
- **Custom Widget:** Orthotic Selection Decision Tree (flowchart: level of involvement → joint stability → functional goals → orthotic recommendation)

### Module 14: Pediatric Rehabilitation Continuum
- **ID:** `rehab-continuum`
- **Topics:** Inpatient rehabilitation, outpatient services, school-based therapy, early intervention (Part C, 0-3 years, IFSP), special education (Part B, 3-21 years, IEP vs 504 plan), IDEA law, least restrictive environment, transition to adult services (age 14-21 planning), family-centered care, outcome measures (WeeFIM, PEDI/PEDI-CAT, GMFM, Bayley scales, Denver II, ASQ), pediatric pain scales (FLACC, Wong-Baker FACES), palliative care considerations
- **Key Tables:** Outcome Measures Comparison, IDEA Parts B vs C, IEP vs 504
- **Tabs:** Early Intervention (0-3) | School-Based Services & IDEA | Outcome Measures | Transition Planning | Family-Centered Care
- **Board Pearls:**
  - Early intervention (Part C): 0-3 years, IFSP (Individualized Family Service Plan), family-centered
  - Special education (Part B): 3-21 years, IEP (Individualized Education Program), child-centered
  - 504 Plan: Accommodations only (no special education services); Section 504 of Rehabilitation Act
  - Transition planning: Must begin by age 14 (some states age 16)
  - Least Restrictive Environment (LRE): Children with disabilities educated with non-disabled peers to maximum extent appropriate
  - WeeFIM: 18 items, 7-point scale, ages 6mo-7yr, measures burden of care
  - PEDI/PEDI-CAT: Self-care + Mobility + Social function; capability AND performance; ages 0-7.5yr (PEDI-CAT extends to 21yr)
  - GMFM: 88 items, 5 dimensions (Lying/Sitting/Crawling/Standing/Walking), evaluative measure (detects change)
  - GMFCS vs GMFM: GMFCS = classification (stable), GMFM = evaluative (changes)
  - Bayley Scales: Gold standard infant developmental assessment, 1-42 months
- **Custom Widget:** Outcome Measures Comparison Tool (grouped by domain: gross motor, fine motor, functional independence, participation)

---

## Clinical Scales & Assessment Tools Reference

| Scale | Measures | Age Range | Key Board Fact |
|-------|----------|-----------|----------------|
| **GMFCS** | CP motor severity | <18yr | 5 levels, CLASSIFICATION (stable) |
| **GMFM** | Gross motor function | CP, Down | 88 items, 5 dimensions, EVALUATIVE (changes) |
| **MACS** | Hand function in CP | 4-18yr | 5 levels, parallels GMFCS for UE |
| **CFCS** | Communication in CP | All ages | 5 levels for everyday communication |
| **WeeFIM** | Functional independence | 6mo-7yr | 18 items, 7-point scale, burden of care |
| **PEDI/PEDI-CAT** | Functional capability + performance | 0-7.5yr (PEDI-CAT 0-21yr) | 3 domains: Self-care, Mobility, Social |
| **Bayley-4** | Developmental assessment | 1-42mo | Gold standard infant assessment, 5 scales |
| **Denver II** | Developmental screening | 0-6yr | SCREENING tool (not diagnostic) |
| **ASQ-3** | Developmental screening | 1-66mo | Parent-completed questionnaire |
| **MAS/Tardieu** | Spasticity | All ages | Tardieu: R2-R1 = dynamic spasticity component |
| **FLACC** | Pain (nonverbal) | 0-7yr | Face, Legs, Activity, Cry, Consolability |
| **Wong-Baker** | Pain (verbal) | 3+yr | FACES scale, self-report |

---

## Key Pediatric vs Adult Differences (Board Favorite)

| Feature | Pediatric | Adult |
|---------|----------|-------|
| TBI mechanism | Falls, NAT in <2yr | MVA, falls |
| TBI pathology | Diffuse swelling | Focal contusions |
| TBI recovery | Better motor; "growing into deficits" cognitively | More predictable |
| Burns - most common | Scald | Flame |
| Burns - Rule of 9s head | 18% | 9% |
| Burns - Rule of 9s each leg | 14% | 18% |
| Most common cancer | ALL (leukemia) | Solid organ carcinomas |
| Most common bone tumor | Osteosarcoma | Metastatic disease |
| Spinal cord injury | SCIWORA, higher cervical | Rare SCIWORA |
| Arthritis | JIA (ANA+, uveitis) | RA (RF+, no uveitis) |
| Hip pathology | DDH, Perthes, SCFE | OA, AVN, fracture |
| Amputation | Congenital > acquired, terminal overgrowth | Acquired (PVD, trauma) |
| Phantom pain | Rare if <6yr | Common |
| Atlantoaxial instability | Down syndrome, Morquio, JIA | RA (odontoid erosion) |

---

## Theme & Visual Identity

**Pediatric-specific color palette** using Material 3 `ColorScheme.fromSeed`:

```dart
class AppTheme {
  // Brand colors - purple/pink pediatric theme
  static const Color primaryPurple = Color(0xFF6D28D9);
  static const Color accentPink = Color(0xFFEC4899);
  static const Color warningAmber = Color(0xFFF59E0B);
  static const Color dangerRed = Color(0xFFDC2626);
  static const Color successGreen = Color(0xFF16A34A);

  // Surface colors
  static const Color surfaceLight = Color(0xFFFAF5FF);      // Very light purple tint
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF1E293B);
  static const Color textSecondary = Color(0xFF475569);

  // Pearl/Board Pearl (distinct from other modules)
  static const Color pearlBackground = Color(0xFFF5F3FF);    // Light purple
  static const Color pearlBorder = Color(0xFF8B5CF6);
  static const Color pearlText = Color(0xFF4C1D95);

  // Mnemonic styling
  static const Color mnemonicBackground = Color(0xFFFDF2F8);  // Light pink
  static const Color mnemonicBorder = Color(0xFFEC4899);

  // Avoid/Warning styling
  static const Color avoidBackground = Color(0xFFFEE2E2);
  static const Color avoidBorder = Color(0xFFDC2626);

  // 14 module-specific colors
  static const Color geneticsColor = Color(0xFF8B5CF6);
  static const Color developmentColor = Color(0xFF06B6D4);
  static const Color limbDeficienciesColor = Color(0xFFEC4899);
  static const Color bonesJointsColor = Color(0xFFF97316);
  static const Color connectiveTissueColor = Color(0xFF3B82F6);
  static const Color burnsColor = Color(0xFFEF4444);
  static const Color cancersColor = Color(0xFF6366F1);
  static const Color neurotraumaColor = Color(0xFF0EA5E9);
  static const Color cerebralPalsyColor = Color(0xFF14B8A6);
  static const Color spinaBifidaColor = Color(0xFF7C3AED);
  static const Color neuromuscularColor = Color(0xFFD946EF);
  static const Color pharmacologyColor = Color(0xFF0D9488);
  static const Color orthoticsColor = Color(0xFFF59E0B);
  static const Color rehabContinuumColor = Color(0xFF059669);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryPurple,
        primary: primaryPurple,
        secondary: accentPink,
        error: dangerRed,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: surfaceLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: surfaceLight,
        foregroundColor: textPrimary,
        elevation: 0,
        scrolledUnderElevation: 1,
        centerTitle: true,
      ),
      cardTheme: CardThemeData(
        color: cardBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: textPrimary),
        headlineMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: textPrimary),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: textPrimary),
        bodyLarge: TextStyle(fontSize: 16, height: 1.6, color: textPrimary),
        bodyMedium: TextStyle(fontSize: 14, height: 1.5, color: textSecondary),
      ),
    );
  }
}
```

---

## Custom Interactive Widgets - Priority Tiers

### Tier 1: Build First (Highest Board Yield)
| Widget | Type | Pattern |
|--------|------|---------|
| Pediatric GCS Calculator | Calculator | Stepped input + live result |
| GMFCS Level Guide | Ladder | 5 expandable levels with age bands |
| Developmental Milestones Timeline | Timeline | Horizontal scroll + draggable age cursor |
| SLE Criteria Checker | Checklist/Calculator | 11-item checklist with 4/11 threshold |
| Pediatric Burn Size Calculator | Body diagram | Tappable regions + age slider |
| Functional Level by Motor Level Chart | Spinal diagram | Tappable vertebral levels |
| CP Classification Tool | Matrix | 2-axis: topography x type |
| Primitive Reflex Tracker | Timeline | Horizontal bars: emergence to integration |

### Tier 2: Build Second (High Yield)
| Widget | Type | Pattern |
|--------|------|---------|
| JIA Subtype Comparison | Comparison | Swipeable cards + matrix |
| JIA Management Pyramid | Pyramid | Expandable levels |
| Scoliosis Assessment Tool | Measurement | Interactive Cobb angle |
| Spasticity Management Ladder | Ladder | Expandable with meds per level |
| Orthotic Selection Guide | Decision tree | Flowchart wizard |
| Hip Exam Maneuvers Guide | Animated guide | Step-by-step with arrows |

### Tier 3: Build Third (Moderate Yield)
All remaining widgets (Chromosomal Syndromes, Limb Deficiency Classification, Nontraumatic Hip Differential, Burn Positioning, Bone Tumor Map, Muscular Dystrophy Comparison, SMA Types, Medication Reference, Outcome Measures)

### Widget Design Principles
1. **Every widget has Learn mode AND Quiz mode** (SegmentedButton toggle)
2. **Learn mode:** All info visible, tap to expand explanations
3. **Quiz mode:** Info hidden, learner selects/inputs answers, immediate feedback with explanation
4. **Colorblind-safe:** Teal (correct) + deep orange (incorrect), never red/green alone; icons always accompany color
5. **Accessibility:** 48x48dp minimum tap targets, screen reader labels, text alternatives for diagrams

---

## Quiz & Flashcard Strategy

### Quiz Banks
- **Comprehensive quiz bank:** Target 600+ questions across all 14 modules (~40-45 per module)
- **Difficulty levels:** basic, intermediate, board
- **Board cutoff:** 70% passing
- **Question format:** `QuizQuestion` with question, 4 options (A-D), correctIndex, explanation, moduleId, difficulty
- **Quiz bank class:** `PedsRehabQuizBank` with static `getRandomQuiz(int count)` method

### Flashcard Banks
- Front/back format with moduleId tagging
- "Knew It" / "Needs Work" tracking with persistence via `ProgressService`
- Target 20-30 flashcards per module

---

## Key Board Mnemonics to Include

| Mnemonic | Topic | Expansion |
|----------|-------|-----------|
| TORCHES | Congenital infections | Toxoplasmosis, Other, Rubella, CMV, Herpes, Syphilis |
| CAVE | Clubfoot deformities | Cavus, Adductus, Varus, Equinus |
| DANISH | Down syndrome features | Duodenal atresia, Atlantoaxial instability, Nuchal translucency, Intellectual disability, Single palmar crease, Heart defects |
| VACTERL | Associated anomalies | Vertebral, Anal atresia, Cardiac, Tracheo-Esophageal fistula, Renal, Limb |
| COMFORT = CONTRACTURE | Burn positioning | Anti-deformity position is opposite of comfort |
| 1-2-3 = None-Sit-Stand | SMA Types | Type I never sits, Type II sits, Type III stands/walks |
| 6-12-3 | Prosthetic fitting | 6mo passive TD, 12mo voluntary-opening, 3yr myoelectric |
| B = Bad, O = OK | DDH exam | Barlow provokes dislocation, Ortolani reduces it |
| I-II-III-IV-V | GMFCS | Independent, Limitations, Handheld device, Power wheelchair, Transported |

---

## Implementation Phases

### Phase 1: Project Scaffolding (Copy + Adapt)
1. `flutter create pediatric_rehab_training`
2. Mirror directory structure from SCI Training
3. Copy and rename from SCI Training:
   - `main.dart` → `PediatricRehabApp`
   - `app_theme.dart` → new purple/pink palette
   - `topic_content_model.dart` → **upgrade to sealed classes**
   - `module_model.dart` → copy verbatim
   - `quiz_model.dart` → copy verbatim
   - `flashcard_model.dart` → copy verbatim
   - `quiz_session_view.dart` → copy verbatim (change colors)
   - `flashcard_view.dart` → copy verbatim (change colors)
   - `content_card.dart` → copy, update icon/color arrays
   - `home_screen.dart` → copy, update title/quiz bank reference
   - `module_content_screen.dart` → copy, update switch statement
   - `topic_content_view.dart` → **refactor: extract block renderers to separate files**
4. Add `shared_preferences: ^2.3.0` to pubspec.yaml
5. Create `ProgressService` for persistence
6. Create `ResponsiveContentWrapper` for desktop
7. Verify build and run on iOS/macOS

### Phase 2: Module Data & Content Structure
1. Create `module_data.dart` with 14 pediatric modules
2. Create 14 empty content file stubs
3. Create `module_content_screen.dart` router with switch on all 14 IDs
4. Create custom widget enum with all 24 types

### Phase 3: Content Population (Modules 1-7)
Build content using Cuccurullo Parts 1-2 + DeLisa's. For each module:
- Create TopicData with 3-6 tabs
- Populate all block types (Header, Text, Pearl, BulletCard, Table, Mnemonic, Scale, MedicationCard, Comparison, CustomWidget)
- Use `const` constructors throughout

### Phase 4: Content Population (Modules 8-14)
Build content using Cuccurullo Parts 3-5 + DeLisa's + board review research. Include:
- Brachial plexus content in Module 11
- SCIWORA/pediatric SCI in Module 8
- SMA gene therapy content in Module 11
- Expanded outcome measures in Module 14

### Phase 5: Quiz & Flashcard Banks
1. Create `peds_rehab_quiz_bank.dart` with 600+ questions
2. Create flashcard files per module
3. Wire up to QuizSessionView and FlashcardView
4. Test scoring, progress persistence with ProgressService

### Phase 6: Custom Interactive Widgets (Tiered)
**Tier 1 first** (8 widgets): GCS Calculator, GMFCS Guide, Milestones Timeline, SLE Checker, Burn Calculator, Motor Level Chart, CP Classification, Primitive Reflex Tracker

**Tier 2 second** (6 widgets): JIA Comparison, JIA Pyramid, Scoliosis Tool, Spasticity Ladder, Orthotic Guide, Hip Exam Maneuvers

**Tier 3 third** (10 widgets): All remaining

### Phase 7: Polish & Testing
1. Cross-platform testing (iOS, Android, macOS, Linux)
2. Content review for medical accuracy against source material
3. Accessibility audit (text scaling 1.5x, screen reader, color contrast)
4. Desktop responsive layout verification
5. Performance profiling (large content modules)

---

## Dependencies

```yaml
name: pediatric_rehab_training
description: "Pediatric Rehabilitation Training for PM&R Board Review"
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: ^3.11.0

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  just_audio: ^0.9.36
  url_launcher: ^6.3.1
  shared_preferences: ^2.3.0    # NEW: progress persistence

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0

flutter:
  uses-material-design: true
  assets:
    - assets/icons/
    - assets/images/
    - assets/audio/
```

---

## Acceptance Criteria

- [ ] 14 modules covering all Cuccurullo chapter subsections + brachial plexus + SCIWORA
- [ ] Consistent architecture with TBI/SCI/CVA modules
- [ ] Sealed class content blocks with exhaustive switch rendering
- [ ] Extracted block renderer widgets in separate files
- [ ] Board pearl highlights throughout all modules
- [ ] Multiple-choice quizzes with 3 difficulty levels (600+ questions)
- [ ] Flashcard sets per module (20-30 per module)
- [ ] 24 custom interactive widgets with Learn/Quiz dual mode
- [ ] Cross-platform build (iOS, Android, macOS, Linux)
- [ ] 70% board cutoff scoring
- [ ] Pediatric-specific purple/pink theme with Material 3
- [ ] Progress persistence with shared_preferences
- [ ] Responsive desktop layout (max-width 800)
- [ ] All mnemonics rendered as MnemonicBlocks
- [ ] Pediatric vs Adult comparison tables in relevant modules
- [ ] 12 clinical scales documented with board pearls
