---
name: everme-digital-avatar-generation
description: Generate EverMe branded digital avatar illustrations in a consistent vintage editorial comic style. Use when the user asks to create EverMe 数字头像, role-based character portraits, “官/顾问/教练/管家” avatars, or wants the specific retro newspaper / risograph / halftone portrait style packaged in this skill.
---

# EverMe 数字头像生成

用这个 skill 生成 EverMe 系列数字头像。目标不是泛泛的复古插画，而是稳定复刻 `assets/` 中参考图的具体风格：真实人物基础、轻微讽刺漫画化、完整上半身、朝左、正方形白边、低色数报刊丝网印刷感。

## 必看参考资产

生成前必须查看这些图片，不能只依赖文字 prompt：

- `assets/01-original-references.png`：最高优先级风格锚点，三张原始参考图。
- `assets/02-success-love-strategist.png`：成功样张，允许更丰富一点的角色化道具，但人物仍是核心。
- `assets/03-success-nutrition-consultant.png`：成功样张，真实工作瞬间、完整上半身、左向视线。
- `assets/04-negative-facing-dashboard.png`：反例，屏幕朝向观众、UI 面板过重、场景逻辑不真实。
- `assets/05-negative-symbolic-code-review.png`：反例，符号化背景、手持大纸张、人物被道具抢主体。

如果当前工具支持图片参考或视觉输入，把这 5 张图作为参考资产一起使用；如果只能用文字生成，也要先检查这些资产再写 prompt。

## 当前生图工具说明

本 skill 适配 Codex 内置 `image_gen` 工具。该工具在当前环境不暴露底层模型名和 seed 参数，因此不要承诺同一 prompt 可完全复现。跨账号、跨会话、不同 Codex 版本会有差异；稳定性依赖于同时提供本 skill、参考资产、成功样张和反例。

## 工作流程

1. 读取并查看全部参考资产。
2. 从用户请求中提取角色名，例如“营养顾问”“增长操盘手”“穿搭教练”。
3. 为角色选择一个真实、自然的工作瞬间，而不是职业符号摆拍。
4. 生成 prompt 时只替换角色、动作、少量自然物件和人物外貌，其余风格约束保持不变。
5. 使用图片生成工具生成一张图。
6. 对照“生成后自检”检查，如果明显命中反例问题，说明偏差并建议下一版修正。

## 场景选择原则

- 角色在做真实会发生的事情，不是在展示职业图标。
- 场景工具必须符合当代真实工作习惯。现代数字岗位（如产品经理、运营、增长、设计、代码、数据、内容、客服等）优先使用电脑、笔记本、平板、手机、协作文档、看板或数据工具；不要为了复古画风把他们默认改成纸笔办公。
- 背景可以是纯色、稀疏网点、偶然阴影或很少量环境提示；不需要解释职业。
- 不要形成“背景符号指向手中物”的模板。
- 道具必须符合真实使用逻辑。电脑、笔记本、文件、工具不能为了给观众看而旋转。
- 如果角色正在使用屏幕，屏幕必须朝向角色；观众最多看到背面、侧面或部分斜面。
- 道具 0-2 个即可，不能抢人物主体。

## 风格硬规则

- EverMe 品牌数字头像，正方形画幅，厚白色印刷边框。
- 完整上半身：头、脖子、肩、胸、双臂、双手、上半身必须可见，裁切约在下肋、腰部或桌面高度。
- 人物整体朝左，使用左向三分之二侧脸或侧身姿态。
- 头身比略夸张，脸和头比真实肖像稍大，但仍像真实人物。
- 表情轻微滑稽、嘲讽、怀疑、审视；不能是正式职业照。
- 人物必须有独特真实外貌，不复用上一张脸、发型、服装轮廓或表情。
- 不要默认生成男性形象。除非用户指定性别，单张生成时应随机选择男性、女性或更中性的人物设定；批量或系列生成时男女比例应尽量接近 5:5，并保持年龄、脸型、发型、体型和气质的多样性。
- 1980s newspaper comic / vintage editorial portrait / risograph / screenprint。
- 带一点美式社论漫画和复古 comic strip 气质，但强度必须参考原始参考图：只是轻微的讽刺漫画味，不要变成现代美式卡通或夸张超级英雄漫画。
- 粗深色墨线、手绘轮廓、平涂色块、低色数旧报刊印刷质感。
- 背景是稀疏、粗颗粒、不均匀网点，有明显纸张留白。
- 半调颗粒要有像素化印刷感：coarse pixel-like halftone / Ben-Day dots，颗粒边缘略硬、低保真、旧报纸网点感；强度参考原始参考图，不要变成满屏高密度噪点。
- 背景点阵必须停在人物轮廓后面，不能覆盖人物脸、皮肤、头发、衣服。
- 人物皮肤和衣服使用纯色块、线稿阴影、少量局部阴影点；禁止大面积人物 stipple。
- 色盘限制：deep navy ink、muted forest green、mustard yellow、brick red、off-white paper，可少量 pale lavender 或 mint green。

## Prompt 模板

把 `[人物/角色]`、`[动作]`、`[自然物件]`、`[外貌设定]` 替换成当前角色，其他规则尽量保留。

```text
Create a square vintage editorial comic portrait for EverMe of [人物/角色] in a believable role-specific moment. The scene should feel naturally observed, not symbolically staged. The character is shown as a complete upper-body portrait, based on a believable real human portrait with natural facial anatomy, realistic individual facial traits, and plausible body proportions. The character should feel like a real person translated into a vintage newspaper illustration, not a cartoon mascot, stereotype, or formal corporate portrait.

Important character uniqueness: design [外貌设定] specifically for [人物/角色]. Unless the user specifies gender, do not default to a male character; choose gender randomly or in a balanced way across the EverMe avatar series. For batches or repeated generations, keep the overall gender ratio close to 5:5 while maintaining varied age, face shape, hairstyle, body type, expression, clothing silhouette, and personality aura. Differentiate through realistic human traits, posture, styling, and role-specific attitude, not through extreme facial deformation. Do not reuse the same facial structure, hairstyle, expression, outfit, or body proportions from another role.

Stylized portrait proportion: keep a believable real-person foundation, but make the head-to-body ratio slightly exaggerated like the original references. The head and face should be noticeably larger than a realistic portrait, while still human and recognizable. The upper body remains complete and visible, but the face carries strong visual priority through scale, expression, and linework.

Facial stylization: apply controlled editorial caricature styling. Slightly enlarge facial planes according to the character’s personality, but do not distort anatomy into a cartoon mascot. The face should feel like a real person filtered through a witty newspaper caricature: recognizable, human, memorable, and slightly absurd.

Role and action: the character is doing one natural action that fits their role: [动作]. Their eyes must follow the action naturally, looking at the object, screen, document, person, or space involved in what they are doing, not staring at the camera.

Real-world object logic: all tools, screens, documents, instruments, and furniture must obey real-world orientation and use. If using a laptop or monitor, the screen must face the character, not the viewer; the viewer may see only the back, side edge, or partial angled surface. Do not rotate objects toward the viewer just to explain the role.

Scene design: choose a minimal work setting that belongs to this character, but avoid literal symbolic staging. The work tools must match current real-world practice. For modern digital roles such as product manager, growth operator, designer, engineer, data specialist, content operator, customer support, or office knowledge worker, prefer naturally used computers, laptops, tablets, phones, dashboards, documents, kanban boards, or collaboration tools instead of defaulting to paper and pen. Keep screen orientation realistic: screens face the character, not the viewer. Do not force a representative icon in the background. Do not create a repeated pattern of “background symbol pointing to hand-held object.” The role can be communicated through posture, clothing, expression, gaze direction, and naturally used objects. Background elements may be random, incidental, abstract, or purely textural.

Props: use zero to two visible props only if they naturally belong in the scene: [自然物件]. Props should feel practical and incidental, not like labeled symbols. The person must remain the clear subject. Any main prop should be small enough to reveal the full upper torso, both arms, and hands, and must not cover the lower half of the portrait.

Character rendering and texture separation: the character must be visually separated from the background texture. The face, skin, hair, and clothing must remain clean from background halftone dots. Do not apply the background dot field over the character. Do not use an all-over texture layer across the whole image. Background halftone dots must stop at the silhouette edge and stay only in the background. Use pure flat color blocks and ink line shadows on skin and clothing. Large-area stipple on the character is forbidden; dot patterns are allowed only in the background and tiny localized shadow zones.

Strict visual style: 1980s newspaper comic illustration, vintage magazine editorial portrait, subtle American editorial comic strip influence, risograph and screenprint texture, bold dark ink outlines, hand-drawn contour lines, flat graphic colors, visible paper grain, slight ink misregistration, old printed poster look, low-fidelity newspaper print texture. Add coarse pixel-like halftone / Ben-Day dot texture at the same intensity as the original references: slightly hard-edged, irregular, old print dots, not dense digital noise. No smooth gradients, no realistic lighting, no glossy rendering.

Composition: square portrait panel with a thick white print border. Show the character’s full upper body in the same framing ratio as the reference images: head, neck, shoulders, chest, both arms, hands, and upper torso visible. The crop should sit around the lower ribs, waist, or tabletop level, not at the neck, shoulders, or tight bust. The character must face toward the left side of the image in a three-quarter view or side-angled pose. The head, torso, gaze direction, and working action should all generally point left.

Foreground and density: tabletop or foreground furniture must occupy less than 20% of the image. Avoid crowded desks, layered papers, many small tools, complex charts, detailed object clusters, large foreground furniture, or busy lower-frame arrangements.

Background: simple, sparse, and somewhat random. Use a mostly flat color field with sparse, coarse, irregular printed halftone dots, scattered far apart with large blank paper gaps. The background dots should feel like pixel-like old newspaper halftone, matching the original reference intensity. Background details are optional; if present, they should be abstract, incidental, or loosely related, not obvious icons explaining the role.

Color palette: limited 4-color print palette using deep navy ink, muted forest green, mustard yellow, brick red, off-white paper, with optional pale lavender or mint green accents. Use black only as ink-like outline and controlled shadow ink, not as a large filled background.

Expression and mood: subtly comic, skeptical, and mildly mocking, matching the satirical feeling of the original references. Use a raised eyebrow, narrowed eyes, dry smirk, suspicious squint, ironic concentration, or knowing half-smile. The character should not look neutral, polite, elegant, or formally posed.

Negative: no direct eye contact with the viewer unless naturally required by the action, no staring at camera, no male-by-default character choice, no all-male avatar series unless explicitly requested, no tight close-up, no head-only portrait, no bust-only crop, no cropped hands, no cropped arms, no shoulders-only framing, no right-facing character, no front-facing symmetrical portrait, no background texture overlaying the character, no all-over halftone texture layer, no halftone background dots on the face, skin, hair, or clothing, no large-area stipple on the character, no screen facing the viewer if the character is using it, no objects rotated toward the viewer just to explain the role, no outdated paper-and-pen default for modern digital roles, no forced analog office scene for product managers, operators, engineers, designers, data specialists, or knowledge workers, no forced symbolic background, no obvious role icon in the background, no background symbol pointing to hand-held object, no repetitive template composition, no normal realistic head-to-body ratio, no neutral expression, no polite professional smile, no formal corporate portrait expression, no photorealism, no 3D render, no modern vector illustration, no clean corporate flat illustration, no cartoon mascot, no modern American cartoon, no superhero comic style, no exaggerated comic-book action style, no stereotype face, no extreme caricature, no distorted anatomy, no complex environment, no busy background, no excessive props, no crowded tabletop, no oversized main prop, no dense uniform fine-dot background, no high-density digital noise, no smooth gradient, no realistic lighting, no glossy surfaces, no watercolor, no anime, no text, no watermark, no UI mockup, no extra people, no reused face, no repeated character template.
```

## 生成后自检

生成后按下面清单检查，并向用户说明主要偏差：

- 是否像 `01-original-references.png` 的同一系列，而不是普通复古海报？
- 是否完整上半身，双臂和双手是否可见？
- 是否整体朝左？是否避免正面证件照？
- 头身比是否略夸张？表情是否轻微滑稽、嘲讽、审视？
- 人物是否仍然像真实人物，而不是卡通吉祥物？
- 背景是否稀疏随机，而不是职业符号墙？
- 背景点阵是否没有压到人物脸、皮肤、衣服上？
- 道具是否符合真实使用逻辑？屏幕是否朝向角色？
- 桌面、屏幕、纸张是否没有抢走人物主体？
- 是否避开 `04-negative-facing-dashboard.png` 和 `05-negative-symbolic-code-review.png` 的问题？

如果多项失败，不要把结果说成成功；明确指出偏差，并给出下一版需要加强的 1-2 条 prompt 约束。
