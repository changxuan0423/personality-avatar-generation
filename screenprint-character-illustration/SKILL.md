---
name: screenprint-character-illustration
description: Use when generating a square single-character desk-work illustration in the supplied dense halftone, risograph, or silk-screen editorial style, especially when the result must match a 3×3 reference series while each character remains visually distinct.
---

# 丝网印刷人物插画

Create a new character, not a new visual system. Treat any supplied 3×3 reference sheet as the authority for composition, linework, dot density, and palette logic; never copy a depicted face, outfit, pose, or object arrangement.

## Workflow

1. Inspect the reference image and pass it to the image-generation tool as a style-and-composition reference.
2. Define the new character before writing the prompt: face shape, hair, accessory, clothing silhouette, activity, and one or two natural props. Change these variables on every series image.
3. Use the prompt recipe below. Generate one image per character. Inspect the result against the checklist and revise one specific failure at a time.

## Non-negotiable visual recipe

- **Frame:** one 1:1 square panel; exactly one human character; compact upper-body, three-quarter desk-work view.
- **Composition:** character sits middle-right; grey chair directly behind; light-grey speckled desk fills only the lower quarter. A laptop/monitor may enter large from the lower-left foreground and crop at the edge. If in use, its screen faces the character and its back or side faces the viewer. Fill the square; do not use a centered poster layout or a large empty field.
- **Drawing:** rounded, gentle Japanese editorial-cartoon face; bold slightly imperfect black outer contour; fine black interior lines for hair and folds.
- **Print texture:** flat high-saturation spot colours plus dense, crisp black halftone dots and stippling on background, hair, clothes, furniture, devices, and shadows. Use no smooth shading.
- **Colour:** choose one saturated background, one garment colour, one small accent, then black, white, and neutral grey. Keep the palette to 3–4 spot colours.
- **Conceptual elements:** when a topic needs an AI, product, or abstract meaning, express it with one small local device or grouped dot-and-shape cue. Keep the person and work scene dominant.

## Prompt recipe

```text
Use the supplied reference sheet as the mandatory visual and composition reference. Create a tenth tile in the same series, not a grid or collage.

Create exactly one new character: [DISTINCT CHARACTER]. They are [ACTION] at a desk, wearing [OUTFIT]. Do not reuse the identity, hair, face, outfit, pose, or prop layout of any reference character.

Composition: 1:1 square; compact waist-up three-quarter view; character middle-right; grey office chair behind; pale grey halftone tabletop in the bottom quarter. [LAPTOP/MONITOR] enters from the lower-left foreground and is cropped by the frame. Its screen faces the character; show only its back or side to the viewer. Add only [0–2 NATURAL PROPS]. [OPTIONAL SMALL CONCEPT CUE].

Style: warm hand-drawn Japanese editorial cartoon; heavy slightly imperfect black ink outlines; fine black interior contour lines; flat saturated spot colours; dense crisp black halftone dots and stippling across every material; vintage risograph / silk-screen print. Background: solid [BACKGROUND] with darker halftone dots. Palette: [GARMENT], [ACCENT], neutral grey, black and white.

Constraints: one human only; one panel; no text, letters, logos, watermark, border, grid, collage, extra people, duplicate limbs, smooth gradients, realistic lighting, 3D, neon glow, painterly texture, airbrush, centred poster composition, oversized props, or large floating infographic.
```

## Check before delivery

- Does it read as a tenth tile of the reference series?
- Is the person clearly new while the style stays fixed?
- Is the desk scene dense and spatially logical, with the screen facing the user?
- Are dots visibly printed rather than soft digital grain?
- Does any concept cue remain subordinate to the person?
