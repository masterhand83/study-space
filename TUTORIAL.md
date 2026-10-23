---
aliases:
  - How this works
  - Manual
---

# Tutorial: how this vault works

> [!tip] Lost? Do this right now (2 min)
> 1. Open today's daily note (it opens by itself when Obsidian starts)
> 2. Tick **10 min**
> 3. Click the cards icon in the left ribbon and review whatever is due
>
> That's a full study day. Everything below is optional detail.

---

## The whole system in 4 lines

1. **Every day:** 10 min minimum. Review cards, then write 3 lines in your own words.
2. **Good days:** 25 min. Add one block (new material, quiz, drawing, or explain-back).
3. **Every week:** 15 min. Sort the inbox, turn misses into cards, push to GitHub.
4. **Missed days:** no catch-up, ever. Restart with today's 10 min.

---

## Part 1: One-time setup (about 15 min, split across days if you like)

Tick these off here as you go.

- [ ] **Reload Obsidian** (1 min): `Ctrl+P` → *Reload app without saving*
- [ ] **Turn on the 2 plugins** (1 min): they're already in the vault. `Settings → Community plugins → Turn on community plugins`. On a new computer, say **Trust author** when asked.
- [ ] **Put the vault on GitHub** (5 min): [[BROWSER_AI_SETUP]] → step 1
- [ ] **Set up 1 browser AI project** (5 min): [[BROWSER_AI_SETUP]] → step 3. Start with the AI you use most and add the others later.
- [ ] **Test it** (2 min): in that AI, type `quiz me on AWS AI Practitioner`

The TickTick habit **"Study 10 min"** is already set to remind you daily at **15:30**.

---

## Part 2: Every day

### At 15:30 (TickTick pings)

1. Open Obsidian. Today's daily note opens automatically.
2. Tick **one** box: `10 min` or `25 min`.
3. Do it (see below).
4. Write one line under **Win of the day** (even "showed up" counts).
5. In TickTick, check off the habit.

### The 10-min minimum

| Step | Time | How |
| --- | --- | --- |
| 1. Review cards | ~5 min | Cards icon in the left ribbon, or `Ctrl+P` → *Review flashcards from all notes* |
| 2. Three lines in your own words | ~5 min | Pick any note, scroll to **In my own words**, and add 3 lines **without looking at the source** |

When reviewing: try to answer **before** you reveal. Then grade honestly (Hard / Good / Easy). Grading "Easy" when it wasn't only means you'll forget it later.

### The 25-min session = the 10 min + ONE block

Pick whichever block sounds least boring today. Your default topic comes from the rotation:

| Day | Topic |
| --- | --- |
| Mon · Wed · Fri · Sun | AWS AI Practitioner |
| Tue · Thu | Systems Thinking |
| Sat | Storytelling |

Bored? Switch topics. **Switching beats stopping.**

### End of session (30 sec)

In a terminal opened in the vault folder:

```bash
just sync
```

That's your commit and push in one step, so browser AIs see today's notes.

---

## Part 3: The 4 blocks, step by step

### Block A: Learn something new (video, article, course lesson)

1. `Ctrl+N` creates a new note (it lands in `Inbox/`). Name it after the source.
2. `Ctrl+P` → *Templates: Insert template* → **Source**
3. **Before:** write 2 questions you expect it to answer, and guess the answers. Being wrong is fine.
4. **While:** short bullets, in your words only. No copy-paste.
5. **After (close the source):** write everything you remember for 3 min. Then check and mark misses with ❌.
6. Add 2–5 cards in **Cards** (see the card syntax below).
7. Drag the note into the right `Topics/` folder.

### Block B: Quiz with an AI (zero saving needed)

1. Open any AI: Claude, ChatGPT, Gemini (browser or app), or opencode, Claude Code or Gemini CLI in the vault folder.
2. Type a trigger:

| Type this | You get |
| --- | --- |
| `quiz me on <topic>` | 10 short recall questions from your notes |
| `exam <domain>` | AWS-style multiple choice, e.g. `exam domain 2` |
| `exam which-service` | "Which AWS service fits this scenario?" |
| `mix quiz` | 10 questions across all 3 topics (best for memory) |
| `drill <concept>` | Repeats until you get 3 right in a row |

3. Answer each question. The AI waits for you.
4. At the end it gives you a `[!quiz]` block. **Copy it** and paste it under **Quiz misses** in today's daily note.
   - CLI agents can paste it for you. Say "append it to today's note".
5. Done. Don't save the quiz itself, only the misses matter.

### Block C: Explain-back (find your gaps)

1. Type to any AI: `explain-back <concept>`
2. Explain it as if to a smart friend, out loud or typed
3. The AI asks 2–3 tricky follow-ups and names exactly what's missing
4. Fix the gap in your note **in your own words**. When you can explain it with no gaps, change `status: seed` to `status: solid`.

### Block D: Draw it

1. Open a concept note
2. `Ctrl+P` → *Excalidraw: Create new drawing - embed into active document*
3. **Draw from memory first** (boxes, arrows, a loop, a timeline, whatever fits). Then compare with your notes and fix it.
4. Under the embedded drawing, write one caption line: `*Picture: how X causes Y*`. AIs can't see drawings, but they can quiz you on captions.

> [!tip] Systems Thinking + drawing = a perfect match
> Stocks, flows and feedback loops are much easier to learn as diagrams. For any system you study, draw its loops.

---

## Part 4: Flashcards cheat sheet

Cards only work in notes that contain the `#flashcards` tag. The templates already have it under **## Cards**.

| You want | Write |
| --- | --- |
| Simple card | `What does a balancing loop do?::Pushes a system toward a goal or limit` |
| Both directions | `Stock:::An accumulation that changes through flows` |
| Long answer | question, then a line with only `?`, then the answer |
| Fill-in-the-blank | `A story needs a {{conflict}} to create tension` |

Rules for good cards:
- **One fact per card.** Two facts means two cards.
- **Ask why or how**, not just "what is".
- **Make cards from your quiz misses.** Those are your most valuable cards.
- **Never delete** the `<!--SR:...-->` comments that appear after cards. That is your review history.

---

## Part 5: Every week (15 min, pick any day)

1. `Ctrl+P` → *Templates: Insert template* → **Weekly** (in a new note or today's daily note)
2. Follow its 5 checkboxes:
   1. Sort `Inbox/` into topic folders
   2. Turn this week's quiz misses into cards
   3. `mix quiz` with any AI
   4. Write ONE next step per topic in each hub's **Now** section
   5. Run `just sync`

---

## Part 6: AWS exam path

Everything is in the [[Topics/AWS AI Practitioner/README|AWS AI Practitioner]] hub:
- **Weekly plan** (W1 = Oct 19 → W8 = Dec 7). Tick each week when it's done.
- **Domain checklist.** Tick a task only when you can explain it **without notes**.
- **Booking rule:** book the exam once **2 practice exams are ≥80%**. Not by date.
- **Fell behind?** Push the plan back a week. Never double up.

---

## Part 7: When things go wrong

| Situation | Do this |
| --- | --- |
| Missed days or weeks | Nothing to fix. Open today's daily note and do 10 min. |
| 200+ cards overdue | Review only 20 today, then stop. The scheduler sorts it out over a few days. |
| Bored of a topic | Switch topic, or do a drawing block instead |
| Stuck on a concept | `explain-back <concept>`. If still stuck, ask the AI to explain it. Then write it in your own words. |
| Can't start | Do step 1 only: open Obsidian. That's allowed to be the whole day. |
| Tempted to tweak plugins or themes | Read [[RECOMMENDED_EXTENSIONS]] → "Skip these". Then do 10 min of cards instead. |
| Browser AI quizzes on old notes | Run `just sync`. In Claude Projects, also click the sync icon. |
| Lost rhythm entirely | Re-read the "Lost?" box at the top of this file. That's the restart. |

---

## Part 8: Where things live

| Thing | Location |
| --- | --- |
| Dashboard | [[Today]] |
| Daily notes | `Daily/` (one per day, created automatically) |
| Quick captures | `Inbox/` (sorted weekly) |
| Topic notes, drawings, cards | `Topics/<topic>/` |
| Topic plan and progress | `Topics/<topic>/README.md` (older topics may still have a same-name hub) |
| Templates | `_system/templates/` |
| AI rules (paste into AI projects) | [[AGENTS]] |
| Why the system works this way | [[STUDY_METHOD]] |
| Markdown syntax | [[MARKDOWN_SAMPLE]] |

### Adding a 4th topic later

```bash
just create-topic "Topic Name"
```

This creates `Topics/Topic Name/README.md` from the Topic Hub template. Then add `[[Topics/Topic Name/README|Topic Name]]` to the Focus table in [[Today]] and add the topic to the topic table in [[AGENTS]].

---

## The 3 rules that matter most

1. **10 minutes counts.** A short day beats a skipped day.
2. **Answer before you look.** Cards, quizzes, the "After" section, drawings. Retrieving is the learning.
3. **AI is a tutor, not a writer.** It asks and checks. You write.
