import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final connectiveTissueContent = TopicData(
  id: 'connective-tissue',
  title: 'Connective Tissue & Joint Disease',
  tabs: [
    // ============ TAB 1: JIA Subtypes ============
    TopicTab(
      title: 'JIA Subtypes',
      blocks: [
        HeaderBlock('Juvenile Idiopathic Arthritis (JIA)'),
        TextBlock(
          'Juvenile idiopathic arthritis is the most common chronic rheumatic disease of childhood, defined as arthritis persisting for at least 6 weeks with onset before age 16. The ILAR classification recognizes 7 subtypes based on clinical features during the first 6 months of disease.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl — Most Common Subtype',
          'Oligoarticular JIA is the most common subtype (40-50%) AND carries the highest risk of uveitis. These children require slit-lamp examinations every 3-4 months. Uveitis is often asymptomatic and can cause blindness if untreated.',
        ),

        HeaderBlock('1. Oligoarticular JIA (40-50%)'),
        BulletCardBlock(
          title: 'Oligoarticular JIA — Key Features',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            '≤4 joints affected in first 6 months',
            'Most common subtype (40-50% of JIA)',
            'Peak onset 2-4 years, girls >> boys',
            'ANA positive in 70-80% — marker for uveitis risk',
            'RF negative',
            'Highest uveitis risk of all subtypes — slit-lamp every 3-4 months',
            'Extended oligoarticular: >4 joints after 6 months, worse prognosis',
            'Persistent oligoarticular: ≤4 joints throughout, best prognosis',
            'Knees and ankles most commonly affected',
          ],
        ),

        HeaderBlock('2. Polyarticular RF-Negative (18-30%)'),
        BulletCardBlock(
          title: 'Polyarticular RF-Negative — Key Features',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '≥5 joints affected in first 6 months',
            'RF negative, ANA positive in 25%',
            'Girls > boys, bimodal onset (2-4 yr and 6-12 yr)',
            'Symmetric large and small joint involvement',
            'Moderate uveitis risk',
            'Cervical spine involvement common',
          ],
        ),

        HeaderBlock('3. Polyarticular RF-Positive (<5%)'),
        BulletCardBlock(
          title: 'Polyarticular RF-Positive — Key Features',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '≥5 joints affected, RF positive on 2 occasions ≥3 months apart',
            'Least common subtype (<5%)',
            'Girls >> boys, onset typically late childhood/adolescence',
            'Most similar to adult rheumatoid arthritis',
            'Symmetric small joint involvement, rheumatoid nodules',
            'Aggressive, erosive disease with worst joint prognosis',
            'ANA positive in 50-75%',
          ],
        ),

        HeaderBlock('4. Systemic JIA (10%)'),
        BulletCardBlock(
          title: 'Systemic JIA (Still Disease) — Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Arthritis + quotidian (daily spiking) fever ≥2 weeks',
            'Equal sex distribution, any age',
            'Classic salmon-colored evanescent macular rash',
            'Hepatosplenomegaly, lymphadenopathy, serositis',
            'ANA negative, RF negative',
            'Elevated ferritin, WBC, platelets, ESR, CRP',
            'Risk of macrophage activation syndrome (MAS) — life-threatening',
            'MAS: falling WBC/platelets/ESR with rising ferritin = emergency',
            '50% have chronic destructive arthritis',
          ],
        ),
        PearlBlock(
          'Board Pearl — Macrophage Activation Syndrome',
          'MAS is a life-threatening complication of systemic JIA. The paradoxical DROP in ESR with rising ferritin (ferritin may exceed 10,000) plus falling WBC and platelets is the classic board question pattern. MAS resembles hemophagocytic lymphohistiocytosis (HLH).',
        ),

        HeaderBlock('5. Enthesitis-Related Arthritis (15-20%)'),
        BulletCardBlock(
          title: 'Enthesitis-Related Arthritis — Key Features',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Arthritis + enthesitis (inflammation at tendon/ligament insertions)',
            'Boys > girls, onset typically >6 years',
            'HLA-B27 positive in 70-80%',
            'Lower extremity and axial skeleton predominance',
            'Sacroiliitis, may progress to ankylosing spondylitis',
            'Acute anterior uveitis (symptomatic, unlike oligoarticular)',
            'ANA negative, RF negative',
            'Includes juvenile ankylosing spondylitis',
          ],
        ),

        HeaderBlock('6. Psoriatic Arthritis (5-10%)'),
        BulletCardBlock(
          title: 'Psoriatic Arthritis — Key Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Arthritis + psoriasis, OR arthritis + 2 of: dactylitis, nail pitting, psoriasis in first-degree relative',
            'Girls > boys, bimodal onset',
            'Dactylitis (sausage digits) is characteristic',
            'Nail pitting and onycholysis',
            'ANA positive in 50%',
            'RF negative',
            'Asymmetric oligoarthritis or polyarthritis pattern',
          ],
        ),

        HeaderBlock('7. Undifferentiated Arthritis (5%)'),
        BulletCardBlock(
          title: 'Undifferentiated Arthritis — Key Features',
          themeColor: const Color(0xFF6B7280),
          backgroundColor: const Color(0xFFF3F4F6),
          points: [
            'Does not fit criteria for any single subtype',
            'OR fits criteria for more than one subtype',
            'Approximately 5% of JIA cases',
          ],
        ),

        TableBlock(
          title: 'ILAR JIA Subtypes — Comparison',
          columns: ['Subtype', '%', 'Sex', 'ANA/RF', 'Key Feature'],
          rows: [
            ['Oligoarticular', '40-50%', 'F >> M', 'ANA+/RF−', '≤4 joints, highest\nuveitis risk'],
            ['Poly RF−', '18-30%', 'F > M', 'ANA±/RF−', '≥5 joints,\nsymmetric'],
            ['Poly RF+', '<5%', 'F >> M', 'ANA±/RF+', 'Like adult RA,\nworst prognosis'],
            ['Systemic', '10%', 'F = M', 'ANA−/RF−', 'Quotidian fever,\nsalmon rash, MAS'],
            ['Enthesitis-\nrelated', '15-20%', 'M > F', 'ANA−/RF−\nHLA-B27+', 'Enthesitis,\nsacroiliitis'],
            ['Psoriatic', '5-10%', 'F > M', 'ANA±/RF−', 'Dactylitis,\nnail pitting'],
            ['Undifferentiated', '5%', 'Varies', 'Varies', 'Does not fit\nother categories'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),

        PearlBlock(
          'Board Pearl — JIA vs Adult RA',
          'JIA differs from adult RA in key ways: JIA = ANA positive, uveitis risk, radial deviation of wrist, large joint involvement, leg-length discrepancy. Adult RA = RF positive, no uveitis, ulnar deviation, small joint predominance, rheumatoid nodules.',
        ),

        ComparisonCardBlock(
          title: 'JIA vs Adult Rheumatoid Arthritis',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          icon: Icons.compare_arrows_rounded,
          description: 'Key differences frequently tested on boards.',
          keyPoints: [
            'JIA: ANA+, uveitis common, radial deviation at wrist',
            'Adult RA: RF+, no uveitis, ulnar deviation at wrist',
            'JIA: Large joint predominance, leg-length discrepancy',
            'Adult RA: Small joint predominance, rheumatoid nodules common',
            'JIA: Cervical spine fusion, micrognathia from TMJ involvement',
            'Adult RA: Cervical subluxation, symmetric erosive disease',
          ],
        ),
      ],
    ),

    // ============ TAB 2: JIA Management ============
    TopicTab(
      title: 'JIA Management',
      blocks: [
        HeaderBlock('JIA Management Approach'),
        TextBlock(
          'Management of JIA follows a stepwise pyramid approach, combining pharmacologic therapy with comprehensive rehabilitation. The goal is to control inflammation, preserve joint function, prevent deformity, and promote normal growth and development.',
          isIntro: true,
        ),

        HeaderBlock('Pharmacologic Management Pyramid'),
        BulletCardBlock(
          title: 'Step 1: NSAIDs (Base of Pyramid)',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'First-line therapy for all JIA subtypes',
            'Only naproxen, ibuprofen, and tolmetin are FDA-approved for children',
            'Naproxen: 10-20 mg/kg/day divided BID — most commonly used',
            'Therapeutic trial of 4-6 weeks before changing',
            'Aspirin rarely used due to risk of Reye syndrome',
            'NSAIDs reduce pain and inflammation but do not prevent joint damage',
          ],
        ),
        PearlBlock(
          'Board Pearl — Approved NSAIDs',
          'Only THREE NSAIDs are FDA-approved for use in children with JIA: naproxen, ibuprofen, and tolmetin. Aspirin is avoided due to Reye syndrome risk. Naproxen can cause pseudoporphyria (photosensitive skin lesions) in fair-skinned children.',
        ),
        BulletCardBlock(
          title: 'Step 2: DMARDs',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Methotrexate: Gold standard DMARD for JIA, weekly dosing',
            'Sulfasalazine: Used in enthesitis-related and oligoarticular JIA',
            'Hydroxychloroquine: Mild disease, requires ophthalmologic monitoring',
            'Leflunomide: Alternative to methotrexate',
            'DMARDs take 6-12 weeks for full effect',
          ],
        ),
        BulletCardBlock(
          title: 'Step 3: Biologics',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'TNF inhibitors: Etanercept, adalimumab, infliximab',
            'IL-1 inhibitors: Anakinra, canakinumab (especially systemic JIA)',
            'IL-6 inhibitor: Tocilizumab (systemic and polyarticular JIA)',
            'T-cell costimulation blocker: Abatacept',
            'Increased infection risk with all biologics',
          ],
        ),
        BulletCardBlock(
          title: 'Corticosteroids',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Do NOT induce disease remission',
            'Intra-articular corticosteroids: Can suppress synovitis for months',
            'Triamcinolone hexacetonide preferred for IA injection',
            'Systemic corticosteroids: Bridge therapy or severe systemic JIA/MAS',
            'Long-term use: growth suppression, osteoporosis, cushingoid features',
            'Step 4 (Surgery): Synovectomy, joint replacement for refractory disease',
          ],
        ),

        TableBlock(
          title: 'JIA Drug Therapy — Key Side Effects',
          columns: ['Drug', 'Class', 'Key Side Effects'],
          rows: [
            ['Naproxen', 'NSAID', 'GI upset, pseudoporphyria,\nrenal effects'],
            ['Methotrexate', 'DMARD', 'Hepatotoxicity, bone marrow\nsuppression, teratogenic'],
            ['Sulfasalazine', 'DMARD', 'GI upset, rash,\nbone marrow suppression'],
            ['Etanercept', 'Anti-TNF', 'Infection risk, injection\nsite reactions'],
            ['Tocilizumab', 'Anti-IL-6', 'Infection, hepatotoxicity,\nneutropenia'],
            ['Corticosteroids', 'Steroid', 'Growth suppression, osteoporosis,\ncushingoid, cataracts'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),

        HeaderBlock('Rehabilitation in JIA'),
        BulletCardBlock(
          title: 'Rehabilitation Principles',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Rest during acute flares — avoid immobilization >1 week',
            'Splinting: Resting splints for acute inflammation, functional splints for activity',
            'Passive ROM to maintain joint mobility',
            'Active ROM and strengthening as inflammation subsides',
            'Aquatic therapy: Excellent for pain relief and ROM',
            'Adaptive equipment and assistive devices as needed',
            'Functional training for ADLs and school participation',
            'Nutritional support — growth monitoring essential',
            'Psychosocial counseling for chronic disease coping',
          ],
        ),

        HeaderBlock('Joint-Specific Considerations'),
        BulletCardBlock(
          title: 'Cervical Spine & TMJ',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Cervical spine: Risk of atlantoaxial subluxation — flexion/extension films before intubation',
            'C2-C3 apophyseal joint fusion most common cervical finding',
            'TMJ involvement → micrognathia (recessed chin) from growth disturbance',
            'TMJ: Open-bite deformity, difficulty chewing',
          ],
        ),
        PearlBlock(
          'Board Pearl — Atlantoaxial Subluxation',
          'Cervical spine involvement in JIA can cause atlantoaxial subluxation — always obtain flexion/extension cervical spine radiographs before general anesthesia or intubation. This is a frequently tested safety concern.',
        ),
        BulletCardBlock(
          title: 'Upper Extremity Joints',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Shoulder: Loss of IR/abduction first, may need assistive devices',
            'Elbow: Need ≥90° flexion for hand-to-mouth activities',
            'Wrist: Radial deviation in JIA (unlike ulnar deviation in adult RA)',
            'Hand: Swan-neck deformity (PIP hyperextension + DIP flexion)',
            'Hand: Boutonniere deformity (PIP flexion + DIP hyperextension)',
            'Grip strength monitoring for disease activity',
          ],
        ),
        BulletCardBlock(
          title: 'Lower Extremity Joints',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Hip: Involved in 50% of polyarticular JIA — early intervention critical',
            'Hip disease: Flexion contracture, loss of IR/abduction',
            'Knee: Most commonly affected joint in oligoarticular JIA',
            'Knee: Flexion contracture, quadriceps atrophy, leg-length discrepancy',
            'Ankle/foot: Subtalar joint stiffness, valgus deformity',
            'Custom orthotics and supportive footwear often needed',
          ],
        ),

        ScaleBlock(
          scaleName: 'ACR Functional Classification',
          description: 'American College of Rheumatology classification of functional status in arthritis.',
          columns: ['Class', 'Description'],
          rows: [
            ['I', 'Complete functional capacity — able to perform all usual activities'],
            ['II', 'Adequate for normal activities despite discomfort or limited mobility in one or more joints'],
            ['III', 'Limited to little or none of the duties of usual occupation or self-care'],
            ['IV', 'Incapacitated, largely or wholly — bedridden or confined to wheelchair, little or no self-care'],
          ],
          boardPearl: 'ACR Functional Classification is used to track disease impact over time. Class I = fully functional. Class IV = bedridden/wheelchair-bound with minimal self-care ability.',
        ),
      ],
    ),

    // ============ TAB 3: Spondyloarthropathies ============
    TopicTab(
      title: 'Spondyloarthropathies',
      blocks: [
        HeaderBlock('Juvenile Spondyloarthropathies'),
        TextBlock(
          'The juvenile onset seronegative spondyloarthropathies are a group of related conditions characterized by HLA-B27 positivity, RF and ANA negativity, male predominance, and predilection for the lower extremities, spine, and sacroiliac joints.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Shared Features of Spondyloarthropathies',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'HLA-B27 positive',
            'Rheumatoid factor (RF) negative',
            'ANA negative',
            'Boys > girls',
            'Lower extremity, spine, and SI joint predominance',
            'Enthesitis (inflammation at tendon/ligament insertions)',
            'Family clustering common',
          ],
        ),

        HeaderBlock('1. Juvenile Ankylosing Spondylitis'),
        BulletCardBlock(
          title: 'Juvenile Ankylosing Spondylitis — Key Features',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Incidence: 2 per 100,000',
            'Boys > girls, onset typically >8 years',
            'HLA-B27 positive in 90%',
            'Peripheral joint involvement in 82% at onset',
            'Hips frequently involved early — hip disease = poor prognosis',
            'Axial symptoms (back pain, sacroiliitis) may develop later',
            'Uveitis in up to 27% — acute, symptomatic, unilateral',
            'Progressive spinal fusion (bamboo spine) in severe cases',
            'Schober test to assess lumbar spine mobility',
          ],
        ),
        PearlBlock(
          'Board Pearl — JAS Presentation',
          'Juvenile ankylosing spondylitis often presents with PERIPHERAL joint disease (especially hips) before axial symptoms develop. Hip disease is the strongest predictor of poor prognosis. Unlike adult AS, spinal symptoms may not appear for years.',
        ),

        HeaderBlock('2. Reactive Arthritis (Reiter Syndrome)'),
        BulletCardBlock(
          title: 'Reactive Arthritis — Key Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Classic triad: Arthritis + conjunctivitis + urethritis (or GI symptoms)',
            'Boys > girls, onset typically >8 years',
            'Post-infectious: Follows GI (Shigella, Salmonella, Yersinia, Campylobacter) or GU infection (Chlamydia)',
            'Oligoarthritis pattern — knees and ankles most common',
            'HLA-B27 positive in 60-80%',
            'Self-limited in most cases (weeks to months)',
            'Keratoderma blennorrhagicum (skin lesions on palms/soles)',
            'Circinate balanitis',
          ],
        ),
        MnemonicBlock(
          'Reiter Syndrome Triad — "Can\'t see, can\'t pee, can\'t climb a tree"',
          'Conjunctivitis (can\'t see), Urethritis (can\'t pee), Arthritis (can\'t climb a tree). This classic triad follows a post-infectious trigger, usually GI or GU.',
        ),

        HeaderBlock('3. IBD-Associated Arthritis'),
        BulletCardBlock(
          title: 'IBD-Associated Arthritis — Key Features',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Occurs in 10-20% of patients with ulcerative colitis or Crohn disease',
            'No sex predilection (unlike other spondyloarthropathies)',
            'Two patterns: Type 1 (peripheral, pauciarticular, correlates with bowel disease activity)',
            'Type 2 (axial, independent of bowel disease activity)',
            'Peripheral arthritis: Large joints, knees, ankles — parallels GI flares',
            'Axial arthritis: Sacroiliitis, spondylitis — independent of GI activity',
            'Erythema nodosum and pyoderma gangrenosum may occur',
            'Treating the underlying IBD often improves peripheral arthritis',
          ],
        ),

        TableBlock(
          title: 'Juvenile Spondyloarthropathies — Comparison',
          columns: ['Feature', 'Ankylosing\nSpondylitis', 'Reactive\nArthritis', 'IBD-Associated'],
          rows: [
            ['Incidence', '2/100,000', 'Post-infectious', '10-20% of IBD'],
            ['Sex', 'Boys > Girls', 'Boys > Girls', 'Equal'],
            ['HLA-B27', '90%', '60-80%', '50-75% (axial)'],
            ['Joint Pattern', 'Peripheral →\naxial', 'Oligoarthritis\nknee/ankle', 'Peripheral or\naxial'],
            ['Extra-articular', 'Uveitis 27%', 'Conjunctivitis,\nurethritis', 'Erythema\nnodosum'],
            ['Prognosis', 'Hip disease\n= poor', 'Usually\nself-limited', 'Parallels\nbowel disease'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl — HLA-B27',
          'HLA-B27 is the strongest genetic association in all of rheumatology. It is positive in 90% of juvenile AS, 60-80% of reactive arthritis, and 50-75% of IBD-associated axial arthritis. However, HLA-B27 is NOT diagnostic — 6-8% of the general population is positive.',
        ),
      ],
    ),

    // ============ TAB 4: SLE & Other ============
    TopicTab(
      title: 'SLE & Other',
      blocks: [
        HeaderBlock('Systemic Lupus Erythematosus (SLE)'),
        TextBlock(
          'SLE is a chronic multisystem autoimmune disease with an incidence of 0.5-0.6 per 100,000 children. Approximately 20% of SLE cases begin in childhood, usually after age 8. Diagnosis requires meeting 4 of 11 ACR classification criteria.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'SLE — Epidemiology & Diagnosis',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Incidence: 0.5-0.6 per 100,000; 20% begin in childhood',
            'Female:Male ratio = 4.5:1',
            'Higher incidence in African American, Hispanic, Asian populations',
            'Diagnosis: 4 of 11 ACR criteria (serially or simultaneously)',
            'ANA positive in >95% (sensitive but not specific)',
            'Anti-dsDNA antibodies: Specific for SLE, correlate with disease activity',
            'Anti-Smith antibodies: Most specific for SLE',
          ],
        ),

        HeaderBlock('11 ACR Criteria for SLE Diagnosis'),
        MnemonicBlock(
          'SOAP BRAIN MD — SLE Criteria',
          'Serositis, Oral ulcers, Arthritis (nonerosive), Photosensitivity, Blood (cytopenia), Renal (nephritis), ANA, Immunologic (anti-dsDNA, anti-Sm, antiphospholipid), Neurologic (encephalopathy/seizures), Malar rash, Discoid rash',
        ),
        BulletCardBlock(
          title: '11 ACR Classification Criteria',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '1. Malar (butterfly) rash — spares nasolabial folds',
            '2. Discoid rash — raised patches with keratotic scaling',
            '3. Photosensitivity — skin rash from UV light exposure',
            '4. Oral ulcers — usually painless',
            '5. Nonerosive arthritis — ≥2 peripheral joints',
            '6. Nephritis — proteinuria >0.5 g/day or cellular casts',
            '7. Encephalopathy — seizures or psychosis',
            '8. Pleuritis or pericarditis (serositis)',
            '9. Cytopenia — hemolytic anemia, leukopenia, lymphopenia, or thrombocytopenia',
            '10. Immunoserology — anti-dsDNA, anti-Sm, or antiphospholipid antibodies',
            '11. ANA positive',
          ],
        ),
        PearlBlock(
          'Board Pearl — Lupus Nephritis',
          'Nephritis occurs in up to 75% of childhood SLE and is the primary determinant of outcome. WHO Class IV (diffuse proliferative glomerulonephritis) is the most common and most severe form. Monitor with urinalysis, serum creatinine, and complement levels (C3/C4).',
        ),
        PearlBlock(
          'Board Pearl — SLE Prognosis',
          '10-year survival in childhood SLE is now >80% with modern treatment. Renal disease and infection are the leading causes of morbidity and mortality. Drug-induced lupus (hydralazine, procainamide, isoniazid) is anti-histone antibody positive and spares kidneys.',
        ),

        HeaderBlock('Juvenile Dermatomyositis (JDM)'),
        BulletCardBlock(
          title: 'JDM — Key Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Proximal muscle weakness + characteristic skin rash',
            'Onset typically 5-14 years, girls > boys',
            'Heliotrope rash: Violaceous (purple) discoloration of eyelids',
            'Gottron papules: Erythematous raised lesions over MCP/PIP/DIP joints',
            'Symmetric proximal weakness: Difficulty climbing stairs, rising from floor',
            'Elevated CK, aldolase, LDH, AST — CK most reliable',
            'EMG: Myopathic pattern (short, small, polyphasic motor unit potentials)',
            'MRI increasingly used instead of muscle biopsy',
          ],
        ),
        ComparisonCardBlock(
          title: 'Juvenile vs Adult Dermatomyositis',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          icon: Icons.compare_rounded,
          description: 'Critical differences between juvenile and adult dermatomyositis on board exams.',
          keyPoints: [
            'JDM: Histologic vasculitis is the hallmark pathologic finding',
            'JDM: Calcinosis (calcium deposits in skin/muscle) — common in children, rare in adults',
            'JDM: NO association with underlying malignancy',
            'Adult DM: Strong association with underlying malignancy (must screen)',
            'JDM: Prognosis is better — mortality <7%',
            'Adult DM: Higher mortality, especially with malignancy',
            'Treatment: Corticosteroids are first-line for both',
          ],
        ),
        PearlBlock(
          'Board Pearl — JDM vs Adult DM',
          'The key board distinction: Juvenile DM has NO malignancy association but DOES have vasculitis and calcinosis. Adult DM has a STRONG malignancy association. Both feature heliotrope rash and Gottron papules. Calcinosis is almost exclusively a pediatric finding.',
        ),

        HeaderBlock('Scleroderma'),
        BulletCardBlock(
          title: 'Pediatric Scleroderma Types',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Localized scleroderma (morphea): Most common pediatric form',
            'Morphea: Circumscribed plaques of skin thickening, no visceral involvement',
            'Linear scleroderma: Band-like lesion on extremity or face (en coup de sabre)',
            'Systemic sclerosis: Rare in children, Raynaud phenomenon often first symptom',
            'Diffuse cutaneous: Widespread skin thickening, early visceral disease',
            'Limited cutaneous: CREST syndrome',
            'Overlap syndromes: Mixed connective tissue disease (MCTD)',
            'MCTD: Features of SLE + scleroderma + myositis, anti-U1 RNP antibodies',
          ],
        ),
        MnemonicBlock(
          'CREST Syndrome',
          'Calcinosis, Raynaud phenomenon, Esophageal dysmotility, Sclerodactyly, Telangiectasia. CREST represents the limited cutaneous form of systemic sclerosis with anti-centromere antibodies.',
        ),
      ],
    ),

    // ============ TAB 5: Infectious Arthritis ============
    TopicTab(
      title: 'Infectious Arthritis',
      blocks: [
        HeaderBlock('Lyme Disease'),
        TextBlock(
          'Infectious causes of arthritis in children include Lyme disease, rheumatic fever, septic arthritis, hemophilia-related hemarthrosis, and Kawasaki disease. Recognition and timely treatment are essential to prevent joint damage and systemic complications.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Lyme Disease — Key Features',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Causative agent: Borrelia burgdorferi (spirochete)',
            'Vector: Ixodes tick (deer tick)',
            'Incidence: 5.2 per 100,000; endemic in Northeast/Upper Midwest US',
            'Stage 1 (Early localized): Erythema migrans (expanding bull\'s-eye rash) — pathognomonic',
            'Stage 2 (Early disseminated): Carditis (5-10%), Bell palsy (more common in children than adults), meningitis',
            'Stage 3 (Late): Arthritis (large joints, especially knee), chronic neurologic disease',
            'Bell palsy in an endemic area — think Lyme disease',
          ],
        ),
        BulletCardBlock(
          title: 'Lyme Disease — Treatment',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Early disease: Doxycycline (>8 years) or amoxicillin (<8 years) × 14-21 days',
            'Doxycycline also covers co-infections (Ehrlichia, Anaplasma)',
            'Late disease/carditis/neurologic: IV ceftriaxone × 14-28 days',
            'Arthritis: Oral antibiotics first, IV if refractory',
            'Diagnosis: Two-tier testing (ELISA screening → Western blot confirmation)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Lyme Disease in Children',
          'Bell palsy (facial nerve palsy) is MORE common in children with Lyme disease than in adults. Any child with Bell palsy in a Lyme-endemic area should be tested. Erythema migrans is pathognomonic and does not require serologic confirmation to initiate treatment.',
        ),

        HeaderBlock('Rheumatic Fever'),
        BulletCardBlock(
          title: 'Rheumatic Fever — Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Post-streptococcal inflammatory disease (Group A Strep pharyngitis)',
            'Onset typically >4 years of age',
            'Diagnosis: Jones Criteria — 2 major OR 1 major + 2 minor criteria',
            'PLUS evidence of preceding strep infection (ASO titer, throat culture)',
            'Arthritis: Migratory polyarthritis — most common major criterion',
            'Arthritis resolves without permanent joint damage',
            'Cardiac involvement determines long-term prognosis',
            'Mitral valve most commonly affected',
          ],
        ),
        MnemonicBlock(
          'Jones Major Criteria — "JONES"',
          'Joint involvement (migratory polyarthritis), O (carditis — think "O" for heart), Nodules (subcutaneous), Erythema marginatum, Sydenham chorea. Need 2 major OR 1 major + 2 minor criteria for diagnosis.',
        ),
        BulletCardBlock(
          title: 'Jones Criteria Details',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'MAJOR: Carditis (40-50%), polyarthritis (75%), chorea (15%), erythema marginatum (<6%), subcutaneous nodules (rare)',
            'MINOR: Fever, arthralgia (cannot use if arthritis is a major), elevated ESR/CRP, prolonged PR interval',
            'Sydenham chorea: May appear months after infection, involuntary purposeless movements',
            'Erythema marginatum: Nonpruritic, pink serpiginous rash on trunk',
            'Subcutaneous nodules: Firm, painless, over bony prominences',
            'Treatment: Penicillin (acute), long-term penicillin prophylaxis to prevent recurrence',
          ],
        ),
        PearlBlock(
          'Board Pearl — Rheumatic Fever Prognosis',
          'Arthritis in rheumatic fever is self-limited and does NOT cause permanent joint damage. Cardiac involvement (especially mitral valve disease) is the major determinant of long-term outcome. Prophylactic penicillin prevents recurrent strep and further cardiac damage.',
        ),

        HeaderBlock('Septic Arthritis'),
        BulletCardBlock(
          title: 'Septic Arthritis — Key Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Most common in children <2 years, boys > girls',
            'Route: Hematogenous spread most common',
            'Presentation: Monoarticular, acute onset, hot/swollen/painful joint',
            'Child holds joint in position of maximum capsular volume',
            'Hip and knee most commonly affected in children',
            'Emergency: Hip septic arthritis requires urgent surgical drainage',
            'Diagnosis: Joint aspiration — WBC >50,000, >75% PMNs, positive culture',
          ],
        ),
        TableBlock(
          title: 'Septic Arthritis — Pathogens by Age',
          columns: ['Age Group', 'Most Common Pathogen', 'Notes'],
          rows: [
            ['Newborn', 'S. aureus', 'Also Group B Strep,\ngram-negative rods'],
            ['2 months -\n2 years', 'H. influenzae\n(if unvaccinated)', 'S. aureus also\ncommon; Hib vaccine\nhas reduced incidence'],
            ['>2 years', 'S. aureus', 'Most common organism\nacross all ages'],
            ['Sexually active\nadolescent', 'N. gonorrhoeae', 'Disseminated gonococcal\ninfection; polyarticular'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        PearlBlock(
          'Board Pearl — Septic Hip',
          'Septic arthritis of the hip is an orthopedic emergency. The hip is held in flexion, abduction, and external rotation (position of maximum capsular volume). Kocher criteria help distinguish septic hip from transient synovitis: fever >38.5°C, non-weight-bearing, ESR >40, WBC >12,000.',
        ),

        HeaderBlock('Hemophilia & Hemarthrosis'),
        BulletCardBlock(
          title: 'Hemophilia — Key Features',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'X-linked recessive inheritance — affects males',
            'Hemophilia A: Factor VIII deficiency (most common, 80%)',
            'Hemophilia B: Factor IX deficiency (Christmas disease)',
            'Hemophilia C: Factor XI deficiency (autosomal recessive)',
            'Hemarthrosis is the hallmark musculoskeletal manifestation',
            'Knee > elbow > ankle most commonly affected joints',
            'Recurrent hemarthrosis → chronic synovitis → arthropathy',
          ],
        ),
        ScaleBlock(
          scaleName: 'Hemophilia Severity Classification',
          description: 'Severity is based on baseline factor activity level and correlates with bleeding risk.',
          columns: ['Severity', 'Factor Activity', 'Bleeding Pattern'],
          rows: [
            ['Mild', '>5% (5-40%)', 'Bleeding with major trauma\nor surgery only'],
            ['Moderate', '1-5%', 'Bleeding with minor trauma,\noccasional spontaneous'],
            ['Severe', '<1%', 'Spontaneous bleeding,\nfrequent hemarthrosis'],
          ],
          boardPearl: 'Severe hemophilia (<1% factor activity) causes spontaneous hemarthrosis. Avoid aspirin and all platelet-affecting drugs. Factor VIII replacement is the treatment for hemophilia A bleeds.',
        ),
        BulletCardBlock(
          title: 'Hemophilia Management',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'AVOID aspirin, NSAIDs, and all platelet-affecting drugs',
            'Factor VIII replacement for hemophilia A bleeding episodes',
            'Factor IX replacement for hemophilia B bleeding episodes',
            'RICE (Rest, Ice, Compression, Elevation) for acute hemarthrosis',
            'Prophylactic factor replacement to prevent joint damage',
            'Synovectomy (radiosynovectomy or surgical) for chronic synovitis',
            'Physical therapy: ROM exercises, strengthening, joint protection',
            'Avoid contact sports; swimming and cycling are safe alternatives',
          ],
        ),

        HeaderBlock('Kawasaki Disease'),
        BulletCardBlock(
          title: 'Kawasaki Disease — Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Systemic vasculitis of medium-sized arteries',
            'Incidence: 6-7.6 per 100,000; 80% occur in children <4 years',
            'Boys > girls; higher incidence in Asian populations',
            'Diagnosis: Fever ≥5 days PLUS ≥4 of 5 clinical criteria',
            'Coronary artery aneurysms: Most serious complication (20-25% untreated)',
            'Leading cause of acquired heart disease in children in developed countries',
            'Treatment: IVIG (2 g/kg single dose) + high-dose aspirin',
            'Aspirin: High-dose (anti-inflammatory) → low-dose (antiplatelet) after fever resolves',
          ],
        ),
        BulletCardBlock(
          title: 'Kawasaki Diagnostic Criteria (4 of 5 Required)',
          themeColor: const Color(0xFFEC4899),
          backgroundColor: const Color(0xFFFDF2F8),
          points: [
            '1. Bilateral nonexudative conjunctival injection',
            '2. Oral mucous membrane changes: Strawberry tongue, cracked/fissured lips',
            '3. Polymorphous rash (nonvesicular)',
            '4. Extremity changes: Erythema/edema of hands and feet → periungual desquamation',
            '5. Cervical lymphadenopathy (≥1.5 cm, usually unilateral)',
          ],
        ),
        MnemonicBlock(
          'Kawasaki Criteria — "CRASH and Burn (with fever)"',
          'Conjunctivitis (bilateral), Rash (polymorphous), Adenopathy (cervical), Strawberry tongue (oral changes), Hand/foot changes (extremity). Plus fever ≥5 days. Burns = the fever that won\'t go away.',
        ),
        PearlBlock(
          'Board Pearl — Kawasaki Disease',
          'Kawasaki disease is the leading cause of acquired heart disease in children in developed countries. IVIG within 10 days of fever onset reduces coronary aneurysm risk from 20-25% to <5%. This is one of the FEW indications for aspirin use in children (Reye syndrome risk is outweighed by benefit).',
        ),
        PearlBlock(
          'Board Pearl — Aspirin Exception',
          'Kawasaki disease and juvenile rheumatic fever are the two conditions where aspirin use is still considered appropriate in children despite Reye syndrome risk. In Kawasaki, the benefit of preventing coronary artery aneurysms outweighs the risk.',
        ),
      ],
    ),
  ],
);
