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
          'JIA is the most common chronic rheumatic disease of childhood, with an incidence of 2-20 per 100,000 children per year and a prevalence of 70,000-100,000 in the United States. It is defined as arthritis of unknown etiology beginning before age 16 that persists for at least 6 weeks. The ILAR classification replaced older terminology (JRA, JCA) with 7 mutually exclusive subtypes. F:M ratio is 2-3:1 overall. Pannus formation (proliferative synovitis invading cartilage and bone) is the pathologic hallmark.',
          isIntro: true,
        ),
        PearlBlock(
          'Board Pearl \u2014 ANA in JIA',
          'The ANA is a marker of UVEITIS RISK in JIA, not a marker of disease activity. ANA-positive oligoarticular JIA patients have the highest risk of developing chronic anterior uveitis, which is characteristically asymptomatic and requires screening by slit-lamp examination.',
        ),
        PearlBlock(
          'Board Pearl \u2014 sJIA Pathogenesis',
          'Systemic JIA is an AUTOINFLAMMATORY condition driven by innate immunity and the IL-1/IL-6 axis. This is fundamentally different from other JIA subtypes, which are autoimmune and driven by adaptive immunity and TNF-alpha. This distinction drives treatment selection.',
        ),

        HeaderBlock('ILAR Classification: The Seven Subtypes'),
        TableBlock(
          title: 'ILAR JIA Subtypes \u2014 Master Comparison',
          columns: ['Subtype', '%', 'Sex', 'Age', 'ANA/RF/HLA', 'Uveitis', 'Key Feature'],
          rows: [
            ['Oligoarticular', '50-60%', 'F >> M\n(5:1)', '1-5 yr', 'ANA+ 70-80%\nRF\u2212\nHLA-B27\u2212', 'HIGH\n20-30%', 'Knee most\ncommon;\nbest prognosis'],
            ['RF\u2212 Poly', '15-20%', 'F > M\n(3:1)', 'Biphasic\n1-3 &\n9-14 yr', 'ANA+ 25-40%\nRF\u2212', 'Moderate\n5-10%', 'Symmetric;\nlarge & small\njoints'],
            ['RF+ Poly', '2-7%', 'F >> M\n(9:1)', 'Late\nchild/\nadolescent', 'ANA+ 40-50%\nRF+\nHLA-DR4', 'Low', 'Mimics adult\nRA; erosive;\nworst articular\nprognosis'],
            ['Systemic\n(sJIA)', '10-15%', 'M = F', 'Any\n(peak\n1-5 yr)', 'ANA\u2212\nRF\u2212\nDRB1*11', 'Very\nlow', 'Quotidian fever;\nsalmon rash;\nMAS risk\n10-15%'],
            ['ERA', '5-10%', 'M >> F\n(7:1)', '>6 yr\n(peak\n9-12)', 'ANA\u2212 RF\u2212\nHLA-B27+\n60-80%', 'Moderate\n(acute,\nsympto-\nmatic)', 'Enthesitis;\nsacroiliitis;\nmay progress\nto AS'],
            ['Psoriatic', '5-8%', 'F > M\n(slight)', 'Biphasic\n2-4 &\n9-11 yr', 'ANA+\n(young)\nRF\u2212', 'Moderate\n6-15%', 'Dactylitis;\nnail pitting;\nrash may\nfollow arthritis'],
            ['Undiff.', '10-15%', 'Variable', 'Variable', 'Variable', 'Variable', 'Does not fit\nsingle category\nor meets >1'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        PearlBlock(
          'Board Pearl \u2014 Uveitis Types',
          'Uveitis in oligoarticular/polyarticular JIA is typically anterior, chronic, and ASYMPTOMATIC \u2014 requires screening slit-lamp exams. ERA-associated uveitis is acute, SYMPTOMATIC (red, painful eye), and similar to adult ankylosing spondylitis uveitis. This distinction is a frequent board question.',
        ),

        HeaderBlock('Oligoarticular JIA (Most Common)'),
        BulletCardBlock(
          title: 'Oligoarticular JIA \u2014 Key Features',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            '\u22644 joints affected in first 6 months; most common subtype (50-60%)',
            'Peak onset 1-5 years; F >> M (5:1)',
            'ANA positive in 70-80% \u2014 marker for uveitis risk, NOT disease activity',
            'RF negative; HLA associations: DR8, DR11, DR13, DPw2',
            'Highest uveitis risk of all subtypes (20-30%) \u2014 slit-lamp every 3 months',
            'Persistent form (\u22644 joints throughout): Best prognosis, rarely causes significant joint damage',
            'Extended form (>4 joints after 6 months): Prognosis approaches polyarticular disease',
            'Knee is most commonly affected joint; asymmetric pattern',
          ],
        ),

        HeaderBlock('Polyarticular JIA'),
        BulletCardBlock(
          title: 'RF-Negative Polyarticular (15-20%)',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '\u22655 joints affected in first 6 months; RF negative',
            'F > M (3:1); biphasic onset (1-3 yr and 9-14 yr)',
            'ANA positive in 25-40%; moderate uveitis risk (5-10%)',
            'Symmetric large and small joint involvement; variable course',
            'Cervical spine involvement common',
          ],
        ),
        BulletCardBlock(
          title: 'RF-Positive Polyarticular (2-7%)',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '\u22655 joints affected; RF positive on 2 occasions \u22653 months apart',
            'F >> M (9:1); onset typically late childhood/adolescence',
            'Essentially adult RA occurring in childhood \u2014 same HLA-DR4 association',
            'Symmetric small joint involvement; rheumatoid nodules possible',
            'Aggressive, erosive disease with WORST articular prognosis of all JIA subtypes',
            'ANA positive in 40-50%',
          ],
        ),

        HeaderBlock('Systemic JIA (Still Disease)'),
        BulletCardBlock(
          title: 'Systemic JIA \u2014 Key Features',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Arthritis + quotidian (daily spiking) fever \u22652 weeks; 10-15% of JIA',
            'Equal sex distribution; any age (peak 1-5 yr)',
            'Quotidian fever: 1-2 daily spikes to \u226539\u00b0C with rapid return to baseline or below',
            'Classic salmon-colored evanescent macular rash \u2014 appears during fever, fades between spikes',
            'Hepatosplenomegaly, lymphadenopathy, serositis (pericarditis)',
            'ANA negative, RF negative; HLA-DRB1*11 associated',
            'Elevated ferritin, WBC, platelets, ESR, CRP',
            'Autoinflammatory (innate immunity, IL-1/IL-6 axis) \u2014 NOT autoimmune',
            'MAS risk 10-15% \u2014 life-threatening complication',
          ],
        ),

        HeaderBlock('Psoriatic JIA'),
        BulletCardBlock(
          title: 'Psoriatic JIA \u2014 Key Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Arthritis + psoriasis, OR arthritis + 2 of: dactylitis, nail pitting, psoriasis in first-degree relative',
            'Bimodal onset reflecting two distinct phenotypes',
            'Young onset: Resembles oligoarticular JIA \u2014 F predominance, ANA+, small joint involvement, dactylitis',
            'Older onset: Resembles adult PsA \u2014 equal sex ratio, enthesitis, axial disease, HLA-B27+',
            'Frank psoriasis absent at presentation in ~50% of cases',
            'Nail changes (pitting, onycholysis) present in 50-80%',
            'Dactylitis (sausage digits) is characteristic',
          ],
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
        PearlBlock(
          'Board Pearl \u2014 JIA vs Adult RA',
          'JIA differs from adult RA: JIA = ANA positive, uveitis risk, radial deviation of wrist, large joint involvement, leg-length discrepancy. Adult RA = RF positive, no uveitis, ulnar deviation, small joint predominance.',
        ),
      ],
    ),

    // ============ TAB 2: JIA Management & MAS ============
    TopicTab(
      title: 'JIA Management',
      blocks: [
        HeaderBlock('ACR/Arthritis Foundation 2019 Treatment Guidelines'),
        TextBlock(
          'The 2019 guidelines established a treat-to-target approach with the goal of achieving clinically inactive disease (CID) within 6 months of diagnosis. Stepwise escalation differs between non-systemic and systemic JIA subtypes.',
          isIntro: true,
        ),

        HeaderBlock('Non-Systemic JIA Treatment Ladder'),
        BulletCardBlock(
          title: 'Step 1: NSAIDs + Intra-articular Corticosteroids',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'First-line therapy for all non-systemic JIA subtypes',
            'NSAIDs: 4-6 weeks trial before escalating',
            'Only naproxen, ibuprofen, and tolmetin are FDA-approved for children',
            'Naproxen: 10-20 mg/kg/day divided BID \u2014 most commonly used',
            'Intra-articular corticosteroid injections combined with NSAIDs',
            'Triamcinolone hexacetonide preferred over acetonide (longer duration of effect)',
            'Aspirin rarely used due to Reye syndrome risk',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Approved NSAIDs',
          'Only THREE NSAIDs are FDA-approved for use in children with JIA: naproxen, ibuprofen, and tolmetin. Naproxen can cause pseudoporphyria (photosensitive skin lesions) in fair-skinned children.',
        ),
        BulletCardBlock(
          title: 'Step 2: Conventional DMARDs',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Methotrexate: First-line DMARD; 10-15 mg/m\u00b2/week (oral or subcutaneous)',
            'Leflunomide: Alternative to methotrexate',
            'Sulfasalazine: Alternative; particularly for ERA and oligoarticular JIA',
            'DMARDs take 6-12 weeks for full therapeutic effect',
          ],
        ),
        BulletCardBlock(
          title: 'Step 3: Biologic DMARDs',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'TNF inhibitors are first-line biologics for NON-SYSTEMIC JIA',
            'Further escalation: Abatacept, tocilizumab, tofacitinib for refractory polyarticular disease',
            'Increased infection risk with all biologics',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 sJIA Treatment Difference',
          'TNF inhibitors are first-line biologics for non-systemic JIA, but NOT for systemic JIA. For sJIA, IL-1 inhibitors (anakinra, canakinumab) or IL-6 inhibitors (tocilizumab) are preferred because sJIA is driven by innate immunity and the inflammasome, not by adaptive immune TNF pathways.',
        ),

        HeaderBlock('FDA-Approved Biologics for JIA'),
        TableBlock(
          title: 'Biologic Agents Approved for JIA',
          columns: ['Drug', 'Target', 'Approved Indications'],
          rows: [
            ['Etanercept\n(Enbrel)', 'TNF\n(soluble receptor)', 'Polyarticular JIA\n\u22652 years'],
            ['Adalimumab\n(Humira)', 'TNF\n(monoclonal Ab)', 'Polyarticular JIA\n\u22652 years'],
            ['Golimumab\n(Simponi)', 'TNF\n(monoclonal Ab)', 'Polyarticular JIA\n\u22652 years'],
            ['Abatacept\n(Orencia)', 'T-cell co-stim\n(CTLA-4 Ig)', 'Polyarticular JIA\n\u22652 years'],
            ['Tocilizumab\n(Actemra)', 'IL-6 receptor', 'Polyarticular JIA\nand sJIA \u22652 years'],
            ['Canakinumab\n(Ilaris)', 'IL-1 beta', 'sJIA \u22652 years'],
            ['Anakinra\n(Kineret)', 'IL-1 receptor\nantagonist', 'Approved for NOMID;\nwidely used off-label\nfor sJIA and MAS'],
            ['Tofacitinib\n(Xeljanz)', 'JAK1/3\n(oral small\nmolecule)', 'Polyarticular JIA\n\u22652 years (first JAK\ninhibitor for JIA)'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),

        BulletCardBlock(
          title: 'Corticosteroids in JIA',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Corticosteroids do NOT induce disease remission',
            'Intra-articular: Can suppress synovitis for months; triamcinolone hexacetonide preferred',
            'Systemic: Bridge therapy or severe systemic JIA/MAS only',
            'Long-term risks: Growth suppression, osteoporosis, cushingoid features, cataracts',
          ],
        ),

        HeaderBlock('Wallace Criteria for Clinically Inactive Disease'),
        BulletCardBlock(
          title: 'CID Criteria \u2014 ALL Must Be Met',
          themeColor: const Color(0xFF16A34A),
          backgroundColor: const Color(0xFFF0FDF4),
          points: [
            '1. No active arthritis',
            '2. No fever, rash, serositis, splenomegaly, or generalized lymphadenopathy attributable to JIA',
            '3. No active uveitis',
            '4. Normal ESR and/or CRP',
            '5. Physician global assessment at the best possible score',
            '6. Morning stiffness lasting 15 minutes or less',
          ],
        ),

        HeaderBlock('Uveitis Screening Guidelines'),
        TableBlock(
          title: 'ACR 2019 Uveitis Screening Frequency',
          columns: ['Risk Level', 'Patient Profile', 'Screening'],
          rows: [
            ['High', 'Oligo or RF\u2212 poly;\nANA+; onset <7 yr;\nduration <4 yr', 'Every 3\nmonths'],
            ['Moderate', 'ANA+ with onset\n\u22657 yr or duration\n4-7 yr', 'Every 6\nmonths'],
            ['Low', 'RF+ poly, sJIA,\nERA, psoriatic,\nor duration >7 yr', 'Every 12\nmonths'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl \u2014 Uveitis Screening',
          'Uveitis can develop even after JIA is in remission. Screening should continue as recommended regardless of arthritis disease activity status. Uveitis is the most common extra-articular manifestation of JIA.',
        ),

        HeaderBlock('Macrophage Activation Syndrome (MAS)'),
        TextBlock(
          'MAS is a life-threatening hyperinflammatory complication occurring in 10-15% of sJIA patients with 8-22% mortality. It represents secondary hemophagocytic lymphohistiocytosis (HLH) with uncontrolled CD8+ T cell and macrophage activation. Interferon-gamma is the pivotal cytokine. MAS can be triggered by infections (especially EBV), medication changes, or disease flares.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: '2016 MAS Classification Criteria (Ravelli)',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'In a febrile patient with known or suspected sJIA:',
            'Ferritin >684 ng/mL PLUS any 2 of the following:',
            '\u2022 Platelet count \u2264181,000/uL',
            '\u2022 AST >48 U/L',
            '\u2022 Triglycerides >156 mg/dL',
            '\u2022 Fibrinogen \u2264360 mg/dL',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 MAS Lab Pattern',
          'The paradoxical lab pattern is pathognomonic: ESR may DROP (fibrinogen consumed) while ferritin RISES dramatically (often >10,000 ng/mL), plus falling WBC and platelets. In sJIA flare without MAS, both ESR and ferritin are elevated. This "ESR-ferritin dissociation" is a critical board concept.',
        ),
        BulletCardBlock(
          title: 'MAS Treatment',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'High-dose pulse IV methylprednisolone',
            'Cyclosporine A',
            'Anakinra (IL-1 blockade) \u2014 increasingly used as first-line in sJIA-associated MAS',
            'Etoposide in refractory cases',
          ],
        ),

        HeaderBlock('Rehabilitation in JIA'),
        BulletCardBlock(
          title: 'Rehabilitation Principles',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Maintain joint ROM through daily stretching programs',
            'Strengthening exercises tailored to disease activity (avoid high-impact during flares)',
            'Aquatic therapy: Buoyancy support with resistance; excellent for pain relief',
            'Splinting: Resting splints for acute inflammation, functional splints for activity',
            'Aerobic conditioning to address deconditioning common in chronic arthritis',
            'OT for hand function and joint protection strategies',
            'Address psychosocial impacts: School participation, peer relationships, transition to adult care',
          ],
        ),
        BulletCardBlock(
          title: 'Cervical Spine & TMJ Considerations',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Cervical spine: Risk of atlantoaxial subluxation \u2014 flexion/extension films BEFORE intubation',
            'C2-C3 apophyseal joint fusion most common cervical finding',
            'TMJ involvement \u2192 micrognathia (recessed chin) from growth disturbance',
            'TMJ: Open-bite deformity, difficulty chewing',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Atlantoaxial Subluxation',
          'Cervical spine involvement in JIA can cause atlantoaxial subluxation \u2014 always obtain flexion/extension cervical spine radiographs before general anesthesia or intubation. This is a frequently tested safety concern.',
        ),

        HeaderBlock('Functional Assessment Tools'),
        BulletCardBlock(
          title: 'CHAQ, JADAS, and ACR Pedi Criteria',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'CHAQ (Childhood Health Assessment Questionnaire): 8 domains (dressing, arising, eating, walking, hygiene, reach, grip, activities); scores 0-3',
            'JADAS (Juvenile Arthritis Disease Activity Score): Physician + parent assessment, active joint count, ESR; CID threshold \u22641',
            'ACR Pedi 30/50/70/90: 30-90% improvement in 3 of 6 core set variables with \u22641 worsening >30%',
          ],
        ),
        ScaleBlock(
          scaleName: 'ACR Functional Classification',
          description: 'American College of Rheumatology classification of functional status in arthritis.',
          columns: ['Class', 'Description'],
          rows: [
            ['I', 'Complete functional capacity \u2014 able to perform all usual activities'],
            ['II', 'Adequate for normal activities despite discomfort or limited mobility in one or more joints'],
            ['III', 'Limited to little or none of the duties of usual occupation or self-care'],
            ['IV', 'Incapacitated, largely or wholly \u2014 bedridden or confined to wheelchair, little or no self-care'],
          ],
          boardPearl: 'ACR Functional Classification is used to track disease impact over time. Class I = fully functional. Class IV = bedridden/wheelchair-bound with minimal self-care ability.',
        ),

        TableBlock(
          title: 'JIA Drug Therapy \u2014 Key Side Effects',
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
      ],
    ),

    // ============ TAB 3: JDM, SLE & Other CTD ============
    TopicTab(
      title: 'JDM & SLE',
      blocks: [
        HeaderBlock('Juvenile Dermatomyositis (JDM)'),
        TextBlock(
          'JDM is the most common pediatric inflammatory myopathy (incidence 2-4 per million children per year). Unlike adult dermatomyositis, JDM does NOT carry an increased risk of underlying malignancy.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Bohan & Peter Diagnostic Criteria',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Definite JDM: Characteristic skin rash PLUS 3 of 4 muscle criteria:',
            '1. Symmetric proximal muscle weakness',
            '2. Elevated muscle enzymes (CK, aldolase, AST, LDH)',
            '3. Myopathic EMG (short, small, polyphasic MUPs; fibrillations; positive sharp waves)',
            '4. Muscle biopsy: Inflammation, necrosis, and characteristic perifascicular atrophy',
          ],
        ),
        TableBlock(
          title: 'Hallmark Skin Findings in JDM',
          columns: ['Finding', 'Description'],
          rows: [
            ['Heliotrope rash', 'Violaceous (purple-lilac)\ndiscoloration of upper eyelids\nwith periorbital edema \u2014\nPATHOGNOMONIC'],
            ['Gottron papules', 'Erythematous/violaceous\npapules over MCP, PIP, DIP,\nknees, elbows \u2014\nPATHOGNOMONIC'],
            ['V-sign', 'Photosensitive erythematous\nrash over anterior chest'],
            ['Shawl sign', 'Rash over upper back\nand shoulders'],
            ['Nail fold changes', 'Dilated, tortuous, dropout\ncapillaries; correlate with\ndisease activity'],
          ],
          headerColor: const Color(0xFFF97316),
        ),

        HeaderBlock('Myositis-Specific Antibodies'),
        TableBlock(
          title: 'Myositis-Specific Antibodies in JDM',
          columns: ['Antibody', 'Clinical Association'],
          rows: [
            ['Anti-NXP2\n(anti-p140)', 'Most common Ab in JDM;\ncalcinosis; severe muscle disease'],
            ['Anti-TIF1-gamma\n(anti-p155/140)', 'Severe cutaneous disease;\nphotosensitivity; in adults =\nmalignancy risk'],
            ['Anti-MDA5\n(anti-CADM-140)', 'Rapidly progressive ILD;\namyopathic DM;\nskin ulceration'],
            ['Anti-Mi-2', 'Classic DM;\ngood prognosis'],
            ['Anti-SRP', 'Necrotizing myopathy;\nsevere disease'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        PearlBlock(
          'Board Pearl \u2014 Calcinosis in JDM',
          'Calcinosis (dystrophic calcification in skin, subcutaneous tissue, or muscle) affects 20-40% of JDM patients and is strongly associated with anti-NXP2 antibodies. It is more common when treatment is delayed or inadequately controlled. Lipodystrophy is another distinctive complication.',
        ),
        PearlBlock(
          'Board Pearl \u2014 CMAS',
          'The Childhood Myositis Assessment Scale (CMAS) evaluates 14 maneuvers testing strength, endurance, and function, with scores 0-52 (higher = better function). It is the standard disease activity measure for JDM.',
        ),
        ComparisonCardBlock(
          title: 'Juvenile vs Adult Dermatomyositis',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          icon: Icons.compare_rounded,
          description: 'Critical differences between juvenile and adult dermatomyositis on board exams.',
          keyPoints: [
            'JDM: Histologic VASCULITIS is the hallmark pathologic finding',
            'JDM: Calcinosis common in children, rare in adults',
            'JDM: NO association with underlying malignancy',
            'Adult DM: STRONG association with underlying malignancy (must screen)',
            'JDM: Prognosis is better \u2014 mortality <7%',
            'JDM: Perifascicular atrophy is the characteristic biopsy finding',
            'Treatment: Corticosteroids + methotrexate first-line for both; IVIG for refractory skin disease',
          ],
        ),

        HeaderBlock('Pediatric Systemic Lupus Erythematosus (SLE)'),
        TextBlock(
          'Pediatric SLE accounts for 15-20% of all SLE cases, with peak onset at 12-14 years and F:M ratio 4-5:1. Pediatric SLE is MORE severe than adult-onset disease, with higher rates of nephritis (50-75% vs 25-50%), CNS involvement, and hematologic disease.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: '2019 ACR/EULAR Classification Criteria',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Entry criterion: ANA titer \u22651:80 on HEp-2 cells',
            'Once met, clinical and immunologic domains are scored',
            'Total \u226510 points classifies as SLE',
            'Domains: Constitutional, hematologic, neuropsychiatric, mucocutaneous, serosal, MSK, renal, antiphospholipid, complement, SLE-specific antibodies',
          ],
        ),
        MnemonicBlock(
          'SOAP BRAIN MD \u2014 SLE Criteria',
          'Serositis, Oral ulcers, Arthritis (nonerosive), Photosensitivity, Blood (cytopenia), Renal (nephritis), ANA, Immunologic (anti-dsDNA, anti-Sm, antiphospholipid), Neurologic (seizures/psychosis), Malar rash, Discoid rash.',
        ),

        HeaderBlock('Key SLE Autoantibodies'),
        TableBlock(
          title: 'SLE Autoantibodies \u2014 Board-Critical',
          columns: ['Antibody', 'Significance'],
          rows: [
            ['Anti-dsDNA', 'Most specific for SLE\nactivity monitoring;\ncorrelates with nephritis'],
            ['Anti-Smith', 'Most specific Ab overall\nfor SLE diagnosis\n(but less sensitive)'],
            ['Anti-histone', 'Drug-induced lupus\n(minocycline in adolescents\nmost common cause)'],
            ['Anti-Ro/SSA\nAnti-La/SSB', 'Neonatal lupus;\ncongenital heart block;\nSjogren overlap'],
            ['Antiphospholipid\nAbs', 'Thrombotic risk;\nanticardiolipin,\nanti-beta2-GPI,\nlupus anticoagulant'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl \u2014 Lupus Nephritis',
          'Lupus nephritis is the most significant predictor of morbidity and mortality in pediatric SLE. Class IV (diffuse proliferative) nephritis is the most common and most severe form. Low complement (C3 and C4) correlates with active disease, particularly nephritis.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Drug-Induced Lupus',
          'Drug-induced lupus in adolescents is most commonly caused by minocycline (used for acne). It presents with arthritis, serositis, and anti-histone antibodies but does NOT cause nephritis or CNS disease. Resolves with drug discontinuation.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Antiphospholipid Syndrome',
          'Antiphospholipid syndrome occurs in 20-30% of pediatric SLE and increases the risk of venous and arterial thromboembolism. Hydroxychloroquine is recommended for all SLE patients as it reduces flares, organ damage, and mortality.',
        ),

        HeaderBlock('Scleroderma'),
        BulletCardBlock(
          title: 'Pediatric Scleroderma Types',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Localized scleroderma (morphea): Most common pediatric form; no visceral involvement',
            'Linear scleroderma: Band-like lesion on extremity or face (en coup de sabre)',
            'Systemic sclerosis: Rare in children; Raynaud phenomenon often first symptom',
            'Limited cutaneous: CREST syndrome',
            'Mixed connective tissue disease (MCTD): Features of SLE + scleroderma + myositis; anti-U1 RNP antibodies',
          ],
        ),
        MnemonicBlock(
          'CREST Syndrome',
          'Calcinosis, Raynaud phenomenon, Esophageal dysmotility, Sclerodactyly, Telangiectasia. CREST represents the limited cutaneous form of systemic sclerosis with anti-centromere antibodies.',
        ),
      ],
    ),

    // ============ TAB 4: Spondyloarthropathies ============
    TopicTab(
      title: 'Spondyloarthropathies',
      blocks: [
        HeaderBlock('Juvenile Spondyloarthropathies'),
        TextBlock(
          'The juvenile onset seronegative spondyloarthropathies are characterized by HLA-B27 positivity, RF and ANA negativity, male predominance, and predilection for the lower extremities, spine, and sacroiliac joints. Enthesitis \u2014 inflammation at tendon/ligament insertions \u2014 is the hallmark feature.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Shared Features of Spondyloarthropathies',
          themeColor: const Color(0xFF6366F1),
          backgroundColor: const Color(0xFFEEF2FF),
          points: [
            'HLA-B27 positive',
            'RF negative, ANA negative',
            'Boys > girls',
            'Lower extremity, spine, and SI joint predominance',
            'Enthesitis (inflammation at tendon/ligament insertions into bone)',
            'Family clustering common',
          ],
        ),

        HeaderBlock('Enthesitis-Related Arthritis (ERA)'),
        BulletCardBlock(
          title: 'ERA \u2014 ILAR Criteria and Features',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Defined as: Arthritis and enthesitis, or arthritis or enthesitis + \u22652 of:',
            '\u2022 SI tenderness or lumbosacral pain',
            '\u2022 HLA-B27 positivity',
            '\u2022 Family history of HLA-B27-associated disease',
            '\u2022 Acute symptomatic anterior uveitis',
            '\u2022 Onset in a male >6 years',
            'M >> F (7:1); onset after age 6 (peak 9-12 years)',
            'Achilles tendon insertion and plantar fascia most commonly involved entheses',
            'Large joint arthritis of lower extremities predominates early',
            'Sacroiliitis and axial disease develop later',
            'Significant proportion progress to ankylosing spondylitis in adulthood',
          ],
        ),

        HeaderBlock('Juvenile Ankylosing Spondylitis'),
        BulletCardBlock(
          title: 'JAS \u2014 Key Features',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Incidence: 2 per 100,000',
            'Boys > girls, onset typically >8 years',
            'HLA-B27 positive in 90%',
            'Peripheral joint involvement in 82% at onset',
            'Hips frequently involved early \u2014 hip disease = poor prognosis',
            'Axial symptoms (back pain, sacroiliitis) may develop later',
            'Uveitis in up to 27% \u2014 acute, symptomatic, unilateral',
            'Progressive spinal fusion (bamboo spine) in severe cases',
            'Schober test to assess lumbar spine mobility',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 JAS Presentation',
          'JAS often presents with PERIPHERAL joint disease (especially hips) before axial symptoms develop. Hip disease is the strongest predictor of poor prognosis. Unlike adult AS, spinal symptoms may not appear for years.',
        ),

        HeaderBlock('Reactive Arthritis'),
        BulletCardBlock(
          title: 'Reactive Arthritis \u2014 Key Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Post-infectious spondyloarthropathy triggered by enteric organisms (Salmonella, Shigella, Campylobacter, Yersinia) or urogenital infection (Chlamydia)',
            'Asymmetric oligoarthritis of the lower extremities, often with enthesitis',
            'HLA-B27 associated (60-80%)',
            'Classic triad: Arthritis + conjunctivitis + urethritis',
            'Keratoderma blennorrhagicum (skin lesions on palms/soles)',
            'Self-limited in most cases (weeks to months)',
          ],
        ),
        MnemonicBlock(
          'Reactive Arthritis Triad \u2014 "Can\'t see, can\'t pee, can\'t climb a tree"',
          'Conjunctivitis (can\'t see), Urethritis (can\'t pee), Arthritis (can\'t climb a tree). This classic triad follows a post-infectious trigger, usually GI or GU.',
        ),

        HeaderBlock('IBD-Associated Arthritis'),
        BulletCardBlock(
          title: 'IBD-Associated Arthritis \u2014 Key Features',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Occurs in 10-20% of patients with ulcerative colitis or Crohn disease',
            'No sex predilection (unlike other spondyloarthropathies)',
            'Type 1 (peripheral, pauciarticular): Correlates with bowel disease activity; large joints',
            'Type 2 (axial): Independent of bowel disease activity; sacroiliitis, spondylitis',
            'Erythema nodosum and pyoderma gangrenosum may occur',
            'Treating the underlying IBD often improves peripheral arthritis',
          ],
        ),

        TableBlock(
          title: 'Juvenile Spondyloarthropathies \u2014 Comparison',
          columns: ['Feature', 'Ankylosing\nSpondylitis', 'Reactive\nArthritis', 'IBD-Associated'],
          rows: [
            ['Sex', 'Boys > Girls', 'Boys > Girls', 'Equal'],
            ['HLA-B27', '90%', '60-80%', '50-75% (axial)'],
            ['Joint Pattern', 'Peripheral \u2192\naxial', 'Oligoarthritis\nknee/ankle', 'Peripheral or\naxial'],
            ['Extra-articular', 'Uveitis 27%', 'Conjunctivitis,\nurethritis', 'Erythema\nnodosum'],
            ['Prognosis', 'Hip disease\n= poor', 'Usually\nself-limited', 'Parallels\nbowel disease'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl \u2014 HLA-B27',
          'HLA-B27 is the strongest genetic association in all of rheumatology. It is positive in 90% of JAS, 60-80% of reactive arthritis, and 50-75% of IBD-associated axial arthritis. However, HLA-B27 is NOT diagnostic \u2014 6-8% of the general population is positive.',
        ),
      ],
    ),

    // ============ TAB 5: Infectious Arthritis & Vasculitis ============
    TopicTab(
      title: 'Infections & Vasculitis',
      blocks: [
        HeaderBlock('Septic Arthritis'),
        TextBlock(
          'Septic arthritis is a pediatric emergency with an incidence of 4-10 per 100,000 children per year, peaking in children <3 years. S. aureus is the most common pathogen beyond the neonatal period. Kingella kingae is the most common pathogen in children 6 months to 4 years and may be missed on standard cultures.',
          isIntro: true,
        ),
        BulletCardBlock(
          title: 'Septic Arthritis \u2014 Key Features',
          themeColor: const Color(0xFFF97316),
          backgroundColor: const Color(0xFFFFF7ED),
          points: [
            'Most common in children <3 years; boys > girls',
            'Hematogenous spread most common route',
            'Presentation: Monoarticular, acute onset, hot/swollen/painful joint',
            'Child holds joint in position of maximum capsular volume',
            'Hip and knee most commonly affected',
            'Hip septic arthritis = surgical emergency (risk of femoral head AVN)',
            'Diagnosis: Joint aspiration \u2014 WBC >50,000, >75% PMNs, positive culture',
          ],
        ),
        TableBlock(
          title: 'Septic Arthritis \u2014 Pathogens by Age',
          columns: ['Age Group', 'Most Common Pathogen', 'Notes'],
          rows: [
            ['Newborn', 'S. aureus', 'Also Group B Strep,\ngram-negative rods'],
            ['6 mo - 4 yr', 'Kingella kingae', 'Requires special media\nor PCR; often missed'],
            ['>4 years', 'S. aureus', 'Most common organism\nacross all ages'],
            ['Sexually active\nadolescent', 'N. gonorrhoeae', 'Disseminated GC;\npolyarticular'],
          ],
          headerColor: const Color(0xFFF97316),
        ),

        HeaderBlock('Kocher Criteria'),
        TableBlock(
          title: 'Kocher Criteria \u2014 Septic vs Transient Synovitis',
          columns: ['Criterion', 'Description'],
          rows: [
            ['1. Non-weight-bearing', 'Unable/unwilling\nto bear weight'],
            ['2. ESR >40 mm/hr', 'Elevated inflammatory\nmarker'],
            ['3. Fever >38.5\u00b0C', 'Systemic inflammation'],
            ['4. WBC >12,000/mm\u00b3', 'Leukocytosis'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        TableBlock(
          title: 'Kocher Criteria \u2014 Predicted Probability',
          columns: ['Criteria Present', 'Probability of Septic Arthritis'],
          rows: [
            ['0', '<0.2%'],
            ['1', '3%'],
            ['2', '40%'],
            ['3', '93.1%'],
            ['4', '99.6%'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl \u2014 Septic Hip Emergency',
          'Septic arthritis of the hip is a surgical emergency because elevated intracapsular pressure can compromise the femoral head blood supply, causing AVN. The hip joint is entirely intracapsular, making it uniquely vulnerable. Caird et al. added a 5th criterion: CRP >2.0 mg/dL (strongest independent predictor).',
        ),
        PearlBlock(
          'Board Pearl \u2014 Transient Synovitis',
          'Transient synovitis is the most common cause of acute hip pain in children aged 3-8 years. It is benign, self-limited, and typically follows a viral illness. The Kocher criteria help determine which patients need urgent aspiration vs observation.',
        ),

        HeaderBlock('Lyme Disease'),
        BulletCardBlock(
          title: 'Lyme Disease \u2014 Clinical Stages',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Caused by Borrelia burgdorferi (spirochete); transmitted by Ixodes ticks',
            'Transmission requires 36-48 hours of tick attachment',
            'Estimated 476,000 cases/year in the US',
          ],
        ),
        TableBlock(
          title: 'Lyme Disease \u2014 Clinical Stages',
          columns: ['Stage', 'Timing', 'Key Manifestations'],
          rows: [
            ['Early\nlocalized', '3-30 days\npost-bite', 'Erythema migrans\n(expanding \u22655 cm);\nsingle lesion sufficient\nfor Dx without serology'],
            ['Early\ndisseminated', 'Weeks to\nmonths', 'Multiple EM lesions;\nfacial nerve palsy (may\nbe bilateral \u2014 nearly\npathognomonic); carditis\nwith AV block; meningitis'],
            ['Late', 'Months to\nyears', 'Lyme arthritis (mono/\noligo; knee 90%);\nencephalopathy'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        BulletCardBlock(
          title: 'Two-Tier Serologic Testing',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Step 1: ELISA (screening) \u2014 if positive or equivocal, proceed to:',
            'Step 2: Western blot (confirmatory)',
            'IgM: 2 of 3 specific bands (valid only within first 30 days)',
            'IgG: 5 of 10 specific bands',
            'Modified two-tier testing (two sequential EIAs) FDA-approved in 2019',
            'Serology NOT indicated for erythema migrans \u2014 treat empirically',
            'Serology remains positive for years after treatment \u2014 does NOT indicate persistence',
            'Positive IgM after 30 days is likely false positive',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Lyme Facial Nerve Palsy',
          'Facial nerve palsy in Lyme disease may be bilateral, which is almost pathognomonic for Lyme as a cause. Any child with Bell palsy in a Lyme-endemic area should be tested.',
        ),
        BulletCardBlock(
          title: 'Lyme Treatment',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Early/localized: Doxycycline (\u22658 years) or amoxicillin (<8 years)',
            'Neuroborreliosis or carditis with advanced AV block: IV ceftriaxone',
            'Lyme arthritis: Oral doxycycline or amoxicillin for 28 days; IV ceftriaxone for refractory cases',
          ],
        ),

        HeaderBlock('Acute Rheumatic Fever (ARF)'),
        TextBlock(
          'ARF follows group A streptococcal pharyngitis and can cause permanent cardiac damage. It remains a major cause of acquired heart disease in developing countries.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Revised Jones Criteria (2015)',
          columns: ['Component', 'Low-Risk Pop.', 'Mod/High-Risk Pop.'],
          rows: [
            ['Major\nCriteria', 'Carditis (clinical\nor subclinical echo),\npolyarthritis,\nSydenham chorea,\nerythema marginatum,\nsubcutaneous nodules', 'Same PLUS\nmonoarthritis and\npolyarthralgia\naccepted as major'],
            ['Minor\nCriteria', 'Fever \u226538.5\u00b0C,\npolyarthralgia,\nelevated ESR/CRP,\nprolonged PR', 'Fever \u226538.0\u00b0C,\nmonoarthralgia,\nelevated ESR/CRP,\nprolonged PR'],
            ['Diagnosis', '2 major OR\n1 major + 2 minor', '2 major OR\n1 major + 2 minor'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        MnemonicBlock(
          'Jones Major Criteria \u2014 "JONES"',
          'Joint involvement (migratory polyarthritis), O (carditis \u2014 think "O" for heart), Nodules (subcutaneous), Erythema marginatum, Sydenham chorea. Need 2 major OR 1 major + 2 minor criteria plus evidence of preceding GAS infection.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Carditis in ARF',
          'Carditis is the most serious manifestation. The mitral valve is most commonly affected (MR). Subclinical carditis on Doppler echo is now accepted as a major criterion under the 2015 revision.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Sydenham Chorea',
          'Sydenham chorea may appear 2-6 months after GAS infection and may be the SOLE manifestation of ARF. The arthritis of rheumatic fever is migratory, involves large joints, is exquisitely responsive to aspirin/NSAIDs, and NEVER causes chronic joint damage (unlike JIA).',
        ),
        BulletCardBlock(
          title: 'ARF Antibiotic Prophylaxis',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Penicillin VK 250 mg BID or benzathine penicillin G 1.2 million units IM every 4 weeks',
            'Duration \u2014 No carditis: 5 years',
            'Duration \u2014 Carditis without valve disease: 10 years or until age 21',
            'Duration \u2014 Carditis with persistent valvular disease: 10 years or until age 40',
          ],
        ),

        HeaderBlock('Kawasaki Disease'),
        BulletCardBlock(
          title: 'Kawasaki Disease \u2014 Overview',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'Acute, self-limited vasculitis of medium-sized arteries; primarily affects children <5 years',
            'Leading cause of acquired heart disease in children in developed countries',
            'Highest incidence in Asian descent (~300/100,000 in Japan vs ~25/100,000 in US)',
            'Boys > girls',
          ],
        ),
        BulletCardBlock(
          title: 'Classic Kawasaki \u2014 Fever \u22655 Days + \u22654 of 5 Features',
          themeColor: const Color(0xFFEC4899),
          backgroundColor: const Color(0xFFFDF2F8),
          points: [
            '1. Bilateral bulbar conjunctival injection (non-exudative)',
            '2. Oral mucous membrane changes: Strawberry tongue, cracked erythematous lips',
            '3. Polymorphous exanthem (NOT vesicular)',
            '4. Extremity changes: Acute edema/erythema of hands/feet \u2192 convalescent periungual desquamation',
            '5. Cervical lymphadenopathy (\u22651.5 cm, usually unilateral)',
          ],
        ),
        MnemonicBlock(
          'Kawasaki Criteria \u2014 "CRASH and Burn (with fever)"',
          'Conjunctivitis (bilateral), Rash (polymorphous), Adenopathy (cervical), Strawberry tongue (oral), Hand/foot changes. Burns = the fever that won\'t go away.',
        ),
        BulletCardBlock(
          title: 'Kawasaki Treatment',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'IVIG: 2 g/kg single infusion within 10 days of fever onset',
            'Aspirin: High-dose (80-100 mg/kg/day) during acute phase, then low-dose (3-5 mg/kg/day) for 6-8 weeks',
            'Refractory KD: Second IVIG dose, IV methylprednisolone, or infliximab (anti-TNF)',
            'Echocardiograms at diagnosis, 2 weeks, and 6-8 weeks minimum',
          ],
        ),
        PearlBlock(
          'Board Pearl \u2014 Kawasaki Coronary Risk',
          'Untreated KD results in coronary artery aneurysms in ~25%. IVIG within 10 days reduces this to <5%. Infants <6 months have highest risk and more often present incompletely. Thrombocytosis is characteristic in weeks 2-3 (may exceed 1,000,000). Periungual desquamation occurs in the convalescent phase, NOT acutely.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Aspirin Exceptions in Children',
          'Kawasaki disease and rheumatic fever are the two conditions where aspirin use is appropriate in children despite Reye syndrome risk. In KD, the benefit of preventing coronary aneurysms outweighs the risk.',
        ),
        PearlBlock(
          'Board Pearl \u2014 Incomplete Kawasaki',
          'Incomplete KD should be considered in any child with fever \u22655 days and 2-3 classic features, particularly with supportive labs (CRP \u22653 mg/dL or ESR \u226540) plus \u22653 supplemental criteria, or echocardiographic abnormalities.',
        ),

        HeaderBlock('Hemophilia & Hemarthrosis'),
        BulletCardBlock(
          title: 'Hemophilia \u2014 Key Features',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'X-linked recessive \u2014 affects males',
            'Hemophilia A: Factor VIII deficiency (most common, 80%)',
            'Hemophilia B: Factor IX deficiency (Christmas disease)',
            'Hemarthrosis is the hallmark MSK manifestation',
            'Knee > elbow > ankle most commonly affected',
            'Recurrent hemarthrosis \u2192 chronic synovitis \u2192 arthropathy',
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
          boardPearl: 'Severe hemophilia (<1% factor activity) causes spontaneous hemarthrosis. AVOID aspirin and all platelet-affecting drugs. Factor VIII replacement is the treatment for hemophilia A bleeds. Prophylactic factor replacement prevents joint damage.',
        ),

        HeaderBlock('Board-Critical Summary'),
        TableBlock(
          title: 'Rheumatic Diseases \u2014 Key Comparisons',
          columns: ['Feature', 'Oligo JIA', 'sJIA', 'Kawasaki', 'ARF', 'Septic Arthritis'],
          rows: [
            ['Age', '1-5 yr', 'Any\n(1-5)', '<5 yr', '5-15 yr', 'Any\n(<3 peak)'],
            ['Fever', 'Low/\nabsent', 'Quotidian\nspiking', 'Sustained\n\u22655 days', 'Variable', 'High,\nsustained'],
            ['Rash', 'None', 'Salmon\nevanescent', 'Polymorphous\n(non-vesicular)', 'Erythema\nmarginatum', 'None'],
            ['Joint', 'Asymmetric\noligo', 'Variable', 'Rare', 'Migratory\nlarge joints', 'Mono\n(hip most\ndangerous)'],
            ['Cardiac', 'None', 'Pericarditis', 'Coronary\naneurysm', 'Valvulitis\n(mitral)', 'None'],
            ['Key Lab', 'ANA+', 'Very high\nferritin', 'Thrombo-\ncytosis\n(wk 2-3)', 'ASO titer', 'Synovial\nWBC >50K'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
      ],
    ),
  ],
);
