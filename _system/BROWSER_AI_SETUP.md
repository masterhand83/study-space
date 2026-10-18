---
aliases:
  - AI setup
---

# AI setup: browser, desktop and CLI (about 20 min, once)

CLI agents read `AGENTS.md` automatically. Browser and desktop apps read the vault through **GitHub** and need the rules pasted once.

## 1. Put the vault on GitHub (5 min)

1. Create an **empty private** repo on GitHub named `study-space`, with no README.
2. In this folder, run:
   ```bash
   git remote add origin git@github.com:<your-username>/study-space.git
   ```
3. Then run:
   ```bash
   git push -u origin main
   ```
4. From now on, `just sync` commits and pushes in one step.

## 2. CLI agents (0 min, already set up)

| Tool | Reads |
| --- | --- |
| opencode | `AGENTS.md` |
| Codex CLI (ChatGPT) | `AGENTS.md` |
| Claude Code | `CLAUDE.md` → imports `AGENTS.md` |
| Gemini CLI | `GEMINI.md` → imports `AGENTS.md` |

Run them from this folder and type `quiz me on Systems Thinking`.

## 3. Browser and desktop apps (5 min each)

Create **one project per app**, all with the same instructions: the full contents of `AGENTS.md`.

| App | Steps | Caveat |
| --- | --- | --- |
| **Claude** (claude.ai / desktop) | New **Project** → paste `AGENTS.md` into *Project instructions* → *Add content* → **GitHub** → pick the `study-space` repo (or just `Topics/`, `Daily/`, `AGENTS.md`) | Project files are a **snapshot**. After `just sync`, click the **sync** icon in the project. |
| **ChatGPT** (web / desktop) | Connect the **GitHub** app (Settings → Apps/Connectors) and give it access to `study-space` → new **Project** → paste `AGENTS.md` into the project instructions → in a chat, enable GitHub and name the repo | Newly connected repos can take a few minutes to appear. Availability depends on your plan. |
| **Gemini** (web) | New **Gem** → paste `AGENTS.md` as instructions → in a chat, use **+ → Import code** → paste the GitHub repo URL | Snapshot import. Re-import after big changes. These steps are less verified than the other two, so check Google's help if a menu differs. |

All of these are **read-only**: they give you the quiz block, and you paste it into today's daily note.

## 4. Test it (2 min)

In any app, type:

```
quiz me on AWS AI Practitioner
```

If it asks about your notes and ends with a `[!quiz]` block, it's working.
