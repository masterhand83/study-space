---
aliases:
  - Plugins
---
# Recommended extensions

**Rule: the 2 must-haves are enough.** Add an optional one only when you hit the problem it solves. Each plugin is one more thing to tweak instead of study.

> [!success] The must-haves are already installed and configured in this vault
> Their files live in `.obsidian/plugins/` and travel with git, so every computer gets them.
> **On each computer, once (1 min):** open the folder as a vault → when asked *"Do you trust the author of this vault?"* choose **Trust author and enable plugins**. Or go to `Settings → Community plugins → Turn on community plugins`.
>
> **Updating (monthly is plenty):** `Settings → Community plugins → Check for updates`, then run `just sync` so other computers get the update.

Installing an optional one: `Settings → Community plugins → Browse`, search the name, then **Install** and **Enable**.

## Must-have (already installed)

### 1. Excalidraw (by Zsolt Viczián)
Diagrams and freehand drawing, with mouse or stylus. Drawings are files in the vault, and you can embed them in notes.
- **Use:** `Ctrl+P` → *Excalidraw: Create new drawing - embed into active document*
- **Settings:** none needed. By default, a drawing embedded into a note is saved next to that note, in its topic folder.
- **Habit:** add a one-line caption under each embedded drawing (`*Picture: feedback loop between X and Y*`). AIs can't read drawings, but they can quiz you on captions.

### 2. Spaced Repetition (by Stephen Mwangi, `st3v3nmw`)
Flashcards inside your notes, with review scheduling. Your cards stay in plain Markdown and the scheduling data lives in the notes themselves, so git and GitHub carry it.
- **Card syntax** (in a note tagged `#flashcards`):
  - `What is a stock in systems thinking?::An accumulation that changes over time through flows`
  - Multi-line card: question, then a line with only `?`, then the answer
  - Reversed (both directions): `Term:::Definition`
- **Pre-set in this vault** (`.obsidian/plugins/obsidian-spaced-repetition/data.json`):
  - *Convert folders to decks* is **on**, so each topic folder is its own deck
  - Cloze is **curly braces only**: `{{hidden words}}`. Highlights and bold stay normal text, so `==highlight==` never turns into a card.
  - Algorithm: the default **SM-2-OSR**. FSRS is in the settings too, but the plugin itself labels it experimental and warns about possible data loss. Keep the default for now.
- **Review:** the cards icon in the left ribbon, or `Ctrl+P` → *Review flashcards from all notes*. Reviewing all decks together gives you interleaving for free.
- **Never delete** the `<!--SR:...-->` comments it adds after cards. That is your review history.

## Already built in (core plugins, already on)

| Core plugin | Used for |
| --- | --- |
| **Daily notes** | Opens today's note on launch, using the `_system/templates/Daily` template |
| **Templates** | `Concept`, `Source`, `Weekly`, `Topic Hub`: `Ctrl+P` → *Templates: Insert template* |
| **Canvas** | Concept maps that link real notes: `Ctrl+P` → *Canvas: Create new canvas* |
| **Bases** | The live tables on [[Today]] (notes touched this week, seeds to grow) |
| **Backlinks / Outline / Graph** | Navigation. No setup needed. |

## Optional: add only when you hit the problem

| Problem you notice | Plugin | Notes |
| --- | --- | --- |
| "I keep forgetting to run `just sync`." 2+ weeks of stale pushes. | **Git** (by Vinzent03) | Auto-commit and push every 30 min while Obsidian is open. Desktop only works reliably. |
| You want the newest scheduling algorithm (FSRS) | Nothing new: `Settings → Spaced Repetition → Algorithm → FSRS` | Wait until the plugin stops labelling it experimental. Run `just sync` first so you can roll back. |
| Search misses things in long notes | **Omnisearch** (by scambier) | Better full-text search, including inside PDFs (with an extra add-on) |
| You get a tablet with a stylus | Nothing new. **Excalidraw** handles pen input. | Only consider **Ink** if you want handwriting inline in notes. |

## Skip these (tinkering traps)

| Plugin | Why skip |
| --- | --- |
| Dataview | Core **Bases** already covers what this vault needs |
| Templater | Core **Templates** is enough. Templater invites scripting. |
| Tasks, Kanban, Calendar, Projects | TickTick is your task and habit system. Don't run two. |
| In-Obsidian AI plugins (Copilot, Smart Connections, Text Generator…) | Your AIs already read the vault through GitHub and CLI under one set of rules ([[AGENTS]]). Another AI here would skip those rules and make writing notes for you too easy. |
| Themes, CSS snippets, icon packs | Ten minutes becomes three evenings |
| Zettelkasten prefixer, strict PKM frameworks | Maintaining the system competes with studying (see [[STUDY_METHOD]]) |
