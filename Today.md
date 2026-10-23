---
cssclasses:
  - dashboard
---

# Today

Forgot how something works? → [[TUTORIAL]]

> [!tip] Start here. Pick ONE.
> - **10 min (minimum, always counts):** `Ctrl+P` → *Spaced Repetition: Review flashcards from all notes* (or click the cards icon in the left ribbon). Then write 3 lines in your own words about anything.
> - **25 min (standard):** do the 10 min above, then one block from the focus list below.
>
> Missed days? **No catch-up.** Today's minimum is the whole job. Overdue cards wait, they don't punish.

## Focus

| Topic | Hub | Next step |
| --- | --- | --- |
| AWS AI Practitioner | [[Topics/AWS AI Practitioner/README|AWS AI Practitioner]] | Next unchecked box in the hub's weekly plan |
| Systems Thinking | [[Introduction to]] | Next item in the hub's "Now" section |
| Storytelling | [[Storytelling]] | Next item in the hub's "Now" section |

**Default rotation:** AWS on Mon, Wed, Fri, Sun. Systems Thinking on Tue and Thu. Storytelling on Sat.
Bored with today's topic? Switch. Switching beats stopping.

## A 25-min block is one of these

1. **New material:** new note from a template (`Ctrl+P` → *Templates: Insert template* → `Source` or `Concept`)
2. **Quiz:** open any AI and say `quiz me on <topic>`. Paste the result block into today's daily note.
3. **Draw it:** sketch the idea in Excalidraw without looking at your notes, then compare
4. **Explain-back:** tell an AI `explain-back <concept>`, explain it out loud or in text, and let it find gaps

## Touched this week

```base
filters:
  and:
    - file.inFolder("Topics")
    - file.ext == "md"
    - file.mtime > now() - "1 week"
views:
  - type: table
    name: This week
    limit: 15
    order:
      - file.name
      - file.folder
      - status
```

## Seeds to grow (notes still marked `status: seed`)

```base
filters:
  and:
    - file.inFolder("Topics")
    - status == "seed"
views:
  - type: table
    name: Seeds
    order:
      - file.name
      - file.folder
    sort:
      - property: file.folder
        direction: ASC
    limit: 10

```

## End of session (30 seconds)

Commit and push so browser AIs see your latest notes:

```bash
just sync
```
