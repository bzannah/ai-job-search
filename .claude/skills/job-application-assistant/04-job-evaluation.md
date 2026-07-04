# Job Evaluation Framework

<!-- SETUP: Skill match areas and career goals are personalized by running /setup -->

## Scoring Dimensions

Evaluate each job posting against these five dimensions:

### 1. Technical Skills Match (0-100)
How well do the required/preferred skills align with the candidate's capabilities?

| Score | Meaning |
|-------|---------|
| 80-100 | Core requirements are primary skills |
| 60-79 | Most requirements match, 1-2 gaps that are learnable |
| 40-59 | Partial match, significant upskilling needed |
| 0-39 | Fundamental mismatch |

**Strong match areas:** Engineering leadership at scale (org design, strategy, hiring/leveling, OKRs, stakeholder management, investment cases); AI/ML product leadership (production AI, LLMs, RAG, personalisation, evals, guardrails); reliability & delivery transformation (SLOs, CI/CD, MTTR/change-failure reduction); architecture & platforms (distributed systems, event-driven, cloud); AWS/Java/Node.js/TypeScript-centred stacks
**Moderate match areas:** Hands-on IC-level coding expectations in modern niche stacks (Go, Rust, Python-only shops); deep data engineering/warehouse platforms; mobile-first orgs beyond React Native/Swift/Kotlin oversight; regulated-industry compliance leadership (finserv/healthcare specifics are learnable, not proven)
**Weak match areas:** Hardware/embedded/firmware engineering; academic research leadership; pure data-science/research-scientist tracks; security-specialist leadership (CISO-type roles)

### 2. Experience Match (0-100)
Does work history align with what they're looking for?

| Score | Meaning |
|-------|---------|
| 80-100 | Direct experience in the same domain and role type |
| 60-79 | Related experience, transferable skills clear |
| 40-59 | Adjacent experience, would need to make the case |
| 0-39 | Unrelated experience |

**Strong:** Head/Director-level engineering leadership in retail, e-commerce, logistics and B2B SaaS; orgs of 30-70 people; consumer-facing digital products and mobile apps; AI/LLM adoption strategy at enterprise scale; delivery and reliability turnarounds
**Moderate:** VP Engineering / CTO at scale-ups (same competencies, one level up - make the case via 68-person org and MBA); AI-native product companies (strong AI credentials but Sainsbury's is retail-first, not AI-first); fintech/healthtech/other regulated sectors (transferable, not direct)
**Entry-level:** Founding engineer / very early startup CTO-who-codes-all-day roles (career is org-scale leadership, not solo building); domains with zero overlap (hardware, biotech research, defence engineering)

### 3. Behavioral/Culture Fit (0-100)
Does the role and company culture match the behavioral profile?

| Score | Meaning |
|-------|---------|
| 80-100 | Culture strongly matches behavioral preferences |
| 60-79 | Mixed signals but mostly compatible |
| 40-59 | Some friction areas |
| 0-39 | Significant culture mismatch |

**Red flags to research:** Department disorganization, work dominated by maintenance over development, poor chemistry with leadership, culture mismatches. Check reviews, media coverage, LinkedIn connections, and network contacts for insider perspective.

### 4. Location & Logistics (Pass/Fail + Notes)
- London office, hybrid: PASS
- Fully remote (UK-eligible): PASS
- Remote with occasional London office days: PASS
- Full-time on-site (even in London): FLAG (discuss with user)
- Requires relocation or full-time on-site outside London: FAIL (deal-breaker)
- Frequent international travel: FLAG (discuss with user)
- **Salary gate:** base salary below £150K (or a range whose top end is below £150K): FAIL. If no salary is listed, flag as "salary unknown - verify £150K+ base before investing effort"
- **Sector gate:** gambling/betting/casino companies: FAIL (deal-breaker), regardless of all other scores

### 5. Career Alignment & Motivation (0-100)
Does this role advance career goals and contain tasks that energize?

| Score | Meaning |
|-------|---------|
| 80-100 | Strongly aligned with career direction, clear growth path |
| 60-79 | Good role but only partially aligned with long-term goals |
| 40-59 | Decent job but doesn't build toward career goals |
| 0-39 | Dead end or backwards step |

**Career goals:**
- Land a Head of Engineering / Director of Engineering role (or VP Engineering / scale-up CTO) with real scope: org leadership plus technical strategy
- Build AI-forward engineering organisations - roles like Head of AI Engineering or Director of AI Platforms leverage the rare combination of org-scale leadership and production AI/LLM depth
- Keep compounding the leadership track record: bigger scope, measurable commercial outcomes, developing the next layer of engineering leaders

**Motivation filter:** Evaluate not just whether you *can* do the tasks, but whether the tasks will *energize* you. Consider:
- Tasks that energize: driving product delivery through building/developing teams; setting technical strategy with Product and Design; owning AI adoption; going hands-on to hit a key metric; delivery under pressure
- Tasks that drain: caretaker roles with nothing to build or deliver; work with no business success metric attached; pure maintenance/keep-the-lights-on mandates
- Non-task factors: engineering-driven culture, autonomy to organise the team around outcomes, products that consumers or businesses actually use

**Life situation alignment:** Consider personal constraints:
- **Security**: currently employed (Head of Engineering, J Sainsbury PLC) - can be selective; £150K base is the floor, not the target
- **Flexibility**: London hybrid or fully remote only; no relocation
- **Professional development**: scope growth (Director/VP/CTO trajectory) and AI leadership positioning matter more than title alone

### 6. Salary Benchmark (Optional)

If the salary lookup tool is configured (`salary_data.json` exists), look up the company:
```
python salary_lookup.py "<Company Name>" --json
```

If a city is known from the posting, add `--city "<City>"` to narrow results.

Present findings as:
```
### Salary Benchmark
| Metric | Value |
|--------|-------|
| [Category] index | XX.X (+/-X.X% vs baseline) |
| Overall index | XX.X (+/-X.X% vs baseline) |
```

Interpret results relative to the baseline defined in the data file's metadata. For index-based data, higher typically means above-market compensation.

If the salary tool is not configured, skip this section.

## Output Format

Present the evaluation as:

```
## Job Fit Evaluation: [Role] at [Company]

| Dimension | Score | Notes |
|-----------|-------|-------|
| Technical Skills | XX/100 | [brief note] |
| Experience Match | XX/100 | [brief note] |
| Behavioral Fit | XX/100 | [brief note] |
| Location | PASS/FAIL | [brief note] |
| Career Alignment | XX/100 | [brief note] |

**Overall Score: XX/100** (weighted average of scored dimensions)

### Verdict: [Strong Fit / Good Fit / Moderate Fit / Weak Fit / Poor Fit]

### Key Strengths for This Role
- [bullet points]

### Gaps to Address
- [bullet points]

### Recommendation
[1-2 sentences: apply/skip/apply with caveats]

### Company Research Checklist
- [ ] Checked company website (mission, values, recent news)
- [ ] Checked review sites (Glassdoor, Jobindex, etc.)
- [ ] Checked LinkedIn for team size, recent hires, connections
- [ ] Checked media for restructuring, growth, or workplace issues
- [ ] Identified network contacts who may know the team/manager
```

## Weighting
- Technical Skills: 30%
- Experience Match: 25%
- Behavioral Fit: 15%
- Career Alignment: 30%

(Location is pass/fail, not weighted)

## Thresholds
- **Strong Fit** (75+): Definitely apply, tailor everything
- **Good Fit** (60-74): Apply, address gaps in cover letter
- **Moderate Fit** (45-59): Consider carefully, discuss with user
- **Weak Fit** (30-44): Probably skip unless strategic reasons
- **Poor Fit** (<30): Skip

## Pre-Application: Call the Employer (Best Practice)

Before writing the application, consider whether the candidate should call the contact person listed in the posting. **Only call if there are substantive questions** - never call just to "be remembered."

### When to Suggest Calling
- The posting has unclear or ambiguous requirements
- It's unclear which competencies are essential vs. nice-to-have
- The role description is vague about day-to-day tasks
- There's a named contact person who invites questions

### Good Questions to Ask
- "What are the primary challenges in this role?"
- "How is time typically divided across the listed responsibilities?"
- "Which competencies are most critical for success in this position?"
- "What does success look like in the first 6-12 months?"

### Rules for the Call
- Prepare a 30-second "elevator pitch" about your background in case they ask
- The call's purpose is **gathering information**, not delivering a pitch
- Take notes - use what you learn to tailor the application
- Reference the conversation naturally in the cover letter ("After speaking with [name], I was especially drawn to...")
