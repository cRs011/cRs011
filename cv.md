# Cristian Lăcătuș

**Software & automation engineer** · Bucharest, Romania
[lacatuscristian8@gmail.com](mailto:lacatuscristian8@gmail.com) · +40 739 645 462
[crs011.github.io](https://crs011.github.io) · [github.com/cRs011](https://github.com/cRs011) · [linkedin.com/in/cristi-lacatus](https://www.linkedin.com/in/cristi-lacatus-823696294/)

PDF: [English](CV_Cristian_Lacatus_Software_Engineer.pdf) · [Romanian](CV_Cristian_Lacatus_RO.pdf). Both are rendered from [`cv/`](cv/) with `bash cv/build.sh`.

### Summary

Final-year Automation & Applied Informatics student, software engineer intern at DeviDevs since July 2026. Most of what I build has no interface: Python jobs that run on a schedule, hold a file lock, retry a slow API and recover without a human. I like the front-end half too, so I am after a junior full-stack role.

### Experience

#### Software Engineer Intern — Automation & Integrations · DeviDevs Technologies *(Jul 2026 – present)*

- **Human-in-the-loop agent bridge.** A Python daemon that lets me supervise a long coding-agent run from my phone or watch: verbose output summarised into one notification line and a question answerable in a single word, with a FIFO execution queue behind it. In daily use.
- **Single-writer concurrency.** An interactive session and a headless job write to the same Markdown vault, so writes are serialised with kernel file locks (`fcntl.flock`) and explicit signal handlers instead of hoping the two never overlap.
- **Scheduled automation and integrations.** Python ETL over Google Workspace APIs (Drive, Sheets, Gmail) running unattended under macOS `launchd`, with conditional HTTP caching and SQLite state, plus Playwright controllers driving Chrome over the DevTools Protocol where there is no API.
- **Guardrails for AI coding agents.** Lifecycle hooks that block an edit made after reading only a fraction of a file, plus a checker that verifies every documented claim against what is actually on disk — currently 537 file references and 29 capabilities, tested by running them.

#### Academic practice — game systems and enemy AI · DeviDevs Technologies / UTCB *(May – Jul 2026)*

- Built the enemy AI and cover system for a 2D tank game in Unity and C#, in a team working on a normal branch, pull request and review workflow — roughly 87 hours logged in Jira across 10+ epics. Continued at the company as an intern afterwards.

#### Operations & customer support · Tucano Coffee *(Jun – Oct 2022)*

- High-volume order flow, stock reconciliation and direct customer contact.

### Selected projects

#### BetterTanks — enemy AI for a 2D tank game · Unity 2D, C#

- A five-state machine — patrol, chase, shoot, defensive, flee — where transitions are driven by health thresholds rather than distance alone: below 50% it looks for cover, below 25% it runs.
- No hand-placed cover markers: for every destructible wall still standing it derives four candidate positions from `Collider2D.bounds` and scores them, weighting proximity to itself ten times higher than distance from the player. `Physics2D` raycasts handle obstacle avoidance on the way there.
- The time went into behaviour, not structure — stopping it oscillating between two hiding spots, and handling the wall being destroyed while it is behind it.
- [Write-up](https://crs011.github.io/projects/bettertanks.html) · [code](https://github.com/cRs011/proiectul-Unity-2D)

#### Answering a coding agent from my watch · Python 3, Unix daemons

- Telegram as transport, chosen for its native watchOS app; the hard part was compressing agent output into something readable on a wrist and a decision answerable in one word. Encryption between the three endpoints is not implemented yet, and the write-up says so.
- [Write-up](https://crs011.github.io/projects/agent-bridge.html)

#### Portfolio site · HTML, CSS, Python

- Hand-written, no framework. Projects render from a single JSON source through a build script that refuses to publish when a page or a media file it claims does not exist on disk.
- [crs011.github.io](https://crs011.github.io)

### Skills

- **Code:** Python, C# (.NET), JavaScript / HTML / CSS, Bash / Zsh, SQL, C / C++
- **Systems:** Unix daemons and `launchd`, POSIX file locking, Git branching / pull requests / review, REST APIs and OAuth, Docker, Jira
- **Tools:** Unity 2D, Playwright / Chrome DevTools Protocol, Google Cloud APIs, SQLite, Obsidian, AI coding agents
- **Spoken:** Romanian (native), English (professional working proficiency, B2–C1)

### Education

**BSc, Automation & Applied Informatics (AIA)** — Faculty of Hydrotechnical Engineering and Water Resources Management, Technical University of Civil Engineering of Bucharest (UTCB), 2023 – 2027 (final year).

- Control systems, differential equations, signal analysis, instrumentation, industrial automation, software engineering.
- EU-CONEXUS micro-credentials, 2024: Neuroscience & AI (Catholic University of Valencia) · Film Literacy (University of Zadar). UTCB is a member of the EU-CONEXUS alliance.
