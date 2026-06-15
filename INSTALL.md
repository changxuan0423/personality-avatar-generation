# Install EverMe Digital Avatar Skill

This repository contains the packaged Codex skill:

- everme-digital-avatar-generation.tar.gz

The archive includes:

- SKILL.md
- install.sh
- assets/ reference images

## Install

Download everme-digital-avatar-generation.tar.gz from this repository, then run:

    cd ~/Downloads
    tar -xzf everme-digital-avatar-generation.tar.gz
    cd everme-digital-avatar-generation
    ./install.sh

Open a new Codex session and ask:

    Use the EverMe digital avatar generation skill. Generate role: nutrition consultant.

For better consistency, ask Codex to read the skill reference assets before generating.

## Notes

The Codex built-in image generation tool does not expose the exact underlying model name or seed parameter in this environment. Results may vary across accounts, sessions, and tool versions. Use the full skill package with assets to reduce style drift.
