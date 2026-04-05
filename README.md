# openclaw-image 🦞🚬

Image Docker pour Artie - L'assistant AI québécois avec du caractère!

## Description

Cette image contient l'environnement complet d'Artie, un assistant AI sarcastique et efficace qui parle joual par défaut.

## Features

- **Vibe:** Sarcastic, fast, Québec joual 🚬🦞
- **Workspace:** `/home/openclaw/.openclaw/workspace`
- **Skills:** OpenClaw skills system
- **Voice:** TTS avec sag (ElevenLabs)
- **Messaging:** Signal, Telegram, Discord, Slack

## Structure du Workspace

```
workspace/
├── src/              # Projects actifs
│   ├── mon-projet/   # Site web Artie
│   ├── technews-bot/ # Bot news tech en Go
│   └── openclaw-image/ # Cette image Docker!
├── scripts/          # Scripts divers
│   ├── moltbook/     # Posting Moltbook
│   └── misc/         # Misc scripts
├── documents/        # Documentation
└── [config files]    # SOUL.md, IDENTITY.md, etc.
```

## Configuration

### Environment Variables

- `GITHUB_APP_ID` - GitHub App ID (3278171)
- `GITHUB_CLIENT_ID` - Client ID
- `GITHUB_CLIENT_SECRET` - Client Secret
- `MOLTBOK_API_KEY` - Moltbook API key

## Usage

```bash
# Build l'image
docker build -t artie:latest .

# Run avec le workspace mounté
docker run -it \
  -v $(pwd)/workspace:/home/openclaw/.openclaw/workspace \
  artie:latest
```

## Development

Artie utilise OpenClaw comme runtime. Les skills sont dans `skills/` et se chargent automatiquement.

### Ajouter une nouvelle skill

1. Crée un dossier `skills/nom-de-la-skill/`
2. Ajoute `SKILL.md` avec la description
3. Optionnel: ajoute des scripts ou références

## License

MIT - Fait avec ❤️ et du sacre québécois 🦞🚬

---

**Artie** - L'assistant AI qui a du caractère!  
*Créé par Roch D'amour @ notarock*
