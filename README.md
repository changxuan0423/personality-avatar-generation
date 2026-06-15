# EverMe 数字头像生成 Skill

这是 EverMe 数字头像生成的 Codex Skill 安装包，用于生成稳定一致的 EverMe 品牌角色头像。

仓库中的 `everme-digital-avatar-generation.tar.gz` 已包含：

- `SKILL.md`
- `install.sh`
- `assets/` 参考图片资产

## 安装方式

在终端运行：

```bash
curl -L -o everme-digital-avatar-generation.tar.gz https://raw.githubusercontent.com/changxuan0423/everme-digital-avatar-generation/main/everme-digital-avatar-generation.tar.gz
tar -xzf everme-digital-avatar-generation.tar.gz
cd everme-digital-avatar-generation
./install.sh
```

安装完成后，重新打开一个 Codex 会话。

## 调用方式

在 Codex 里直接说：

```text
使用 EverMe 数字头像生成 skill，生成角色：营养顾问
```

或者：

```text
使用 EverMe 数字头像生成 skill，读取 skill 的参考资产，生成角色：增长操盘手
```

## 一致性说明

Codex 当前内置的图片生成工具在这个环境里不会暴露具体底层生图模型名称，也不提供固定 seed 参数。因此，不同账号、不同会话、不同工具版本之间，结果可能存在差异。

为了降低风格漂移，请务必安装完整 skill 包，并让 Codex 读取 `assets/` 中的成功样张与反面案例后再生成。
