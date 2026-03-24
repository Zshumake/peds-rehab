#!/usr/bin/env python3
"""
Batch image generator for Pediatric Rehab Training app.
Uses Gemini API free tier (15 req/min, $0 cost).

Usage:
  export GEMINI_API_KEY=your_key_here
  python3 scripts/generate_images.py

Or generate a specific batch:
  python3 scripts/generate_images.py --batch heroes
  python3 scripts/generate_images.py --batch module-02
"""

import os
import sys
import time
import argparse
from pathlib import Path

# --- Configuration ---
PROJECT_ROOT = Path(__file__).parent.parent
ASSETS_DIR = PROJECT_ROOT / "assets" / "images"
RATE_LIMIT_DELAY = 4.5  # seconds between requests (safe for 15/min limit)

# Consistent style prefix for ALL images
STYLE_PREFIX = (
    "Soft watercolor illustration style with warm pastel colors "
    "(coral #F97066, soft teal #5EEAD4, muted purple #A78BFA, sunshine yellow #FCD34D, "
    "bubblegum pink #F9A8D4) on a cream #FFF8F0 background. "
    "Rounded, friendly, child-book illustration style. "
    "Clean, simple, medically accurate but not photorealistic. "
    "No text or labels in the image. Clean margins. "
)

# --- Image Definitions ---
# Each entry: (filename, subdirectory, prompt)
IMAGES = {
    "heroes": [
        ("hero-genetics.jpg", "heroes",
         "A gentle illustration of diverse chromosomes and DNA helixes floating like colorful balloons, with a small child looking up at them in wonder. Warm pastels."),
        ("hero-development.jpg", "heroes",
         "Five small children in a horizontal row showing developmental progression: lying down, sitting, crawling, standing, walking. Each slightly larger. Warm pastels, joyful."),
        ("hero-limb.jpg", "heroes",
         "A child with a prosthetic arm happily playing with building blocks alongside another child. Warm, inclusive, soft watercolor."),
        ("hero-bones.jpg", "heroes",
         "A friendly cartoon skeleton doing a playful pose, with colorful joints highlighted. Child-friendly, not scary. Warm pastels."),
        ("hero-connective.jpg", "heroes",
         "A child's hands gently holding a glowing joint, with soft colorful inflammation patterns around it. Medical but warm and hopeful."),
        ("hero-burns.jpg", "heroes",
         "A child in rehab doing gentle stretching exercises with a therapist, wearing colorful pressure garments. Warm, encouraging atmosphere."),
        ("hero-cancers.jpg", "heroes",
         "A brave child with a superhero cape in a hospital setting, surrounded by warm light and encouraging colors. Hope and resilience theme."),
        ("hero-neurotrauma.jpg", "heroes",
         "A child's brain illustrated as a colorful garden, with some areas blooming and growing. Represents neuroplasticity and recovery. Warm pastels."),
        ("hero-cp.jpg", "heroes",
         "Three children using different mobility aids (walker, wheelchair, standing) playing together in a park. Inclusive, joyful, warm pastels."),
        ("hero-spina-bifida.jpg", "heroes",
         "A child in a wheelchair racing joyfully, with a colorful spine illustration subtly in the background. Active, empowering."),
        ("hero-neuromuscular.jpg", "heroes",
         "A child doing gentle arm exercises with small colorful weights, showing determination and joy. Muscles illustrated with soft glow. Warm pastels."),
        ("hero-pharmacology.jpg", "heroes",
         "Colorful medicine bottles and pills arranged like a rainbow, with a small scale balancing them. Friendly, organized, educational feel."),
        ("hero-orthotics.jpg", "heroes",
         "Different colored AFOs and braces arranged in a cheerful display, like shoes in a shop window. Child-sized, playful colors."),
        ("hero-rehab.jpg", "heroes",
         "A child graduating from a therapy session, high-fiving their therapist, with a path stretching forward into a bright future. Warm, hopeful."),
    ],

    "module-02": [
        ("milestone-0-3mo.jpg", "module-02-development",
         "A newborn baby lying on tummy, lifting head up with effort. Head control milestone. Simple, clear watercolor illustration."),
        ("milestone-4-6mo.jpg", "module-02-development",
         "A 6-month-old baby sitting independently on the floor, reaching for a colorful toy. Sitting milestone. Watercolor style."),
        ("milestone-7-9mo.jpg", "module-02-development",
         "A baby crawling on hands and knees across a colorful mat. Crawling milestone. Joyful expression. Watercolor style."),
        ("milestone-10-12mo.jpg", "module-02-development",
         "A toddler taking first wobbly steps with arms outstretched for balance. Walking milestone. Warm watercolor, joyful."),
        ("milestone-18-24mo.jpg", "module-02-development",
         "A toddler running and kicking a ball in a park. Running milestone. Energetic, warm watercolor."),
        ("reflex-moro.jpg", "module-02-development",
         "Medical illustration of a baby showing the Moro reflex - arms extended outward, fingers spread, startled expression. Simple, clear, educational."),
        ("reflex-atnr.jpg", "module-02-development",
         "Medical illustration of a baby in the fencer pose - head turned to one side, same-side arm extended, opposite arm flexed. ATNR reflex. Clear, educational."),
        ("reflex-parachute.jpg", "module-02-development",
         "Medical illustration of a baby held in ventral suspension, arms extended downward protectively. Parachute reflex. Clear, educational watercolor."),
        ("grasp-progression.jpg", "module-02-development",
         "Four hand illustrations showing grasp development left to right: palmar grasp, raking, inferior pincer, mature pincer. Simple, clear, educational."),
    ],

    "module-09": [
        ("gmfcs-levels.jpg", "module-09-cp",
         "Five children illustrated side by side showing GMFCS levels: Level I walking freely, Level II walking with slight difficulty, Level III using a walker, Level IV in a power wheelchair, Level V being transported. Warm pastels, inclusive."),
        ("cp-topography.jpg", "module-09-cp",
         "Four simple body outlines showing CP distribution patterns: hemiplegia (one side shaded), diplegia (both legs shaded), triplegia (both legs + one arm), quadriplegia (all limbs shaded). Color-coded, clean medical illustration."),
        ("spasticity-ladder.jpg", "module-09-cp",
         "A colorful pyramid/ladder illustration showing spasticity management steps from bottom to top: stretching, oral meds, botox injections, ITB pump, SDR surgery. Each level a different warm color."),
        ("gait-patterns.jpg", "module-09-cp",
         "Four stick-figure illustrations showing common CP gait patterns side by side: equinus (toe walking), scissoring (crossed legs), crouch (bent knees), circumduction (leg swinging outward). Simple, clear, educational."),
        ("hip-surveillance.jpg", "module-09-cp",
         "Simple illustration of a child's pelvis showing normal hip vs subluxated hip, with an arrow indicating migration percentage measurement. Medical but friendly watercolor style."),
    ],

    "module-10": [
        ("spina-bifida-types.jpg", "module-10-spina-bifida",
         "Three cross-section illustrations of the spine showing spina bifida types side by side: occulta (small gap in vertebra), meningocele (sac with fluid), myelomeningocele (sac with cord and fluid). Clear medical illustration, warm colors."),
        ("functional-levels.jpg", "module-10-spina-bifida",
         "A vertical spine illustration with horizontal lines showing functional motor levels: thoracic (wheelchair icon), L1-L2 (KAFO icon), L3-L4 (AFO icon), L5-S1 (walking icon). Color-coded by level."),
        ("chiari-malformation.jpg", "module-10-spina-bifida",
         "Simple sagittal view of brain and upper spine showing Chiari II malformation - cerebellum herniated downward through foramen magnum. Medical illustration with warm color highlights."),
    ],

    "module-11": [
        ("gower-sign.jpg", "module-11-neuromuscular",
         "Sequence of 4 illustrations showing Gower sign: child on floor, pushing up with hands on knees, climbing up thighs, finally standing. Classic medical illustration, warm watercolor style."),
        ("dmd-progression.jpg", "module-11-neuromuscular",
         "Timeline illustration showing DMD progression: active toddler (age 3), boy with calf pseudohypertrophy (age 8), teen in wheelchair (age 12), young adult with ventilator (age 20). Respectful, warm colors."),
        ("sma-types.jpg", "module-11-neuromuscular",
         "Three children illustrated showing SMA motor milestones: Type I (baby lying, never sits), Type II (child sitting, never stands), Type III (child standing/walking). Simple, clear, warm colors."),
    ],

    "module-03": [
        ("brachial-plexus-anatomy.jpg", "module-03-limb",
         "Simplified anatomical illustration of the brachial plexus showing roots (C5-T1), trunks, divisions, cords, and terminal branches. Color-coded by level. Clean medical illustration with warm colors."),
        ("erb-palsy-posture.jpg", "module-03-limb",
         "Illustration of an infant arm in the classic Erb palsy waiter's tip position - arm adducted, internally rotated, elbow extended, forearm pronated. Clear medical illustration."),
        ("prosthetic-timeline.jpg", "module-03-limb",
         "Three illustrations showing pediatric prosthetic fitting timeline: passive hand at 6 months (baby sitting), voluntary-opening at 12 months (toddler walking), myoelectric at 3 years (child playing). Warm colors."),
    ],

    "module-04": [
        ("ddh-maneuvers.jpg", "module-04-bones",
         "Two side-by-side illustrations of infant hip examination: Barlow test (pushing hip posteriorly to dislocate) and Ortolani test (abducting to reduce). Clear arrows showing direction of force. Medical illustration."),
        ("clubfoot-cave.jpg", "module-04-bones",
         "Illustration of a clubfoot showing all four CAVE deformities: Cavus (high arch), Adductus (forefoot turned in), Varus (heel turned in), Equinus (foot pointing down). Color-coded labels with arrows."),
        ("salter-harris.jpg", "module-04-bones",
         "Five bone cross-sections showing Salter-Harris fracture types I through V at a growth plate. Each type clearly showing the fracture line through different zones. Clean medical illustration."),
        ("cobb-angle.jpg", "module-04-bones",
         "Simple illustration of a spine with scoliosis showing how to measure Cobb angle - lines drawn along superior and inferior endplates with the angle measurement highlighted. Medical illustration."),
    ],

    "module-06": [
        ("lund-browder-anterior.jpg", "module-06-burns",
         "Anterior view of a child's body outline divided into Lund-Browder burn assessment regions, each region labeled with percentage. Age-appropriate proportions (large head). Clean medical illustration."),
        ("lund-browder-posterior.jpg", "module-06-burns",
         "Posterior view of a child's body outline divided into Lund-Browder burn assessment regions, each region labeled with percentage. Matching style with anterior view. Clean medical illustration."),
        ("burn-positioning.jpg", "module-06-burns",
         "Illustration showing anti-deformity positioning for burns: neck extended, shoulders abducted 90 degrees, elbows extended, wrists extended, hips extended and abducted. Friendly child figure in correct positions."),
    ],

    "module-07": [
        ("bone-tumor-map.jpg", "module-07-cancers",
         "Illustration of a long bone (femur) divided into three zones: epiphysis, metaphysis, and diaphysis. Each zone labeled with the tumors that occur there. Color-coded. Clean medical illustration."),
    ],

    "module-08": [
        ("pediatric-gcs.jpg", "module-08-neurotrauma",
         "Colorful infographic-style illustration showing the three components of the Glasgow Coma Scale: an eye (eye opening), a speech bubble (verbal response), and a flexing arm (motor response). Each with a number scale. Friendly medical illustration."),
        ("sciwora-spine.jpg", "module-08-neurotrauma",
         "Illustration of a child's cervical spine showing the concept of SCIWORA: normal-appearing vertebrae but with injured spinal cord inside. Elastic ligaments stretched. Educational medical illustration."),
    ],

    "module-13": [
        ("afo-types.jpg", "module-13-orthotics",
         "Five ankle-foot orthoses illustrated side by side: SMO (short, around ankle), PLS (thin posterior leaf), Solid AFO (rigid, no joint), Hinged AFO (with ankle joint), GRAFO (extending to just below knee). Color-coded, child-sized."),
        ("seating-hierarchy.jpg", "module-13-orthotics",
         "Illustration showing proper wheelchair seating: pelvis stabilized first (highlighted), then trunk support, then head support. Arrows showing the bottom-up approach. Child in wheelchair. Warm colors."),
    ],

    "module-05": [
        ("jia-subtypes.jpg", "module-05-connective",
         "Seven colored circles arranged in a pattern, each representing a JIA subtype with a simple icon inside: joint for oligoarticular, multiple joints for polyarticular, flame for systemic, eye for uveitis risk, spine for ERA, skin for psoriatic. Warm medical illustration."),
    ],

    "module-01": [
        ("trisomy-faces.jpg", "module-01-genetics",
         "Three gentle side-by-side illustrations showing subtle facial features: Down syndrome (upslanting palpebral fissures, flat nasal bridge), Trisomy 18 (clenched fists, micrognathia), Trisomy 13 (cleft lip, close-set eyes). Respectful, gentle, medical illustration style."),
    ],

    "module-12": [
        ("itb-pump.jpg", "module-12-pharmacology",
         "Illustration of an intrathecal baclofen pump system: small disc pump in abdomen connected via catheter to the spinal canal. Simplified, color-coded, showing the key components. Medical illustration, warm colors."),
    ],
}


def get_all_images():
    """Flatten all image definitions into a single list."""
    all_imgs = []
    for batch_name, batch_images in IMAGES.items():
        for filename, subdir, prompt in batch_images:
            all_imgs.append((filename, subdir, prompt, batch_name))
    return all_imgs


def generate_images(batch_filter=None, dry_run=False, start_from=0):
    """Generate images using Gemini API."""
    api_key = os.environ.get("GEMINI_API_KEY")
    if not api_key and not dry_run:
        print("ERROR: GEMINI_API_KEY environment variable not set.")
        print("Get a free key at: https://aistudio.google.com/apikey")
        sys.exit(1)

    if not dry_run:
        from google import genai
        from google.genai import types
        client = genai.Client(api_key=api_key)

    all_images = get_all_images()
    if batch_filter:
        all_images = [(f, s, p, b) for f, s, p, b in all_images if b == batch_filter]

    if not all_images:
        print(f"No images found for batch '{batch_filter}'")
        print(f"Available batches: {', '.join(IMAGES.keys())}")
        return

    total = len(all_images)
    skipped = 0
    generated = 0
    errors = 0

    print(f"\n{'='*60}")
    print(f"Pediatric Rehab Training — Image Generator")
    print(f"{'='*60}")
    print(f"Total images to generate: {total}")
    print(f"Estimated time: {total * RATE_LIMIT_DELAY / 60:.1f} minutes")
    print(f"Cost: $0 (Gemini API free tier)")
    if batch_filter:
        print(f"Batch filter: {batch_filter}")
    if start_from > 0:
        print(f"Starting from image #{start_from + 1}")
    print(f"{'='*60}\n")

    for i, (filename, subdir, prompt, batch_name) in enumerate(all_images):
        if i < start_from:
            continue

        output_path = ASSETS_DIR / subdir / filename
        output_path.parent.mkdir(parents=True, exist_ok=True)

        # Skip if already exists
        if output_path.exists():
            print(f"  [{i+1}/{total}] SKIP (exists): {subdir}/{filename}")
            skipped += 1
            continue

        full_prompt = f"{STYLE_PREFIX}{prompt}"

        if dry_run:
            print(f"  [{i+1}/{total}] DRY RUN: {subdir}/{filename}")
            print(f"           Prompt: {prompt[:80]}...")
            continue

        print(f"  [{i+1}/{total}] Generating: {subdir}/{filename}...", end="", flush=True)

        try:
            response = client.models.generate_content(
                model="gemini-3-pro-image-preview",
                contents=[full_prompt],
                config=types.GenerateContentConfig(
                    response_modalities=['TEXT', 'IMAGE'],
                    image_config=types.ImageConfig(
                        aspect_ratio="16:9",
                        image_size="1K",
                    ),
                ),
            )

            saved = False
            for part in response.parts:
                if part.inline_data:
                    image = part.as_image()
                    image.save(str(output_path))
                    saved = True
                    break

            if saved:
                size_kb = output_path.stat().st_size / 1024
                print(f" OK ({size_kb:.0f} KB)")
                generated += 1
            else:
                print(f" WARN: No image in response")
                errors += 1

        except Exception as e:
            print(f" ERROR: {e}")
            errors += 1

        # Rate limiting
        if i < total - 1:
            time.sleep(RATE_LIMIT_DELAY)

    print(f"\n{'='*60}")
    print(f"Done! Generated: {generated}, Skipped: {skipped}, Errors: {errors}")
    print(f"Images saved to: {ASSETS_DIR}")
    print(f"{'='*60}\n")


def main():
    parser = argparse.ArgumentParser(description="Generate images for Pediatric Rehab Training app")
    parser.add_argument("--batch", type=str, help=f"Generate only a specific batch. Options: {', '.join(IMAGES.keys())}")
    parser.add_argument("--dry-run", action="store_true", help="Print prompts without generating")
    parser.add_argument("--list", action="store_true", help="List all images and batches")
    parser.add_argument("--start-from", type=int, default=0, help="Skip first N images (for resuming)")

    args = parser.parse_args()

    if args.list:
        total = 0
        for batch_name, batch_images in IMAGES.items():
            print(f"\n{batch_name} ({len(batch_images)} images):")
            for filename, subdir, prompt in batch_images:
                exists = "✓" if (ASSETS_DIR / subdir / filename).exists() else " "
                print(f"  [{exists}] {subdir}/{filename}")
                total += 1
        print(f"\nTotal: {total} images")
        return

    generate_images(
        batch_filter=args.batch,
        dry_run=args.dry_run,
        start_from=args.start_from,
    )


if __name__ == "__main__":
    main()
