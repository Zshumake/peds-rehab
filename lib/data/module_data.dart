import 'models/module_model.dart';

class ModuleData {
  static final List<ModuleModel> standardModules = [
    ModuleModel(
      id: 'genetics-chromosomal',
      title: 'Genetics & Chromosomal Abnormalities',
      description: 'Trisomy 21/18/13, Turner, Klinefelter, TORCHES, teratogens, genetic counseling.',
      highlights: ['Trisomy 21', 'TORCHES', 'Teratogens'],
    ),
    ModuleModel(
      id: 'development-growth',
      title: 'Development & Growth',
      description: 'Milestones, primitive reflexes, postural reflexes, bone development, ASD.',
      highlights: ['Milestones', 'Reflexes', 'Red flags'],
    ),
    ModuleModel(
      id: 'limb-deficiencies',
      title: 'Pediatric Limb Deficiencies',
      description: 'Congenital UE/LE deficiency, ISPO classification, prosthetic fitting, PFFD.',
      highlights: ['ISPO', 'Prosthetics', 'PFFD'],
    ),
    ModuleModel(
      id: 'bones-joints',
      title: 'Diseases of the Bones & Joints',
      description: 'Clubfoot, DDH, scoliosis, Legg-Calve-Perthes, SCFE, torticollis, Osgood-Schlatter.',
      highlights: ['DDH', 'Scoliosis', 'Clubfoot'],
    ),
    ModuleModel(
      id: 'connective-tissue',
      title: 'Connective Tissue & Joint Disease',
      description: 'JIA subtypes, SLE, dermatomyositis, rheumatic fever, Kawasaki, hemophilia.',
      highlights: ['JIA', 'SLE', 'Kawasaki'],
    ),
    ModuleModel(
      id: 'pediatric-burns',
      title: 'Pediatric Burns',
      description: 'Burn classification, Lund & Browder, Rule of 9s, positioning, rehab principles.',
      highlights: ['Lund-Browder', 'Positioning', 'Rule of 9s'],
    ),
    ModuleModel(
      id: 'pediatric-cancers',
      title: 'Pediatric Cancers',
      description: 'ALL, brain tumors, osteosarcoma, Ewing sarcoma, neuroblastoma, Wilms tumor.',
      highlights: ['ALL', 'Bone tumors', 'Neuroblastoma'],
    ),
    ModuleModel(
      id: 'pediatric-neurotrauma',
      title: 'Pediatric Neurotrauma',
      description: 'Pediatric TBI, GCS modifications, concussion, abusive head trauma, SCIWORA.',
      highlights: ['Pediatric GCS', 'SCIWORA', 'Concussion'],
    ),
    ModuleModel(
      id: 'cerebral-palsy',
      title: 'Cerebral Palsy',
      description: 'Classification, GMFCS, spasticity management, SDR, hip surveillance, orthotics.',
      highlights: ['GMFCS', 'Spasticity', 'Classification'],
    ),
    ModuleModel(
      id: 'spina-bifida',
      title: 'Spina Bifida',
      description: 'Myelomeningocele, functional levels, Chiari II, latex allergy, orthotic management.',
      highlights: ['Motor levels', 'Chiari II', 'Latex allergy'],
    ),
    ModuleModel(
      id: 'neuromuscular-diseases',
      title: 'Neuromuscular Diseases',
      description: 'DMD, SMA types, CMT, brachial plexus palsy, gene therapy, GBS.',
      highlights: ['DMD', 'SMA', 'Brachial plexus'],
    ),
    ModuleModel(
      id: 'peds-pharmacology',
      title: 'Pediatric Pharmacology',
      description: 'Spasticity meds, JIA drugs, seizure meds, pain management, growth considerations.',
      highlights: ['Baclofen', 'Botox', 'DMARDs'],
    ),
    ModuleModel(
      id: 'orthotics-at',
      title: 'Orthotics & Assistive Technology',
      description: 'AFOs, KAFOs, spinal orthoses, wheelchair seating, powered mobility, gait trainers.',
      highlights: ['AFOs', 'Seating', 'Power mobility'],
    ),
    ModuleModel(
      id: 'rehab-continuum',
      title: 'Rehabilitation Continuum',
      description: 'Early intervention, IDEA law, IEP vs 504, outcome measures, transition planning.',
      highlights: ['IDEA', 'WeeFIM', 'Transition'],
    ),
  ];
}
