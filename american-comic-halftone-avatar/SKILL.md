---
name: american-comic-halftone-avatar
description: Use when generating a square single-character role avatar in an expressive but controlled American editorial-comic, vintage newspaper, risograph, screenprint, Ben-Day dot, or halftone style, especially when the result must stay youthful, use varied low-saturation backgrounds, and remain illustrated rather than photorealistic or flat-cartoon.
---

# 美式漫画半调风格头像

生成单人、方形的角色头像。核心目标是：**青年成年人、自然工作瞬间、中等强度且清晰可见的美式社论漫画表情、同批次不重复的低饱和旧报刊背景，以及“高信息密度、低解剖写实度”的人物造型。**

## 参考资产与优先级

生成前查看相关资产，并在 prompt 中说明每张图只控制什么。不要让参考图的年龄、身份或具体服装污染新角色。

| 资产 | 作用 |
| --- | --- |
| `assets/01-face-style-anchor.png` | **最高优先级面部锚点**：只继承紧凑略笨拙的脸型、粗线五官、选择性细节与印刷阴影；绝不继承老年年龄、秃发、胡须、眼镜或身份。 |
| `assets/01-original-references.png` | 供人工检查系列构图、左向工作姿态和印刷语言；不默认作为模型输入。 |
| `assets/06-positive-ai-knows-you.png` | **正面整体案例**：只继承青年感、完整上半身、自然工作逻辑和低饱和色彩关系；不继承具体背景色，也不控制表情强度或脸部画法。 |
| `assets/07-negative-overexpressive-ai-knows-you.png` | **表情上限反例**：只排除强挑眉、强眯眼、歪嘴和戏剧化嘲讽，不能据此把表情压回几乎中性。 |
| `assets/08-negative-flat-face-nutrition-consultant.png` | **造型与色彩反例**：排除空白平涂脸、甜美通用五官及高饱和蓝黄硬对比。 |
| `assets/04-negative-facing-dashboard.png` | **屏幕场景反例**：排除屏幕朝观众和 UI 抢主体。 |
| `assets/05-negative-symbolic-code-review.png` | **符号场景反例**：排除职业符号背景、手持大纸张和道具抢主体。 |
| `assets/02-success-love-strategist.png`、`assets/03-success-nutrition-consultant.png` | 仅供人工检查自然工作瞬间和主体比例，不默认输入。 |

### 固定五图输入

图片工具最多接收 5 张参考图时，严格传入：

1. `01-face-style-anchor.png`：面部抽象与印刷细节锚点，**不继承年龄**。
2. `06-positive-ai-knows-you.png`：青年感、构图和低饱和配色关系，**不继承具体背景色、表情强度、人物身份或脸**。
3. `07-negative-overexpressive-ai-knows-you.png`：只定义表情上限，不定义目标强度。
4. `08-negative-flat-face-nutrition-consultant.png`：只作为平脸与高饱和配色反例。
5. 数字设备或屏幕场景用 `04-negative-facing-dashboard.png`；其他场景用 `05-negative-symbolic-code-review.png`。

发生冲突时按以下顺序裁决：用户明确指定的身份与外貌 > 本 skill 的批次配色和 3/5 表情合同 > `06` 的青年年龄与低饱和关系 > `01-face-style-anchor` 的面部抽象方法。任何参考图都不能覆盖用户指定的性别、族裔或角色特征。

## 固定工作流

1. 提取角色、自然动作、外貌和可见道具；未指定年龄时设为 22–35 岁青年成年人。
2. 在生成本批次第一张图之前，先建立“角色 → 背景色族 → 服装主色 → 设备色 → 强调色”的批次配色表；同批次背景必须视觉上全部不同。单次请求包含多个角色，或同一对话中连续生成同系列角色，都视为同一批次，直到用户明确开启新批次。
3. 选择一个真实发生的工作瞬间。数字岗位优先使用真实朝向的笔记本、手机或平板；屏幕朝角色，观众只见背面或侧面。
4. 为角色分配 3/5 强度的表情组合：一个主要线索加一个辅助线索，并让组合符合角色气质。
5. 查看参考资产，按“固定五图输入”传图；正面图与反面图的用途必须写清。
6. 用下方模板生成一张图。生成后逐项自检；命中关键反例时重试，不能把偏差称为成功。

外貌只写粗粒度图形特征，例如紧凑/宽/窄脸、粗眉、眼镜、发块、胡须或雀斑。不要写“精致轮廓、高鼻梁、立体五官、丰唇、长睫毛、柔顺发丝”等美容肖像词。

## 画面合同

### 人物与构图

- 正方形画幅，厚暖白印刷边框；只出现一个人。
- 展示完整上半身：头、肩、胸、双臂和双手可见，裁切在下肋、腰部或桌面。
- 人物朝左的三分之二侧身；头、躯干、视线和动作方向一致。除非用户明确要求互动，不直视观众。
- 桌面不超过画面约 20%。设备低于胸部主体区，并与双手错开；为两只手各保留清晰轮廓，不让屏幕、桌沿、道具或裁切遮住手。
- 同一批次改变脸型、发型、服装轮廓和气质。除非用户指定，不默认男性。
- 角色名中的“顾问、教练、专家、经理”等词不能引入白发、皱纹、眼袋、松弛皮肤或资深长者气质。

### 面部与人物造型

- 先匹配 `01-face-style-anchor.png` 的抽象层级：**紧凑略笨拙、粗线概括、略带社论漫画感**；避免纤细精致、对称漂亮的时尚脸。
- “避免写实”是简化渲染方法，不是删除信息。保留 3–5 个决定性识别线索，例如眉形、眼镜、鼻嘴轮廓、发际线、胡须/雀斑、下颌标记。
- 用 2–3 个粗粒度印刷阴影面表达眉眼、鼻侧、下颌或颈侧；配合局部断续排线和粗网点。脸不能是单一空白皮肤色块。
- 头发组织为 3–6 个主发块，块内仅留少量粗短线；衣服保留领口、钮扣、少量褶皱，手保留简单指缝。所有细节必须是粗墨点、断续线或低分辨率网点。
- 禁止连续皮肤明暗、精准骨骼建模、摄影式材质、单根发丝、精细睫毛、唇部体积、鼻孔刻画、指节和指甲写实。

### 表情

- 表情强度固定为五档中的 **第 3 档**：漫画性清晰可见，但不进入戏剧化讥讽或夸张卡通变形。
- 默认组合两个协调线索：一个主要线索和一个辅助线索。可组合眉形＋嘴角、眼神收束＋轻微头部倾斜、眼睛张力＋单侧面颊变化；两个线索必须表达同一种情绪。
- 表情随角色变化，可使用好奇、机敏、自信、专注、轻度怀疑、轻微得意或带判断感的半笑。不要让整批角色复用同一种眯眼或半笑。
- `07-negative-overexpressive-ai-knows-you.png` 只定义第 5 档之外的上限。避免强挑眉、强眯眼、撅嘴、明显坏笑和戏剧化侧目，但不要因此退回普通中性表情。

### 印刷语言与色彩

- 采用 1980s newspaper editorial comic / risograph / screenprint：粗深色轮廓、纸张纹理、轻微套印错位、低保真粗颗粒 Ben-Day 网点。
- 网点和排线必须跟随脸、头发、手、衣服与桌面的局部体积；不能套一层全图统一噪点滤镜。
- 使用 3–5 色低饱和旧报刊色盘。固定分工：背景 1 色、服装主色 1 色、设备/道具 1 色、暖米白高光和深蓝褐墨色；最多 1 个小面积强调色。
- 批次第一张生成前先分配全部背景。优先跨色相族选择灰薰衣草、鼠尾草绿、暖米黄、灰蓝、柔和砖粉、浅橄榄、灰青和低饱和杏色；角色更多时再通过冷暖与明度扩展，但每张背景仍须肉眼可区分。
- 同批次不得重复背景色，也不能用名称不同但色相、冷暖和明度近似的颜色冒充变化。记录本批次已使用背景，并在下一张 prompt 中明确排除。
- 先确定每张背景，再分别协调服装、设备和强调色。`06-positive-ai-knows-you.png` 只控制低饱和关系，绝不提供默认灰紫背景。
- 其他可选色域：暖米白、森林绿、砖红/氧化红、灰芥末黄、柔和钴蓝和深蓝褐墨色。
- 深墨色最深、暖米白最亮、背景安静。色彩要克制但仍清晰，不能灰脏、棕褐罩染或浑浊。
- 禁止霓虹、电蓝、荧光黄、明亮原色大色块、等强度红绿撞色和高饱和蓝黄硬对比。蓝黄不是固定配色。

### 场景

- 使用 0–2 个符合真实使用逻辑的道具；不摆职业符号，不用背景图标解释角色。
- 背景是稀疏、安静的色域与粗网点，保留大面积呼吸空间。
- 不出现文字、UI、图表、标签、图标、水印、额外人物、拥挤桌面或复杂环境。

## 常见跑偏与修正

| 跑偏 | 只加强的修正 |
| --- | --- |
| 顾问或专家变老 | 重申 22–35 岁；`01-face-style-anchor` 只控制线条与抽象，不控制年龄。 |
| 人物像时尚写实肖像 | 删除美容与解剖词；恢复“3–5 个识别线索 + 2–3 个粗印刷阴影面”。 |
| 为避免写实而丢光细节 | 保留发际线、眼镜/面部标记、指缝、领口、少量褶皱；只把它们改成粗墨与断续排线。 |
| 表情太弱、像普通插画 | 恢复第 3 档强度，并组合一个主要线索和一个辅助线索。 |
| 表情像嘲讽或挑衅 | 保留两个协调线索，但把幅度从强挑眉、强眯眼或明显坏笑降回中等。 |
| 同批次背景重复 | 停止逐张独立选色；先重排整批背景表，并排除已用或视觉近似的色相、冷暖和明度组合。 |
| 配色灰脏或刺眼 | 恢复 3–5 色角色分工；降低饱和度但保留明度层级，取消红绿等强撞色和高饱和蓝黄。 |
| 手、屏幕或道具逻辑错误 | 降低并侧移设备，为双手留独立轮廓；屏幕朝角色，删除解释职业的道具。 |

## Prompt 模板

替换方括号内容；不要追加与此模板冲突的旧版“高饱和、强嘲讽、平涂脸、真实美容肖像”描述。

```text
Use case: illustration-story
Asset type: square American editorial-comic halftone avatar

Create one square avatar of a 22–35-year-old [角色] in a natural [工作动作] moment. [粗粒度外貌设定]. Show one complete upper body in a left-facing three-quarter pose: head, shoulders, torso, both arms, both hands and clear hand silhouettes visible, cropped at the lower ribs, waist or tabletop. [道具和真实使用方式]. Keep any device below the main chest area and offset from both hands so neither hand is hidden by a screen, prop, desk edge or crop. The person is the clear focal point. No extra people, text, visible UI, charts, labels, icons or symbolic background.

Reference contract: use exactly five inputs from the skill. `01-face-style-anchor.png` is the highest-priority anchor for compact slightly awkward facial abstraction, coarse feature lines, selective illustrative detail and printed shadow planes; copy none of its age, baldness, facial hair, glasses or identity. `06-positive-ai-knows-you.png` contributes youthful adulthood, complete-upper-body composition, low-saturation color relationships and natural work logic only; do not copy its lavender background, quiet expression, identity, face, gender, hair, outfit, props or exact layout. `07-negative-overexpressive-ai-knows-you.png` defines only the upper limit beyond level 3 and must not neutralize the target expression. `08-negative-flat-face-nutrition-consultant.png` excludes blank flat faces, sweet generic features and high-saturation blue-yellow blocking. Use `04-negative-facing-dashboard.png` for screen risk, otherwise `05-negative-symbolic-code-review.png` for symbolic-staging risk.

Face design: graphic young-adult editorial caricature with high information density and low anatomical realism. Use a compact, slightly awkward face rather than a slender, elegant, symmetrical beauty-portrait face. Preserve 3–5 decisive identity cues and render them with coarse ink contours. Build the face from broad planes plus 2–3 coarse printed shadow zones, local broken hatching and low-resolution halftone clusters, so the face is neither an empty flat skin shape nor a realistic portrait. Organize hair into 3–6 graphic masses with a few short internal strokes. Preserve simple finger separations, collar edges, a few garment folds or buttons. Do not use continuous skin gradients, precise bone structure, photographic materials, individual hair strands, detailed eyelashes, lip volume, nostrils, finger joints or nails.

Expression: level 3 of 5 American editorial-comic intensity—clearly expressive, characterful and readable, without theatrical distortion. Combine two coordinated cues: one primary cue and one supporting cue, such as eyebrow angle plus mouth corner, focused eyes plus a slight head tilt, or eye tension plus one-sided cheek compression. Choose a role-specific mood from curious, quick-witted, confident, focused, mildly skeptical, lightly self-assured or knowingly amused. Vary the cue pairing across the batch. Keep both cues moderate; avoid the reference-negative extremes of hard eyebrow arches, severe squinting, pursed lips, a pronounced sneer or dramatic side-eye.

Print style: 1980s newspaper editorial comic, risograph and screenprint with deep navy-brown contours, visible warm paper grain, slight ink misregistration, coarse low-fidelity Ben-Day dots and selective broken hatching. Texture follows local form and shadow; no uniform full-image dot filter, polished photorealism, fashion illustration, cute anime, clean vector art or 3D rendering.

Composition: thick warm off-white printed border, sparse calm background and generous quiet space. Keep desk and equipment subordinate. A laptop or monitor faces the character; the viewer sees only its back or side. Keep both hands readable and unoccluded.

Batch color plan: before generating the first image, assign every character a visually distinct background family and record the used-background list. For this character use [ASSIGNED BACKGROUND], which must differ from every other background in the batch by visible hue, temperature or lightness—not by name alone. Start across dusty lavender, muted sage, warm cream-yellow, grey-blue, dusty rose, pale olive, muted teal and low-saturation apricot; expand with clearly distinct temperature/lightness variants only when needed. Never default to the lavender background from `06-positive-ai-knows-you.png`.

Color: use 3–5 low-saturation aged-newspaper inks with clear tonal hierarchy. After locking the assigned background, choose one harmonious clothing color, one device/prop color, warm cream highlights and deep navy-brown ink; add at most one small accent. Avoid neon, fluorescent yellow, bright primary blocking, equal-strength red-green clashes, muddy grey overlays, sepia cast, glossy gradients and high-saturation blue-yellow contrast.

Avoid: elderly appearance; wrinkles, eye bags or grey hair; front-facing or tightly cropped portrait; direct eye contact; cropped or hidden hands; exaggerated brows, squinting, pursed lips, pronounced smirks or dramatic side-eye; blank flat face; generic sweet cartoon face; elegant beauty face; realistic facial anatomy or materials; full-image dense halftone; viewer-facing screen; oversized props; crowded tabletop; occupational symbols; text; watermark.
```

## 生成后自检

以下 6 项为硬门槛；任一项失败就针对该项重试：

1. **青年感**：明确为 22–35 岁，无老龄化线索。
2. **面部抽象**：接近 `01-face-style-anchor.png` 的紧凑粗线层级；有选择性细节，但无美容写实。
3. **细节密度**：脸有 2–3 个印刷阴影面和 3–5 个识别线索；不是空白平涂，也没有连续真实明暗。
4. **表情强度**：明确达到第 3 档，并包含一个主要线索和一个辅助线索；既不是普通中性表情，也未落入 `07` 的第 5 档夸张。
5. **构图逻辑**：完整上半身、朝左、双手轮廓清楚且未被设备/桌沿/裁切遮挡；屏幕朝角色。
6. **配色与场景**：本批次背景是否与其他每张视觉上全部不同，且服装、设备和强调色围绕该背景重新协调？是否仍低饱和而不灰脏，并且无红绿硬撞、蓝黄高饱和、UI、文字、职业符号或多余人物？

重试时只加强最相关的 1–2 项，不同时重写全部风格条件。
