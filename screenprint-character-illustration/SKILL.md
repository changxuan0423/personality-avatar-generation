---
name: screenprint-character-illustration
description: Use when generating a square single-character desk-work illustration in the supplied dense halftone, risograph, or silk-screen editorial style, especially when the result must match a 3×3 reference series while each character remains visually distinct.
---

# 丝网印刷人物插画

Create a new character, not a new visual system. The bundled 3×3 sheet controls composition, linework, dot density, and palette logic; do not copy one of its identities, outfits, poses, or prop layouts.

## Mandatory reference contract

Before every generation, inspect `assets/screenprint-character-series-reference.png`. Attach its resolved local path through the image tool's image-reference input (for example, `referenced_image_paths`); naming the file in prose is not enough. Use it as a style-and-composition reference, never as an edit target.

## Build the scene

1. Define a new character. Change at least four axes from the reference cast and recent outputs: face shape, hair, accessory, clothing silhouette, action, pose, primary tool, or palette pairing.
2. Choose one foreground scene anchor: laptop, desktop monitor, pen-display tablet, or open book. Add no more than two secondary props. When the brief lists more, keep only the props that make the action legible.
3. Keep any abstract/AI cue desk-side and within roughly 20% of the canvas. It must be visible to the viewer, not hidden only on a character-facing display. Render it as a faceless device, projection, or grouped dot-and-shape cue; do not give it eyes, a face, or mascot proportions unless the user explicitly asks. Create impact with contrast, crop, and print density—not cue size.
4. Generate one image per character. Correct one failed rule per revision.

## Fixed visual system

- **Frame:** one 1:1 panel; exactly one human; compact waist-up three-quarter desk-work view.
- **Layout:** character middle-right, grey chair directly behind, pale-grey speckled tabletop in the lower quarter. The scene anchor enters large from lower left and crops at the edge. Screens face the character; viewers see their back or side. Fill the square; avoid a centred poster or large empty field.
- **Drawing:** rounded, gentle Japanese editorial-cartoon face; thick slightly imperfect black contour; fine interior lines for hair and folds.
- **Print:** flat saturated spot colours; dense crisp black halftone dots and stippling on every material. No smooth shading.
- **Palette:** saturated background + garment colour + one accent + black, white, and neutral grey; 3–4 spot colours total.

## Prompt recipe

```text
Input image: `assets/screenprint-character-series-reference.png`, mandatory style and composition reference only. Create a tenth tile in the same series, not a grid or collage.

Create exactly one new character: [CHARACTER] [ACTION] at a desk in [OUTFIT]. Make [FOUR OR MORE DISTINCT AXES] different from the reference cast and recent outputs.

Composition: 1:1 square; compact waist-up three-quarter view; character middle-right; grey chair behind; pale-grey halftone tabletop in the bottom quarter. [ONE FOREGROUND ANCHOR] enters cropped from lower left. If it has a screen, it faces the character and only its back/side faces the viewer. Add at most [TWO SECONDARY PROPS]; omit extras. [OPTIONAL VISIBLE FACELESS AI/CONCEPT CUE, WITHIN 20% OF THE CANVAS].

Style: warm hand-drawn Japanese editorial cartoon; heavy imperfect black ink outline; fine interior contours; flat saturated spot colours; dense crisp black halftone dots and stippling across all materials; vintage risograph / silk-screen print. Background: [COLOUR] with darker halftone dots. Palette: [GARMENT], [ACCENT], neutral grey, black, white.

Constraints: one human; one panel; no text, letters, logos, watermark, border, grid, collage, extra people, duplicate limbs, smooth gradients, realistic lighting, 3D, neon glow, painterly texture, airbrush, centred poster composition, oversized props, large floating infographic, AI/concept cue larger than 20% of the canvas, or AI face/eyes/mascot unless explicitly requested.
```

## Check before delivery

- Was the bundled asset inspected and attached to the generation call?
- Does it read as a tenth reference tile, with a new character?
- Is there one scene anchor and at most two secondary props?
- Is the screen orientation logical and any concept cue small, visible, and secondary?
- Are the dots printed halftones rather than soft digital grain?
