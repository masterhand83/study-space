# study-space

A study vault for [Obsidian](https://obsidian.md), built for an ADHD brain and for methods with evidence behind them. It works with Claude, ChatGPT, Gemini and opencode in the browser, desktop app and CLI.

**Forgot how it works? → [[TUTORIAL]]**

## Daily loop

1. Open Obsidian. Today's daily note opens automatically.
2. Tick one: **10 min** (review cards + 3 lines in your own words) or **25 min** (that + one block from [[Today]]).
3. Close with `just sync` so browser AIs see your notes.

Missed days: no catch-up. Today's minimum is the whole job.

## Weekly (15 min)

`Ctrl+P` → *Templates: Insert template* → `Weekly`. Five checkboxes.

## Where things go

```
Today.md          dashboard: focus, what to do, recent notes
Inbox/            new notes land here; sort weekly
Topics/<topic>/   hub note + notes + drawings + cards for that topic
Daily/            one note per day: log, quiz misses, win of the day
_system/          templates, AI setup, scripts, method, markdown reference
AGENTS.md         rules every AI follows here (tutor, never note-writer)
```

## Reference

- Why it works this way: [[STUDY_METHOD]]
- Plugins to install: [[RECOMMENDED_EXTENSIONS]]
- Connecting browser AIs: [[BROWSER_AI_SETUP]]
- Markdown syntax: [[MARKDOWN_SAMPLE]]
- New topic: `just new-topic Topic Name`
- All commands: run `just` in the vault (needs [just](https://github.com/casey/just); without it, run the scripts in `_system/tools/`)
