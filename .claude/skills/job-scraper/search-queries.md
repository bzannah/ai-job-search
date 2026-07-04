# Search Queries for Job Scraper

<!-- Configured for Babagana Zannah: UK engineering leadership roles, London hybrid or remote, £150K+ base -->

## Search Sites

**Note:** the bundled CLI tools in `.agents/skills/` target Danish job portals (Jobindex etc.) and do not apply to this profile. Use WebSearch/WebFetch with the queries below instead. The user's instruction: any source that has fitting roles.

Primary (UK engineering leadership market):
- **linkedin.com/jobs** - largest volume of Head/Director/VP Engineering roles (filter: London / United Kingdom / Remote)
- **otta.com / welcometothejungle.com** - curated tech roles, good salary transparency, strong for scale-ups
- **cord.co** - direct-to-company UK tech hiring
- **indeed.co.uk** and **glassdoor.co.uk** - broad coverage, salary data
- **ATS career pages via Google** - many leadership roles are only on company boards:
  - `site:boards.greenhouse.io`, `site:jobs.lever.co`, `site:jobs.ashbyhq.com`, `site:apply.workable.com`

Secondary:
- Exec search / senior tech recruiters (e.g. leadership practices of major UK tech recruiters) - handled via LinkedIn rather than scraping
- Direct Google searches with `site:` filters for specific target companies

## Query Categories

Queries are grouped by priority. Combine each with location terms ("London", "United Kingdom", "remote UK") where the site supports it.

### Priority 1: Engineering Leadership (Head / Director)

The strongest and most desired career direction.

```
site:linkedin.com/jobs "Head of Engineering" London
site:linkedin.com/jobs "Director of Engineering" London
site:linkedin.com/jobs "Engineering Director" "United Kingdom" remote
site:boards.greenhouse.io "Head of Engineering" London
site:jobs.lever.co "Director of Engineering" London
site:jobs.ashbyhq.com "Head of Engineering" remote UK
"Head of Engineering" OR "Director of Engineering" London hybrid £150,000
```

### Priority 2: AI Engineering Leadership

Leverages the rare combination of org-scale leadership + production AI/LLM depth (RAG, vector search, evals, guardrails).

```
site:linkedin.com/jobs "Head of AI" engineering London
site:linkedin.com/jobs "Director of AI" OR "Director of Machine Learning" London
site:linkedin.com/jobs "Head of AI Engineering" United Kingdom
site:boards.greenhouse.io "Head of AI" OR "Director, AI" London
"Director of AI Platforms" OR "Head of ML Engineering" London OR remote UK
```

### Priority 3: VP Engineering / Scale-up CTO

One level up in scope; make the case via the 68-person org, MBA, and delivery track record.

```
site:linkedin.com/jobs "VP of Engineering" London
site:linkedin.com/jobs "VP Engineering" remote "United Kingdom"
site:jobs.ashbyhq.com "VP of Engineering" OR "CTO" London
"CTO" scale-up OR startup London hybrid fintech OR SaaS OR e-commerce -gambling -betting
```

### Priority 4: Broader Senior Leadership (wider net)

Adjacent titles worth screening when volume is low.

```
site:linkedin.com/jobs "Head of Platform Engineering" London
site:linkedin.com/jobs "Senior Director" engineering London
site:linkedin.com/jobs "Head of Software Engineering" United Kingdom remote
"Head of Mobile Engineering" OR "Director of Platform" London
```

## Hard Filters (apply to every result)

- **Sector:** discard gambling/betting/casino companies immediately (deal-breaker), regardless of fit
- **Salary:** discard roles with a stated base below £150K; flag "salary unknown" roles for verification before any application work
- **Work model:** London hybrid or fully remote (UK-eligible) only; discard relocation and full-time on-site outside London

## Location Filter

- **Ideal:** Central London (hybrid) · Fully remote, UK-eligible
- **Acceptable:** Greater London (hybrid, reasonable commute)
- **Borderline:** Commuter-belt offices (e.g. Reading, Cambridge, Brighton) - only if 1-2 office days per week
- **Too far:** Anything requiring relocation or full-time presence outside London

## Date Filter

Only include jobs posted within the last 14 days, or with an application deadline that has not yet passed. If a posting date cannot be determined, include it but flag as "date unknown". Leadership searches move slower than IC roles - a 21-day window is acceptable when volume is low.

## Adapting Queries

If the user specifies a focus area, select queries from the matching category and also generate 2-3 custom queries for that focus. For example:
- "/scrape AI leadership" -> Priority 2 queries + custom queries around the named focus
- "/scrape CTO" -> Priority 3 queries + stage-specific variants (seed/Series A-C)
