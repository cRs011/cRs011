### Cristian Lăcătuș

Software & automation engineer intern at [DeviDevs Technologies](https://devidevs.com), Bucharest.
Final year of Automation & Applied Informatics (AIA) at the Faculty of Hydrotechnical Engineering and Water Resources Management, Technical University of Civil Engineering of Bucharest (UTCB) — the faculty name is misleading, the programme is control systems and software.

### What I work on

- **Things that run without me.** Python jobs under macOS `launchd` that cache with conditional HTTP requests, hold a kernel file lock (`fcntl.flock`) while writing, and are expected to fail quietly and recover rather than need a human.
- **AI coding agents, and the guardrails around them.** Most of my work goes through them, so a good part of the engineering sits in the gates: hooks that block an edit made after reading a fraction of a file, and a checker that verifies documented claims against what is actually on disk.
- **Game systems.** Enemy AI and cover selection for a 2D tank game in Unity and C#, built during academic practice with a team, on a normal branch-and-review workflow.

### Technical stack

- **Code:** Python, C# (.NET), JavaScript / HTML / CSS, Bash / Zsh, SQL, C / C++
- **Systems:** Unix daemons and `launchd`, POSIX file locking, Git branching / pull requests / review, REST APIs and OAuth, Docker, Jira
- **Tools:** Unity 2D, Playwright / Chrome DevTools Protocol, Google Cloud APIs, SQLite, Obsidian, AI coding agents

### Projects

- **[BetterTanks — enemy AI for a 2D tank game](https://crs011.github.io/projects/bettertanks.html)** — a five-state machine (patrol, chase, shoot, defensive, flee) with transitions driven by health thresholds, and cover positions derived from `Collider2D.bounds` instead of hand-placed markers. Roughly 87 hours logged in Jira across 10+ epics. [Source](https://github.com/cRs011/proiectul-Unity-2D).
- **[Answering a coding agent from my watch](https://crs011.github.io/projects/agent-bridge.html)** — a Python daemon that compresses a long agent run into one notification line and a question answerable in a single word, over Telegram for its native watchOS app.
- **[Guardrails for AI coding agents](https://crs011.github.io/projects/ai-agents.html)** — lifecycle hooks and a claim checker, because a wrong function looks exactly like a right one.

### CV & contact

- Portfolio: [crs011.github.io](https://crs011.github.io)
- CV (PDF): [English](CV_Cristian_Lacatus_Software_Engineer.pdf) · [Romanian](CV_Cristian_Lacatus_RO.pdf) — rendered from [`cv/`](cv/) with `bash cv/build.sh`
- CV in Markdown: [`cv.md`](cv.md)
- LinkedIn: [linkedin.com/in/cristi-lacatus-823696294](https://www.linkedin.com/in/cristi-lacatus-823696294/)
- Email: [lacatuscristian8@gmail.com](mailto:lacatuscristian8@gmail.com)
