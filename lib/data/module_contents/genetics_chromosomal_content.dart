import 'package:flutter/material.dart';
import '../models/topic_content_model.dart';

final geneticsChromosomalContent = TopicData(
  id: 'genetics-chromosomal',
  title: 'Genetics & Chromosomal Abnormalities',
  tabs: [
    // ============ TAB 1: Trisomies ============
    TopicTab(
      title: 'Trisomies',
      blocks: [
        HeaderBlock('Trisomy 21 — Down Syndrome'),
        TextBlock(
          'Down syndrome is the most common chromosomal cause of intellectual disability, occurring in approximately 1 in 700 live births. Approximately 95% result from nondisjunction (full trisomy 21), 3-4% from Robertsonian translocation (most commonly between chromosomes 14 and 21), and 1-2% are mosaic. Risk increases exponentially with maternal age.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Down Syndrome — Maternal Age Risk',
          columns: ['Maternal Age', 'Risk'],
          rows: [
            ['20 years', '~1 in 1,500'],
            ['35 years', '~1 in 350'],
            ['40 years', '~1 in 100'],
            ['45 years', '~1 in 25'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        BulletCardBlock(
          title: 'Cardinal Clinical Features',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'Hypotonia: Present in nearly 100% of neonates (central hypotonia)',
            'Upslanting palpebral fissures, epicanthal folds, flat nasal bridge',
            'Brushfield spots: White speckles on iris periphery (38-60%)',
            'Single palmar crease (simian crease): ~45%',
            'Sandal gap: Wide space between first and second toes',
            'Protruding tongue, small ears',
            'Intellectual disability: Average IQ 40-55 (moderate range)',
            'Life expectancy: ~60 years (up from ~25 years in 1983)',
          ],
        ),
        PearlBlock(
          'Board Pearl — Cardiac Disease',
          'Congenital heart disease occurs in 40-50% of individuals with Down syndrome. The atrioventricular septal defect (endocardial cushion defect) is the MOST COMMON cardiac lesion (40-45%) and is the classic board association. Echocardiography is recommended in ALL newborns with Down syndrome regardless of murmur.',
        ),
        TableBlock(
          title: 'Down Syndrome — Cardiac Defect Distribution',
          columns: ['Cardiac Defect', 'Prevalence'],
          rows: [
            ['AVSD (endocardial cushion defect)', '40-45% (most common)'],
            ['Ventricular septal defect (VSD)', '~35%'],
            ['Atrial septal defect (ASD)', '~8%'],
            ['Patent ductus arteriosus (PDA)', '~7%'],
            ['Tetralogy of Fallot (TOF)', '~4%'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        TableBlock(
          title: 'AAP Health Supervision Guidelines (Bull et al., 2022)',
          columns: ['Screening', 'Schedule'],
          rows: [
            ['Cardiac', 'Echocardiogram in ALL newborns'],
            ['Thyroid', 'TSH at birth, 6 mo, 12 mo, then annually'],
            ['Hearing', 'ABR at birth; audiologic eval q6mo until age 3, then annually'],
            ['Vision', 'Ophthalmologic eval by 6 mo, then annually'],
            ['Cervical spine', 'Lateral C-spine radiographs (flex/ext + neutral) ages 3-5'],
            ['Hematology', 'CBC at birth (polycythemia, TMD in ~10%)'],
            ['Celiac disease', 'tTG IgA starting at age 2'],
            ['Sleep', 'Polysomnography by age 4 (OSA in 50-75%)'],
            ['Growth', 'DS-specific growth charts'],
            ['Bone density', 'DEXA screening for osteoporosis (2022 addition)'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        TableBlock(
          title: 'Down Syndrome — Associated Medical Conditions',
          columns: ['Condition', 'Prevalence'],
          rows: [
            ['Hearing loss (conductive, SN, or mixed)', '75%'],
            ['Obstructive sleep apnea', '50-75%'],
            ['Hypothyroidism', '15-20%'],
            ['Atlantoaxial instability (radiographic)', '10-30% (symptomatic: 1-2%)'],
            ['Leukemia risk (ALL and AMKL)', '10-30x increased'],
            ['Transient myeloproliferative disorder', '~10%'],
            ['Celiac disease', '5-16%'],
            ['Duodenal atresia', '~5%'],
            ['Hirschsprung disease', '2-15x increased risk'],
            ['Alzheimer disease (by age 60)', '50-70%'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        PearlBlock(
          'Board Pearl — Atlantoaxial Instability',
          'ADI >4.5 mm on flexion-extension radiographs defines radiographic AAI. Special Olympics requires screening cervical spine films before high-risk sports. Clinical monitoring for myelopathic signs (hyperreflexia, clonus, gait changes, neck pain, torticollis) is more important than radiographic measurements.',
        ),
        PearlBlock(
          'Board Pearl — Duodenal Atresia',
          'The duodenal atresia association produces the classic "double bubble sign" on abdominal radiograph. Approximately 30% of infants with duodenal atresia have Down syndrome.',
        ),
        MnemonicBlock(
          'DANISH — Down Syndrome Features',
          'Duodenal atresia, Atlantoaxial instability, Nuchal translucency, Intellectual disability, Single palmar crease, Heart defects (endocardial cushion)',
        ),

        HeaderBlock('Trisomy 18 — Edwards Syndrome'),
        TextBlock(
          'Occurs in approximately 1 in 5,000 to 8,000 live births with a female predominance of 3:1. Prognosis is grave: 50% die within the first week, 90% by age 1 year.',
        ),
        TableBlock(
          title: 'Trisomy 18 — Cardinal Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['Overlapping fingers', 'Index over 3rd, 5th over 4th (pathognomonic)'],
            ['Clenched fists', 'Persistent'],
            ['Rocker-bottom feet', 'Convex sole with prominent calcaneus'],
            ['Prominent occiput', 'Dolichocephaly'],
            ['Micrognathia', 'Small jaw'],
            ['Low-set ears', 'Posteriorly rotated'],
            ['Cardiac defects', '>90% (VSD, PDA most common)'],
            ['Growth restriction', 'Severe prenatal and postnatal'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        PearlBlock(
          'Board Pearl — Trisomy 18',
          'The combination of overlapping fingers (index over third, fifth over fourth) with clenched fists and rocker-bottom feet in a growth-restricted neonate should immediately raise suspicion for trisomy 18.',
        ),

        HeaderBlock('Trisomy 13 — Patau Syndrome'),
        TextBlock(
          'Occurs in approximately 1 in 10,000 to 16,000 live births. Median survival is 7-10 days, with 90% dying within the first year.',
        ),
        TableBlock(
          title: 'Trisomy 13 — Cardinal Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['Holoprosencephaly', 'Failure of prosencephalon to divide'],
            ['Postaxial polydactyly', 'Extra digits on ulnar/fibular side'],
            ['Cutis aplasia', 'Midline scalp defect'],
            ['Microphthalmia/cyclopia', 'In severe holoprosencephaly'],
            ['Cleft lip and palate', 'Midline or bilateral'],
            ['Cardiac defects', '80%'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        PearlBlock(
          'Board Pearl — Trisomy 13 vs 18',
          'Trisomy 13 is distinguished from trisomy 18 by MIDLINE defects: holoprosencephaly, midline cleft lip, and scalp defects (cutis aplasia) combined with postaxial polydactyly. Trisomy 18 features hand and foot deformities (overlapping fingers, rocker-bottom feet) WITHOUT midline brain defects.',
        ),
      ],
    ),

    // ============ TAB 2: Sex Chromosome & Imprinting ============
    TopicTab(
      title: 'Sex Chromosomes',
      blocks: [
        HeaderBlock('Turner Syndrome (45,X)'),
        TextBlock(
          'Turner syndrome affects approximately 1 in 2,000-2,500 live female births. It is the most common sex chromosome abnormality in females. Remarkably, 99% of 45,X conceptions result in spontaneous abortion.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Turner Syndrome — Cardinal Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['Short stature', 'Near-universal; mean adult height 147 cm; SHOX gene haploinsufficiency'],
            ['Webbed neck (pterygium colli)', 'Classic feature'],
            ['Shield chest', 'Broad with widely spaced, inverted nipples'],
            ['Neonatal lymphedema', 'Puffy hands and feet at birth'],
            ['Streak ovaries', 'Primary amenorrhea, infertility ~90%'],
            ['Renal anomalies', '~30% (horseshoe kidney ~10%)'],
            ['Cystic hygroma', 'Detected prenatally on ultrasound'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        TableBlock(
          title: 'Turner Syndrome — Cardiovascular',
          columns: ['Cardiac Finding', 'Prevalence'],
          rows: [
            ['Bicuspid aortic valve', '15-30% (MOST common cardiac defect)'],
            ['Coarctation of the aorta', '7-18% (classic board association)'],
            ['Overall cardiac defects', '25-45%'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
        BulletCardBlock(
          title: 'Turner Cognitive Profile & Management',
          themeColor: const Color(0xFF0D9488),
          backgroundColor: const Color(0xFFF0FDFA),
          points: [
            'Intelligence is generally NORMAL',
            'Nonverbal learning disability with visuospatial processing deficits',
            'Verbal skills stronger than performance (spatial) skills',
            'Growth hormone therapy: FDA-approved; improves adult height ~5-8 cm',
            'Estrogen replacement: Initiated at age 12-13 for secondary sexual characteristics',
          ],
        ),
        PearlBlock(
          'Board Pearl — Turner Cardiac',
          'Turner syndrome is classically associated with coarctation of the aorta on board examinations, but bicuspid aortic valve is actually MORE prevalent. Intelligence is typically normal, but visuospatial deficits are characteristic.',
        ),

        HeaderBlock('Klinefelter Syndrome (47,XXY)'),
        TextBlock(
          'Occurs in approximately 1 in 500-1,000 live male births. Despite this prevalence, approximately 75% remain undiagnosed, often until puberty or infertility evaluation.',
        ),
        TableBlock(
          title: 'Klinefelter Syndrome — Cardinal Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['Tall stature', 'Long limbs, eunuchoid body habitus'],
            ['Gynecomastia', '40-75%; breast cancer risk 20x general male population'],
            ['Small, firm testes', 'Testicular failure; azoospermia and infertility'],
            ['Hypogonadism', 'Low testosterone; replacement from adolescence'],
            ['Cognitive profile', 'Average IQ 85-90; verbal IQ < performance IQ'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl — Turner vs Klinefelter Cognition',
          'The cognitive profiles are OPPOSITE: Turner has stronger verbal than visuospatial skills. Klinefelter has stronger performance (spatial) than verbal skills. This contrast is a classic board question.',
        ),

        HeaderBlock('Genomic Imprinting: PWS and Angelman'),
        TextBlock(
          'Prader-Willi and Angelman syndromes represent the paradigmatic example of genomic imprinting: the same chromosomal region (15q11-q13) produces entirely different phenotypes depending on the parent of origin.',
        ),

        HeaderBlock('Prader-Willi Syndrome'),
        TableBlock(
          title: 'PWS — Genetic Mechanisms',
          columns: ['Mechanism', 'Frequency'],
          rows: [
            ['Paternal deletion of 15q11-q13', '65-75%'],
            ['Maternal uniparental disomy (UPD)', '20-30%'],
            ['Imprinting center defect', '1-3%'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),
        BulletCardBlock(
          title: 'PWS — Two-Phase Clinical Pattern',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Phase 1 (Infancy): Severe central HYPOTONIA, poor feeding, weak cry, FTT; may need gavage feeding',
            'Phase 2 (Childhood, ages 2-8): Insatiable HYPERPHAGIA, progressive obesity, food-seeking behavior',
            'Hypothalamic dysfunction: Temperature instability, high pain threshold',
            'Hypogonadism: Cryptorchidism in males, delayed puberty',
            'Short stature: GH deficiency in 40-100%',
            'Small hands and feet (acromicria)',
            'Behavioral: Skin picking, temper tantrums, OCD features',
            'Mild to moderate ID (mean IQ ~65-70)',
          ],
        ),
        PearlBlock(
          'Board Pearl — PWS Diagnosis',
          'DNA methylation analysis is the GOLD STANDARD diagnostic test for PWS because it detects ALL genetic mechanisms (>99% sensitivity). The two-phase pattern (neonatal hypotonia/poor feeding followed by childhood hyperphagia/obesity) is one of the most tested genetic syndrome features.',
        ),
        PearlBlock(
          'Board Pearl — PWS Growth Hormone',
          'GH therapy is FDA-approved for PWS since 2000. It improves body composition, linear growth, muscle mass, and physical function. Typically initiated in infancy.',
        ),

        HeaderBlock('Angelman Syndrome'),
        TableBlock(
          title: 'Angelman — Genetic Mechanisms',
          columns: ['Mechanism', 'Frequency'],
          rows: [
            ['Maternal deletion of 15q11-q13', '68-75%'],
            ['UBE3A mutation', '11%'],
            ['Paternal uniparental disomy', '3-7%'],
            ['Imprinting center defect', '3%'],
          ],
          headerColor: const Color(0xFFEC4899),
        ),
        TableBlock(
          title: 'Angelman — Cardinal Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['"Happy puppet" phenotype', 'Frequent inappropriate laughter, hand flapping, excitable'],
            ['Severe intellectual disability', 'Near absence of expressive speech'],
            ['Ataxic, puppet-like gait', 'Wide-based, stiff-legged'],
            ['Seizures', '80-90%; onset 1-3 years; EEG: 2-3 Hz delta'],
            ['Microcephaly', 'Acquired; head circumference decelerates postnatally'],
            ['Fascination with water', 'Classic behavioral feature'],
          ],
          headerColor: const Color(0xFFEC4899),
        ),
        PearlBlock(
          'Board Pearl — Imprinting',
          'PWS and Angelman are THE textbook example of genomic imprinting. Same region (15q11-q13), opposite parent of origin: PATERNAL deletion = PWS (hypotonia, obesity, hypogonadism). MATERNAL deletion = Angelman (happy affect, severe ID, seizures, ataxia).',
        ),
      ],
    ),

    // ============ TAB 3: Rett, Williams, Fragile X ============
    TopicTab(
      title: 'Rett/Williams/FraX',
      blocks: [
        HeaderBlock('Rett Syndrome'),
        TextBlock(
          'Caused by mutations in the MECP2 gene (Xq28). X-linked dominant, occurs almost exclusively in females (males with MECP2 mutations have severe neonatal encephalopathy and typically die in infancy). De novo mutations in >99% of cases. Incidence: ~1 in 10,000-15,000 live female births.',
          isIntro: true,
        ),
        TableBlock(
          title: 'Rett Syndrome — Four Clinical Stages',
          columns: ['Stage', 'Age', 'Key Features'],
          rows: [
            ['I (Stagnation)', '6-18 months', 'Developmental deceleration; subtle loss of interest; hypotonia; head growth slowing'],
            ['II (Regression)', '1-4 years', 'Rapid loss of hand skills and language; hand stereotypies onset; seizures; breathing irregularities; may mimic autism'],
            ['III (Plateau)', 'Preschool-school', 'Some social improvement; stereotypies and seizures persist; motor deterioration; scoliosis develops'],
            ['IV (Late Motor)', 'Variable', 'Severe motor impairment; wheelchair dependence; scoliosis progression; may lose ambulation'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        TableBlock(
          title: 'Rett Syndrome — Hallmark Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['Hand stereotypies', 'Wringing, washing, squeezing, clapping; LOSS of purposeful hand use'],
            ['Breathing irregularities', 'Hyperventilation while awake, breath holding, air swallowing'],
            ['Seizures', '60-80%'],
            ['Scoliosis', 'Progressive; common indication for surgery'],
            ['Acquired microcephaly', 'Normal at birth, decelerates postnatally'],
          ],
          headerColor: const Color(0xFF7C3AED),
        ),
        PearlBlock(
          'Board Pearl — Rett Triad',
          'The triad of (1) regression after apparently normal early development, (2) loss of purposeful hand movements replaced by stereotypic hand-wringing, and (3) acquired microcephaly should immediately suggest Rett syndrome. Almost exclusively diagnosed in females.',
        ),

        HeaderBlock('Williams Syndrome'),
        TextBlock(
          'Results from a microdeletion at chromosome 7q11.23, which includes the elastin gene (ELN). Incidence: ~1 in 7,500-10,000 live births.',
        ),
        TableBlock(
          title: 'Williams Syndrome — Cardinal Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['"Cocktail party personality"', 'Overly friendly, excessive sociability, lack of stranger anxiety'],
            ['Supravalvular aortic stenosis', '75% — classic cardiac association; due to elastin gene deletion'],
            ['Peripheral pulmonary stenosis', 'Common in infancy; may resolve'],
            ['Elfin facies', 'Broad forehead, periorbital fullness, stellate iris, long philtrum, full lips'],
            ['Infantile hypercalcemia', '15-50%'],
            ['Cognitive profile', 'Mean IQ 50-60; remarkable verbal skills; SEVERE visuospatial deficits'],
            ['Renal anomalies', 'Renal artery stenosis, bladder diverticula'],
            ['Endocrine', 'Hypothyroidism, early puberty'],
          ],
          headerColor: const Color(0xFFF97316),
        ),
        PearlBlock(
          'Board Pearl — Williams Cognitive Paradox',
          'Williams syndrome produces one of the most distinctive cognitive profiles: STRONG verbal and social skills combined with SEVERE visuospatial deficits. This dissociation creates a misleading impression of higher ability based on conversational interaction.',
        ),
        PearlBlock(
          'Board Pearl — Williams Cardiac',
          'Supravalvular aortic stenosis (SVAS) is present in 75% and is the classic cardiac association, resulting directly from haploinsufficiency of the elastin gene within the 7q11.23 deletion.',
        ),

        HeaderBlock('Fragile X Syndrome'),
        TextBlock(
          'Caused by CGG trinucleotide repeat expansion in the FMR1 gene at Xq27.3. It is the most common INHERITED cause of intellectual disability and the second most common genetic cause overall (after Down syndrome).',
        ),
        TableBlock(
          title: 'Fragile X — CGG Repeat Categories',
          columns: ['Category', 'Repeat Number', 'Significance'],
          rows: [
            ['Normal', '5-44', 'No clinical effect'],
            ['Intermediate', '45-54', 'Stable in most transmissions'],
            ['Premutation', '55-200', 'Carrier; FXTAS and FXPOI risk'],
            ['Full mutation', '>200', 'FMR1 silencing by methylation'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        TableBlock(
          title: 'Fragile X — Clinical Features',
          columns: ['Feature', 'Detail'],
          rows: [
            ['Intellectual disability', 'Moderate in males; ~50% of females have some impairment'],
            ['Macro-orchidism', 'Post-pubertal; ~80% of affected males (classic finding)'],
            ['Facial features', 'Long face, prominent jaw, large ears (post-pubertal)'],
            ['Behavioral', 'ADHD, anxiety, autism features (~30%), gaze aversion'],
            ['Connective tissue', 'Joint hypermobility, flat feet, mitral valve prolapse (~50%)'],
          ],
          headerColor: const Color(0xFFDC2626),
        ),
        BulletCardBlock(
          title: 'Premutation Carrier Phenotypes (55-200 repeats)',
          themeColor: const Color(0xFFDC2626),
          backgroundColor: const Color(0xFFFEF2F2),
          points: [
            'FXTAS (Fragile X-associated tremor/ataxia): Progressive cerebellar ataxia and intention tremor in premutation carrier MALES, typically after age 50',
            'FXPOI (Fragile X-associated primary ovarian insufficiency): Premature ovarian failure in ~20% of female premutation carriers',
          ],
        ),
        PearlBlock(
          'Board Pearl — Anticipation in Fragile X',
          'Premutation alleles are unstable during MATERNAL transmission and tend to expand in successive generations (anticipation). A mother with a premutation may have a child with a full mutation. Paternal premutation alleles are generally STABLE.',
        ),
        PearlBlock(
          'Board Pearl — Fragile X vs Down',
          'Fragile X is the most common INHERITED cause of intellectual disability. Down syndrome is the most common GENETIC cause overall. The hallmark post-pubertal finding in Fragile X is macro-orchidism (~80% of affected males).',
        ),
      ],
    ),

    // ============ TAB 4: TORCH & FASD ============
    TopicTab(
      title: 'TORCH & FASD',
      blocks: [
        HeaderBlock('TORCH Infections'),
        TextBlock(
          'TORCH infections are congenital infections transmitted from mother to fetus that share overlapping features but can be distinguished by characteristic findings.',
          isIntro: true,
        ),
        MnemonicBlock(
          'TORCH',
          'Toxoplasmosis, Other (syphilis), Rubella, Cytomegalovirus, Herpes simplex. Zika virus is an important recent addition.',
        ),
        TableBlock(
          title: 'TORCH Infections — Distinguishing Features',
          columns: ['Infection', 'Pathognomonic Features', 'Cardiac', 'CNS Calcifications'],
          rows: [
            ['Toxoplasmosis', 'Chorioretinitis + hydrocephalus + intracranial calcifications', '--', 'Scattered/diffuse'],
            ['Syphilis', 'Hutchinson triad: teeth + keratitis + CN VIII deafness', '--', '--'],
            ['Rubella', 'SNHL (#1 feature); cataracts; blueberry muffin rash', 'PDA (classic)', '--'],
            ['CMV', 'Most common congenital infection; periventricular calcifications', '--', 'Periventricular'],
            ['Herpes (HSV)', 'Skin vesicles, encephalitis, keratoconjunctivitis', '--', '--'],
            ['Zika', 'Severe microcephaly, arthrogryposis', '--', 'Cortical/subcortical'],
          ],
          headerColor: const Color(0xFF6366F1),
        ),
        PearlBlock(
          'Board Pearl — CMV vs Toxoplasmosis Calcifications',
          'This is one of the most frequently tested board distinctions. CMV = PERIVENTRICULAR calcifications (around the ventricles). Toxoplasmosis = SCATTERED/DIFFUSE calcifications (throughout the parenchyma).',
        ),
        PearlBlock(
          'Board Pearl — CMV',
          'CMV is the most common congenital infection and the leading NON-GENETIC cause of sensorineural hearing loss in children.',
        ),
        PearlBlock(
          'Board Pearl — Rubella',
          'Rubella classic cardiac lesion is PDA. Sensorineural hearing loss is the #1 feature of congenital rubella.',
        ),

        HeaderBlock('Fetal Alcohol Spectrum Disorders'),
        TextBlock(
          'FASD represents the leading PREVENTABLE cause of intellectual disability. Full FAS occurs in 0.5-3 per 1,000 live births. The broader FASD spectrum affects 2-5% of school-age children. There is NO safe amount of alcohol during pregnancy.',
        ),
        BulletCardBlock(
          title: 'FAS Diagnostic Features (All Three Domains Required)',
          themeColor: const Color(0xFF7C3AED),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            '1. Characteristic facial features (ALL three required): Smooth philtrum, thin upper lip, short palpebral fissures',
            '2. Growth deficiency: Prenatal and/or postnatal growth restriction (height or weight <=10th percentile)',
            '3. CNS dysfunction: Microcephaly, intellectual disability (mean IQ ~70), behavioral problems, executive function deficits',
            'Cardiac defects: VSD, ASD',
          ],
        ),
        BulletCardBlock(
          title: 'FASD Spectrum',
          themeColor: const Color(0xFF8B5CF6),
          backgroundColor: const Color(0xFFF5F3FF),
          points: [
            'Partial FAS: Some but not all facial features',
            'Alcohol-related neurodevelopmental disorder (ARND): CNS dysfunction WITHOUT facial features',
            'Alcohol-related birth defects (ARBD): Structural anomalies without facial features',
            'Many affected individuals LACK classic facial features but have substantial neurobehavioral impairment',
          ],
        ),
        PearlBlock(
          'Board Pearl — FASD Facial Features',
          'ALL THREE facial features must be present for full FAS diagnosis: smooth philtrum, thin upper lip, and short palpebral fissures. However, many children with significant prenatal alcohol-related impairment lack the classic facial phenotype.',
        ),
      ],
    ),

    // ============ TAB 5: VACTERL & Genetic Testing ============
    TopicTab(
      title: 'VACTERL & Testing',
      blocks: [
        HeaderBlock('VACTERL Association'),
        TextBlock(
          'VACTERL is a non-random association of congenital anomalies. Importantly, it is an ASSOCIATION, not a syndrome, because no single unifying genetic cause has been identified. Incidence: ~1 in 10,000-40,000 live births. Diagnosis requires 3 or more features.',
          isIntro: true,
        ),
        MnemonicBlock(
          'VACTERL',
          'Vertebral anomalies (hemivertebrae), Anal atresia (imperforate anus), Cardiac defects (VSD most common), Tracheo-Esophageal fistula, Esophageal atresia, Renal anomalies (renal agenesis, horseshoe kidney), Limb anomalies (radial ray defects)',
        ),
        PearlBlock(
          'Board Pearl — VACTERL',
          'VACTERL is an ASSOCIATION (not a syndrome) requiring 3 or more component features. No single gene mutation explains it. Radial ray defects (absent thumb, absent radius) are the characteristic limb anomalies.',
        ),

        HeaderBlock('Genetic Testing Approaches'),
        TextBlock(
          'The approach to genetic evaluation has evolved significantly with advances in genomic technology. Chromosomal microarray (CMA) is now the recommended first-tier test for unexplained developmental delay, intellectual disability, and ASD.',
        ),
        TableBlock(
          title: 'Genetic Testing Hierarchy',
          columns: ['Test', 'Resolution', 'Diagnostic Yield', 'Limitations'],
          rows: [
            ['Karyotype', '5-10 Mb', '~3% for DD/ID', 'Cannot detect submicroscopic changes'],
            ['FISH', 'Targeted probe', 'Targeted only', 'Requires clinical suspicion'],
            ['CMA (first-tier)', '50-100 kb', '15-20% for DD/ID', 'Cannot detect balanced translocations or point mutations'],
            ['WES (second-tier)', 'Single nucleotide', '25-40%', 'Misses non-coding, structural, repeats'],
            ['WGS (emerging)', 'Single nucleotide +', '30-50%', 'Cost, VUS interpretation'],
            ['DNA methylation', 'Epigenetic', 'Gold standard for PWS/AS', 'Specific to methylation defects'],
            ['Trinucleotide repeat', 'Repeat expansion', 'Targeted for FraX/DM', 'Requires clinical suspicion'],
          ],
          headerColor: const Color(0xFF3B82F6),
        ),
        BulletCardBlock(
          title: 'Testing Strategy',
          themeColor: const Color(0xFF3B82F6),
          backgroundColor: const Color(0xFFEFF6FF),
          points: [
            'First-tier for unexplained DD/ID, ASD, or MCA: Chromosomal microarray (CMA) + Fragile X testing if male',
            'Second-tier (when CMA non-diagnostic): Whole exome sequencing (WES)',
            'Emerging approach: Whole genome sequencing (WGS) as potential first-line',
            'Targeted testing: Karyotype for suspected trisomy/translocation; FISH for known microdeletion; methylation for PWS/AS; trinucleotide repeat for FraX/DM',
          ],
        ),
        PearlBlock(
          'Board Pearl — CMA vs Karyotype',
          'Chromosomal microarray has REPLACED karyotype as the recommended first-tier genetic test for unexplained DD/ID/ASD, with 15-20% yield vs only 3% for karyotype. However, karyotype is still needed when balanced translocation is suspected (CMA cannot detect balanced rearrangements).',
        ),
      ],
    ),

    // ============ TAB 6: High-Yield Summary ============
    TopicTab(
      title: 'Board Summary',
      blocks: [
        HeaderBlock('Comparative Syndrome Summary'),
        TextBlock(
          'This tab provides a high-yield comparison of all genetic syndromes covered in this module for rapid board review.',
          isIntro: true,
        ),
        TableBlock(
          title: 'High-Yield Syndrome Comparison',
          columns: ['Syndrome', 'Key Board Association', 'Cardiac', 'Cognitive'],
          rows: [
            ['Down (T21)', 'AVSD; AAI; duodenal atresia', '40-50% CHD', 'Moderate ID (IQ 40-55)'],
            ['Edwards (T18)', 'Overlapping fingers; rocker-bottom feet', '>90%; VSD, PDA', 'Severe; lethal'],
            ['Patau (T13)', 'Holoprosencephaly; polydactyly', '80%', 'Severe; lethal'],
            ['Turner (45,X)', 'Webbed neck; coarctation; streak ovaries', 'BAV, CoA', 'Normal IQ; visuospatial deficit'],
            ['Klinefelter (47,XXY)', 'Tall; gynecomastia; small testes', '--', 'IQ 85-90; verbal deficit'],
            ['PWS', 'Hypotonia then hyperphagia; paternal 15q', '--', 'Mild-mod ID'],
            ['Angelman', 'Happy puppet; seizures; maternal 15q', '--', 'Severe ID'],
            ['Rett', 'Hand stereotypies; MECP2; regression', '--', 'Severe ID (regression)'],
            ['Williams', 'Cocktail party personality; SVAS; 7q11.23', '75% SVAS', 'IQ 50-60'],
            ['Fragile X', 'Macro-orchidism; CGG expansion; FMR1', 'MVP ~50%', 'Moderate ID (males)'],
            ['FASD', 'Smooth philtrum; thin lip; short PF', 'VSD, ASD', 'Mean IQ ~70'],
          ],
          headerColor: const Color(0xFF8B5CF6),
        ),

        HeaderBlock('Board Quick Facts'),
        TableBlock(
          title: 'Most Tested Facts',
          columns: ['Topic', 'Key Fact'],
          rows: [
            ['Most common chromosomal cause of ID', 'Down syndrome (1:700)'],
            ['Most common inherited cause of ID', 'Fragile X syndrome'],
            ['Leading preventable cause of ID', 'Fetal alcohol spectrum disorders'],
            ['Most common cardiac defect in DS', 'AVSD (endocardial cushion defect)'],
            ['AAI in DS — radiographic', '10-30% (symptomatic only 1-2%)'],
            ['ADI threshold in children', '>4.5 mm'],
            ['Trisomy 18 hand finding', 'Overlapping fingers (index/3rd, 5th/4th)'],
            ['Trisomy 13 classic brain finding', 'Holoprosencephaly'],
            ['Turner classic cardiac association', 'Coarctation (BAV more common)'],
            ['PWS diagnostic test', 'DNA methylation analysis'],
            ['Rett gene', 'MECP2 (Xq28)'],
            ['Williams cardiac', 'SVAS (75%)'],
            ['Williams deletion', '7q11.23 (includes elastin)'],
            ['Fragile X repeat threshold', '>200 CGG = full mutation'],
            ['CMV calcifications', 'Periventricular'],
            ['Toxo calcifications', 'Scattered/diffuse'],
            ['CMV significance', 'Most common congenital infection; #1 non-genetic SNHL'],
            ['Rubella classic cardiac', 'PDA'],
            ['First-tier genetic test', 'CMA (15-20% yield)'],
            ['CMA limitation', 'Cannot detect balanced translocations'],
            ['FASD facial features', 'Smooth philtrum + thin lip + short PF (all 3 required)'],
          ],
          headerColor: const Color(0xFF0D9488),
        ),
      ],
    ),
  ],
);
