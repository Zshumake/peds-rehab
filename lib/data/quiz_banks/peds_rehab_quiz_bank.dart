import '../../core/models/quiz_model.dart';

class PedsRehabQuizBank {
  static List<QuizQuestion> getRandomQuiz(int count) {
    final shuffled = List<QuizQuestion>.from(_allQuestions)..shuffle();
    return shuffled.take(count).toList();
  }

  static const List<QuizQuestion> _allQuestions = [
    // ===== MODULE: genetics-chromosomal =====
    QuizQuestion(
      question: 'Which cardiac defect is most commonly associated with Trisomy 21 (Down syndrome)?',
      options: ['Tetralogy of Fallot', 'Endocardial cushion defect', 'Coarctation of the aorta', 'Ventricular septal defect'],
      correctIndex: 1,
      explanation: 'Endocardial cushion defect (atrioventricular septal defect) is the most common cardiac defect in Down syndrome. Coarctation of the aorta is associated with Turner syndrome.',
      moduleId: 'genetics-chromosomal',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'A child with short stature, webbed neck, and coarctation of the aorta most likely has which condition?',
      options: ['Trisomy 21', 'Trisomy 18', 'Turner syndrome (45,X)', 'Klinefelter syndrome (47,XXY)'],
      correctIndex: 2,
      explanation: 'Turner syndrome (45,X) presents with short stature, webbed neck, shield chest, coarctation of the aorta, primary amenorrhea, and mostly normal IQ.',
      moduleId: 'genetics-chromosomal',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'What percentage of children with Down syndrome have atlantoaxial instability?',
      options: ['1-5%', '10-30%', '50-70%', '80-90%'],
      correctIndex: 1,
      explanation: 'Atlantoaxial instability is present in 10-30% of individuals with Down syndrome. Flexion/extension cervical spine radiographs are recommended before participation in Special Olympics.',
      moduleId: 'genetics-chromosomal',
      difficulty: 'board',
    ),

    // ===== MODULE: development-growth =====
    QuizQuestion(
      question: 'At what age does the anterior fontanelle typically close?',
      options: ['4 months', '6-8 months', '10-14 months', '18-24 months'],
      correctIndex: 2,
      explanation: 'The anterior fontanelle normally closes between 10 and 14 months of age but may remain open until 18 months. The posterior fontanelle closes by 4 months.',
      moduleId: 'development-growth',
      difficulty: 'basic',
    ),
    QuizQuestion(
      question: 'Which primitive reflex persists the longest before integration?',
      options: ['Moro reflex', 'Palmar grasp', 'Plantar grasp', 'Rooting reflex'],
      correctIndex: 2,
      explanation: 'The plantar grasp reflex integrates at 9-12 months, which is later than the Moro (4-6 months), palmar grasp (4-6 months), and rooting reflex (3-4 months).',
      moduleId: 'development-growth',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'A child who cannot sit independently by what age should raise a developmental red flag?',
      options: ['6 months', '9 months', '12 months', '15 months'],
      correctIndex: 1,
      explanation: 'Key developmental red flags include: no social smile by 3 months, not sitting by 9 months, not walking by 18 months, no words by 18 months, no 2-word phrases by 24 months.',
      moduleId: 'development-growth',
      difficulty: 'intermediate',
    ),

    // ===== MODULE: limb-deficiencies =====
    QuizQuestion(
      question: 'What is the most common congenital upper extremity limb deficiency?',
      options: ['Right transhumeral', 'Left transradial', 'Bilateral transradial', 'Right transradial'],
      correctIndex: 1,
      explanation: 'The most common congenital upper extremity deficiency is a left terminal transradial (below-elbow) deficiency.',
      moduleId: 'limb-deficiencies',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'At what age should a passive terminal device first be fitted for a child with a congenital transradial deficiency?',
      options: ['At birth', '6 months', '12 months', '3 years'],
      correctIndex: 1,
      explanation: 'Prosthetic fitting follows the "6-12-3" timeline: passive terminal device at 6 months (sitting age), voluntary-opening terminal device at 12 months (walking age), myoelectric option at 3 years.',
      moduleId: 'limb-deficiencies',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'Terminal overgrowth after amputation in children most commonly affects which bone?',
      options: ['Femur', 'Tibia', 'Humerus', 'Radius'],
      correctIndex: 2,
      explanation: 'Terminal bony overgrowth occurs most frequently in the humerus, followed by fibula, tibia, and femur. Treatment requires surgical revision.',
      moduleId: 'limb-deficiencies',
      difficulty: 'board',
    ),

    // ===== MODULE: bones-joints =====
    QuizQuestion(
      question: 'The CAVE mnemonic for clubfoot deformity stands for:',
      options: ['Cavus, Abduction, Valgus, Extension', 'Cavus, Adductus, Varus, Equinus', 'Contracture, Adductus, Valgus, Equinus', 'Cavus, Adductus, Valgus, Eversion'],
      correctIndex: 1,
      explanation: 'CAVE = Cavus (midfoot), Adductus (forefoot), Varus (hindfoot), Equinus (hindfoot). The Ponseti method of serial casting is the first-line treatment.',
      moduleId: 'bones-joints',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'The Barlow test for developmental dysplasia of the hip (DDH) is used to:',
      options: ['Reduce a dislocated hip', 'Provoke dislocation of an unstable hip', 'Measure leg length discrepancy', 'Assess hip abduction range'],
      correctIndex: 1,
      explanation: 'Barlow = Bad (provokes dislocation). Ortolani = OK (reduces a dislocated hip). The Galeazzi test checks for leg length discrepancy with hips/knees flexed.',
      moduleId: 'bones-joints',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'What is the first-line treatment for idiopathic scoliosis with a Cobb angle of 30 degrees in a growing child?',
      options: ['Observation only', 'Bracing', 'Physical therapy alone', 'Surgical fusion'],
      correctIndex: 1,
      explanation: 'Scoliosis treatment: observe <25 degrees, brace 25-40 degrees, surgery >40-50 degrees in a growing child.',
      moduleId: 'bones-joints',
      difficulty: 'intermediate',
    ),

    // ===== MODULE: connective-tissue =====
    QuizQuestion(
      question: 'Which JIA subtype is most common and has the highest risk of uveitis?',
      options: ['Polyarticular RF-positive', 'Systemic JIA', 'Oligoarticular JIA', 'Enthesitis-related JIA'],
      correctIndex: 2,
      explanation: 'Oligoarticular JIA is the most common subtype (40-50% of cases), affects ≤4 joints, is ANA-positive in 70-80%, and has the highest risk of chronic uveitis requiring slit-lamp screening every 3-4 months.',
      moduleId: 'connective-tissue',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'How many of the 11 diagnostic criteria must be present to diagnose systemic lupus erythematosus (SLE)?',
      options: ['2 of 11', '3 of 11', '4 of 11', '6 of 11'],
      correctIndex: 2,
      explanation: 'SLE diagnosis requires 4 or more of the 11 diagnostic criteria. The presence of 4 criteria has 90% sensitivity and 98% specificity.',
      moduleId: 'connective-tissue',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'A life-threatening complication of systemic JIA characterized by fever, pancytopenia, hepatosplenomegaly, and elevated ferritin is:',
      options: ['Uveitis', 'Macrophage activation syndrome', 'Amyloidosis', 'Pericardial tamponade'],
      correctIndex: 1,
      explanation: 'Macrophage activation syndrome (MAS) occurs in 5-8% of systemic JIA cases and is characterized by persistent fever, pancytopenia, hepatosplenomegaly, and markedly elevated ferritin. It is a medical emergency.',
      moduleId: 'connective-tissue',
      difficulty: 'board',
    ),

    // ===== MODULE: pediatric-burns =====
    QuizQuestion(
      question: 'What is the most common type of burn injury in the pediatric population?',
      options: ['Flame burns', 'Electrical burns', 'Scald burns', 'Chemical burns'],
      correctIndex: 2,
      explanation: 'Scald burns are the single most common cause of pediatric burn injury, with the highest incidence occurring in toddlers. This differs from adults where flame burns predominate.',
      moduleId: 'pediatric-burns',
      difficulty: 'basic',
    ),
    QuizQuestion(
      question: 'Using the modified Rule of 9s for a 2-year-old child, what percentage of total body surface area does the head represent?',
      options: ['9%', '14%', '18%', '22%'],
      correctIndex: 2,
      explanation: 'In the pediatric modified Rule of 9s, the head = 18% (vs 9% in adults) and each leg = 14% (vs 18% in adults). The Lund and Browder chart is the most accurate method.',
      moduleId: 'pediatric-burns',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'In pediatric burn rehabilitation, the phrase "COMFORT = CONTRACTURE" refers to:',
      options: ['The need for pain management during therapy', 'Anti-deformity positioning is the opposite of comfortable positions', 'Comfort measures should be prioritized over range of motion', 'Contractures are inevitable regardless of positioning'],
      correctIndex: 1,
      explanation: 'In burn rehabilitation, the position of comfort promotes contracture formation. Anti-deformity positioning (which opposes the comfortable position) is essential to prevent contractures.',
      moduleId: 'pediatric-burns',
      difficulty: 'board',
    ),

    // ===== MODULE: pediatric-cancers =====
    QuizQuestion(
      question: 'What is the most common childhood malignancy?',
      options: ['Brain tumors', 'Neuroblastoma', 'Acute lymphoblastic leukemia (ALL)', 'Osteosarcoma'],
      correctIndex: 2,
      explanation: 'ALL accounts for approximately 80% of childhood leukemias and 30% of all pediatric cancers. Peak incidence occurs between ages 2-5 years.',
      moduleId: 'pediatric-cancers',
      difficulty: 'basic',
    ),
    QuizQuestion(
      question: 'Osteosarcoma most commonly arises in which anatomic location of the bone?',
      options: ['Diaphysis', 'Metaphysis', 'Epiphysis', 'Periosteum'],
      correctIndex: 1,
      explanation: 'Osteosarcoma typically arises in the metaphysis of long bones, most commonly around the knee (distal femur, proximal tibia). Ewing sarcoma occurs in the diaphysis.',
      moduleId: 'pediatric-cancers',
      difficulty: 'board',
    ),

    // ===== MODULE: pediatric-neurotrauma =====
    QuizQuestion(
      question: 'What is the leading cause of death in children over 1 year of age?',
      options: ['Cancer', 'Congenital anomalies', 'Traumatic brain injury', 'Infectious disease'],
      correctIndex: 2,
      explanation: 'TBI is the #1 cause of death and disability in children over 1 year of age. Annually, 185 children per 100,000 experience TBI.',
      moduleId: 'pediatric-neurotrauma',
      difficulty: 'basic',
    ),
    QuizQuestion(
      question: 'SCIWORA (Spinal Cord Injury Without Radiographic Abnormality) is more common in children due to:',
      options: ['Higher bone mineral density', 'Ligamentous laxity and proportionally larger head', 'Increased spinal cord blood flow', 'More developed vertebral bodies'],
      correctIndex: 1,
      explanation: 'SCIWORA is more common in children because of ligamentous laxity, proportionally larger head size, and immature vertebral bodies that allow greater spinal column stretch without bony fracture.',
      moduleId: 'pediatric-neurotrauma',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'In pediatric concussion management, which should occur FIRST?',
      options: ['Return to play', 'Return to learn', 'Full contact practice', 'Competitive sports participation'],
      correctIndex: 1,
      explanation: 'Current guidelines (2023 Berlin consensus) recommend return-to-LEARN before return-to-PLAY. Brief relative rest (24-48 hours) followed by sub-symptom threshold activity is recommended.',
      moduleId: 'pediatric-neurotrauma',
      difficulty: 'board',
    ),

    // ===== MODULE: cerebral-palsy =====
    QuizQuestion(
      question: 'What is the most common type of cerebral palsy?',
      options: ['Dyskinetic', 'Ataxic', 'Spastic', 'Mixed'],
      correctIndex: 2,
      explanation: 'Spastic CP accounts for 70-80% of all cases. It is characterized by upper motor neuron pattern with velocity-dependent increase in tone.',
      moduleId: 'cerebral-palsy',
      difficulty: 'basic',
    ),
    QuizQuestion(
      question: 'Spastic diplegia is most commonly associated with which etiology?',
      options: ['Kernicterus', 'Periventricular leukomalacia (PVL)', 'MCA infarction', 'Postnatal meningitis'],
      correctIndex: 1,
      explanation: 'Spastic diplegia (Little disease) is the most common type in premature infants and is associated with periventricular leukomalacia (PVL) from ischemia of the periventricular germinal matrix.',
      moduleId: 'cerebral-palsy',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'GMFCS Level III indicates a child who:',
      options: ['Walks without limitations', 'Walks with limitations', 'Walks with a handheld mobility device', 'Uses powered mobility'],
      correctIndex: 2,
      explanation: 'GMFCS: I = walks without limitations, II = walks with limitations, III = walks with handheld mobility device (walker/crutches), IV = self-mobility limited/uses powered wheelchair, V = transported in manual wheelchair.',
      moduleId: 'cerebral-palsy',
      difficulty: 'board',
    ),

    // ===== MODULE: spina-bifida =====
    QuizQuestion(
      question: 'What percentage of children with myelomeningocele require a VP shunt for hydrocephalus?',
      options: ['10%', '30%', '60%', '90%'],
      correctIndex: 3,
      explanation: 'Approximately 90% of children with myelomeningocele develop hydrocephalus requiring VP shunt placement. Arnold-Chiari II malformation is present in 80-90%.',
      moduleId: 'spina-bifida',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'A child with a motor level of L4 in spina bifida would be expected to:',
      options: ['Use a wheelchair full-time', 'Ambulate with KAFOs', 'Ambulate with AFOs as a community ambulator', 'Ambulate without orthoses'],
      correctIndex: 2,
      explanation: 'L4 motor level = tibialis anterior present (dorsiflexion). Expected to be a community ambulator with AFOs. L3 = household ambulator with KAFOs. L5 = community ambulator with AFOs. S1-S2 = may need no orthosis.',
      moduleId: 'spina-bifida',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'The recommended daily folic acid supplementation for a woman with a prior pregnancy affected by a neural tube defect is:',
      options: ['0.4 mg', '1 mg', '2 mg', '4 mg'],
      correctIndex: 3,
      explanation: 'All women of childbearing age should take 0.4 mg/day of folic acid. Women with a prior NTD pregnancy should take 4 mg/day, which reduces recurrence risk by 50-70%.',
      moduleId: 'spina-bifida',
      difficulty: 'board',
    ),

    // ===== MODULE: neuromuscular-diseases =====
    QuizQuestion(
      question: 'Duchenne muscular dystrophy is caused by a mutation affecting which protein?',
      options: ['Emerin', 'Dystrophin', 'Frataxin', 'SMN1'],
      correctIndex: 1,
      explanation: 'DMD is caused by mutations in the dystrophin gene on Xp21, resulting in absent or near-absent (<3%) dystrophin protein. Becker MD has the same gene but produces reduced/abnormal dystrophin.',
      moduleId: 'neuromuscular-diseases',
      difficulty: 'basic',
    ),
    QuizQuestion(
      question: 'SMA Type I (Werdnig-Hoffmann disease) is characterized by onset before 6 months and the child:',
      options: ['Walks independently then loses ability', 'Sits independently but never stands', 'Never achieves independent sitting', 'Has normal motor development until age 2'],
      correctIndex: 2,
      explanation: 'SMA types by motor milestone: Type I = never sits (onset <6 months), Type II = sits but never stands (onset 6-18 months), Type III = stands/walks then loses (onset >18 months). Mnemonic: 1-2-3 = None-Sit-Stand.',
      moduleId: 'neuromuscular-diseases',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'Erb-Duchenne palsy involves injury to which nerve roots?',
      options: ['C5-C6', 'C7', 'C8-T1', 'C5-T1'],
      correctIndex: 0,
      explanation: 'Erb palsy (C5-C6) presents with waiter tip position: adducted/internally rotated shoulder, extended elbow, pronated forearm. Klumpke palsy (C8-T1) presents with claw hand ± Horner syndrome.',
      moduleId: 'neuromuscular-diseases',
      difficulty: 'board',
    ),

    // ===== MODULE: peds-pharmacology =====
    QuizQuestion(
      question: 'Which spasticity medication acts peripherally at the muscle rather than centrally?',
      options: ['Baclofen', 'Diazepam', 'Dantrolene', 'Tizanidine'],
      correctIndex: 2,
      explanation: 'Dantrolene acts peripherally by inhibiting calcium release from the sarcoplasmic reticulum in skeletal muscle. Baclofen (GABA-B agonist), diazepam (GABA-A), and tizanidine (alpha-2 agonist) all act centrally.',
      moduleId: 'peds-pharmacology',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'Which risk is associated with aspirin use in children during influenza or varicella infections?',
      options: ['Stevens-Johnson syndrome', 'Reye syndrome', 'Aplastic anemia', 'Hepatorenal syndrome'],
      correctIndex: 1,
      explanation: 'Aspirin use during influenza or varicella infections in children is associated with Reye syndrome (acute encephalopathy and fatty liver degeneration). For this reason, aspirin is used less frequently in children.',
      moduleId: 'peds-pharmacology',
      difficulty: 'intermediate',
    ),

    // ===== MODULE: orthotics-at =====
    QuizQuestion(
      question: 'At what age are powered wheelchairs traditionally introduced for children who need them?',
      options: ['12-18 months', '3-4 years', '5-6 years', '8-10 years'],
      correctIndex: 2,
      explanation: 'Powered wheelchairs are traditionally introduced at 5-6 years. However, with innovative technology, children as young as 12-18 months have been reported to successfully use power mobility. Cognitive skills of spatial relation and problem-solving are essential predictors.',
      moduleId: 'orthotics-at',
      difficulty: 'board',
    ),

    // ===== MODULE: rehab-continuum =====
    QuizQuestion(
      question: 'IDEA Part C provides early intervention services for children ages:',
      options: ['0-3 years', '3-5 years', '5-21 years', '0-21 years'],
      correctIndex: 0,
      explanation: 'IDEA Part C covers early intervention for ages 0-3 using an IFSP (Individualized Family Service Plan). Part B covers special education for ages 3-21 using an IEP (Individualized Education Program).',
      moduleId: 'rehab-continuum',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'Which pediatric outcome measure is considered the gold standard for infant developmental assessment?',
      options: ['WeeFIM', 'PEDI', 'Bayley Scales', 'Denver II'],
      correctIndex: 2,
      explanation: 'The Bayley Scales of Infant and Toddler Development (Bayley-4) is the gold standard for developmental assessment in infants ages 1-42 months. Denver II is a SCREENING tool, not diagnostic.',
      moduleId: 'rehab-continuum',
      difficulty: 'board',
    ),
    QuizQuestion(
      question: 'The key difference between GMFCS and GMFM is:',
      options: ['GMFCS measures change over time while GMFM does not', 'GMFCS is a classification system while GMFM is an evaluative measure', 'GMFCS is for adults while GMFM is for children', 'They measure the same thing using different scales'],
      correctIndex: 1,
      explanation: 'GMFCS is a CLASSIFICATION system (stable, does not change over time). GMFM is an EVALUATIVE measure (detects change over time). GMFCS classifies severity; GMFM measures functional capacity.',
      moduleId: 'rehab-continuum',
      difficulty: 'board',
    ),
  ];
}
