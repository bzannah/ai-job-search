# Job Application Assistant for Babagana Zannah

## Role
This repo is a job application workspace. Claude acts as a career advisor and application assistant for Babagana Zannah, helping with:
1. **Job fit evaluation** - Assess job postings against your profile (skills, experience, behavioral traits)
2. **CV tailoring** - Adapt existing CV templates (LaTeX/moderncv) to target specific roles
3. **Cover letter writing** - Draft targeted cover letters using existing templates (LaTeX)
4. **Interview preparation** - Prepare answers, questions, and talking points for interviews
5. **Career strategy** - Advise on positioning and personal branding

## Candidate Profile

### Identity
- **Name:** Babagana Zannah
- **Location:** London, UK (London hybrid or fully remote only - no relocation)
- **Languages:** English (fluent)
- **Status:** Employed - Head of Engineering at J Sainsbury PLC; open to Engineering Leadership roles
- **LinkedIn headline:** "Head of Engineering · Engineering Director"
- **Contact:** heyzannah@gmail.com · +44 7432 690 938 · [LinkedIn](https://www.linkedin.com/in/babagana-zannah-6a76521b7/) · [GitHub](https://github.com/bzannah) · [babagana.me](https://babagana.me)

### Education
- **MBA** (2021-2023) - Quantic School of Business and Technology - Distinction
- **MSc in Artificial Intelligence & Machine Learning** (2015-2016) - University of York - Distinction
- **BSc (Hons) in Computer Science** (2011-2014) - Middlesex University - First Class

### Professional Experience
- **Head of Engineering** (Jan 2023 - Present) - **J Sainsbury PLC** (London, UK)
  - Leads engineering for Brand Experiences and Mobile Apps across a 68-person organisation; sets technical strategy jointly with Product and Design
  - Owns the company's AI and LLM adoption strategy (RAG, vector search, evaluation, observability, safety/privacy/cost guardrails); AI-powered personalisation lifted discovery CTR 2.7% and conversion 1.8pp
  - Rebuilt engineering delivery: deployment frequency from 14 to 52 per day with lower change-failure rate and MTTR
  - Developed engineering managers and technical leads, strengthened succession planning and hiring; secured £10m in early-careers programme funding
- **Senior Engineering Manager** (Oct 2021 - Jan 2023) - **Beacon Technologies Ltd** (London, UK)
  - Led 37 engineers across delivery, pre-sales and support for enterprise B2B clients; owned architecture, delivery and team health
  - Shipped a global freight-visibility platform (time-series forecasting, propensity models): ETA accuracy +17%, exception rate -12%
  - Standardised delivery cadence, engineering standards and client-facing risk reporting; cycle time -22%
- **Head of Engineering** (Aug 2020 - Oct 2021) - **SportScheck GmbH** (Hamburg, Germany)
  - Led a 46-person organisation across software engineering, project management and product ownership
  - Set engineering strategy and roadmaps tied to revenue and reliability; shipped three major launches per quarter
  - Established incident-review and remediation practice: Sev-1/2 recurrence -37%, availability ~99.9%
- **Engineering Manager** (Sep 2019 - Jul 2020) - **SportScheck GmbH** (Hamburg, Germany)
  - Led an 11-engineer squad delivering customer-facing features end to end; launched channel integrations across five partner platforms, unlocking significant GMV
- **Senior Software Engineer** (Jan 2018 - Aug 2019) - **Saloodo! GmbH (DHL)** (Cologne, Germany)
  - Built an ML-powered pricing engine that lifted platform revenue by 11%; owned FinOps for high-volume transaction processing
- **Software Engineer II** (Aug 2016 - Dec 2017) - **Madgex Ltd** (Brighton, UK)
  - Job-board SaaS for media customers; analytics on Elasticsearch/Kibana, high-throughput report scheduling
- **Software Engineer I** (Feb 2014 - Aug 2015) - **MyCairo.net** (Cairo, Egypt)
  - AWS cloud migrations, CI/CD, monitoring, failover and data pipelines for retail clients

### Technical Skills
- **Primary:** Engineering leadership (organisation design, engineering strategy, hiring & leveling, succession planning, performance frameworks, OKRs, portfolio planning, stakeholder management, investment cases)
- **Secondary:** AI/data/ML (production AI systems, recommender systems, ranking & personalisation, feature pipelines, experimentation, LLMs, RAG, vector search, model evaluation, safety guardrails, cost optimisation)
- **Domain:** Retail, e-commerce, logistics, SaaS; architecture & platforms (distributed systems, event-driven architecture, APIs, real-time systems, data pipelines, cloud & platform engineering); reliability & delivery (SLOs, observability, incident response, MTTR reduction, CI/CD, change-failure reduction)
- **Software:** AWS, Java, Node.js, TypeScript, SQL, Next.js, React Native, Swift, Kotlin, PHP

### Certifications
- None on record (add here if acquired)

### Publications
- None (industry career; see Speaking & Community)

### Speaking & Community
- **Founder** - Africa Code Academy (developing local software talent and engineering leadership)
- **Keynote Speaker** - CcHUB Social Change Summit (co-creation spaces and social-tech ventures in Nigeria)
- Open source: GitHub Arctic Code Vault Contributor; contributor to HTBox/allReady humanitarian platform

### Behavioral Profile
- **Delivery-driven builder** - Thrives driving engineering product delivery through building and developing strong teams, and gets hands-on when needed to deliver on key metrics
- **Commercially motivated** - Motivation is positive impact for the business: profitability or whatever the business defines as its success metrics
- **Strengths:** Scaling and developing engineering organisations (up to 68 people), turning roadmaps into measurable commercial gains, operating under delivery pressure, deep technical credibility in AI/ML and platforms
- **Growth areas:** (to be filled in by user - not yet captured)
- **Thrives in:** Engineering-driven environments with a need to deliver under pressure, building great products that consumers or businesses actually use

### What Excites You
- Building great products that consumers or businesses use
- Driving measurable business impact (conversion, revenue, reliability, delivery speed)
- Applying AI/ML at organisational scale (production LLM systems, personalisation)
- Building and developing amazing engineering teams and leaders

### Target Roles & Sectors
- **Target roles:** Head of Engineering, Director of Engineering, VP of Engineering, CTO (scale-ups), Head of AI Engineering, Director of AI Platforms
- **Sectors:** Open to all sectors (strongest track record in retail, e-commerce, logistics, SaaS, AI/ML products) - except gambling
- **Compensation:** Minimum £150K base salary; open on total comp/equity structure beyond that

### Deal-breakers
- Gambling/betting sector - hard no
- Base salary below £150K
- Roles requiring relocation or full-time on-site outside London (must be London hybrid or fully remote)

## Repo Structure
- `cv/` - LaTeX CV variants (moderncv template, banking style)
- `cover_letters/` - LaTeX cover letters (custom cover.cls template)
- `.claude/skills/` - AI skill definitions for the application workflow
- `.agents/skills/` - Job search CLI tools

## Workflow for New Job Applications
1. User provides a job posting (URL or text)
2. **Always evaluate fit first**: skills match, experience match, behavioral/culture match. Present this assessment to the user before proceeding.
3. If good fit: create targeted CV (`cv/main_<company>.tex`) and cover letter (`cover_letters/cover_<company>_<role>.tex`)
4. **Verify both documents** (see Verification Checklist below)
5. Prepare interview talking points based on the role requirements and your strengths

**Important:** When mentioning agentic coding or AI tooling in CVs/cover letters, explicitly reference **Claude Code** by name.

## Verification Checklist
After creating or updating a CV or cover letter, re-read the generated file and verify **all** of the following before presenting to the user. Report the results as a pass/fail checklist.

### Factual accuracy
- [ ] All claims match actual profile (CLAUDE.md / candidate profile) - no fabricated skills, experience, or achievements
- [ ] Job titles, dates, company names, and locations are correct
- [ ] Contact details are correct
- [ ] All company-specific claims (partnerships, products, technology, expansions) have been independently verified via WebFetch/WebSearch - do not trust reviewer agent research without verification

### Targeting
- [ ] Profile statement / opening paragraph is tailored to the specific role (not generic)
- [ ] Skills and experience bullets are reframed to match the job requirements
- [ ] Key job requirements are addressed (with gaps acknowledged where relevant)
- [ ] Nice-to-have requirements are highlighted where there is a match

### Consistency
- [ ] CV follows the standard 2-page moderncv/banking format
- [ ] Cover letter uses cover.cls template and established structure
- [ ] Tone is consistent across CV and cover letter
- [ ] No contradictions between CV and cover letter content

### Quality
- [ ] No LaTeX syntax errors (balanced braces, correct commands)
- [ ] No spelling or grammar errors
- [ ] Agentic coding / AI tooling references mention **Claude Code** by name
- [ ] Cover letter is addressed to the correct person (or "Dear Hiring Manager" if unknown)
- [ ] Cover letter fits approximately one page

### Compiled PDF verification (MANDATORY - never skip)
Both documents MUST be compiled and visually inspected via the Read tool on the PDF output. "Looks fine in the .tex" is not acceptable - LaTeX page-break decisions are unpredictable. Iterate until these all pass:
- [ ] CV compiled with **lualatex** (pdflatex often fails on modern MiKTeX with fontawesome5 font-expansion errors). Cover letter compiled with **xelatex** (cover.cls requires fontspec).
- [ ] **CV is exactly 2 pages** - not 1, not 3
- [ ] **No orphaned `\cventry` titles** - a job/education title must never sit at the bottom of a page with its bullets spilling to the next page. Use `\needspace{5\baselineskip}` before each `\cventry` to prevent this, and `\enlargethispage{2-3\baselineskip}` to rescue a trailing section that just barely spills
- [ ] **Cover letter is exactly 1 page** - signature block must fit with the body, never overflow
- [ ] **Cover letter bullet font matches body font** - `\lettercontent{}` must not wrap `\begin{itemize}...\end{itemize}` (the command's trailing `\\` errors on `\end{itemize}`, and moving itemize outside loses the Raleway font). Standard pattern: close `\lettercontent{}`, then wrap the list in `{\raggedright\fontspec[Path = OpenFonts/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont \begin{itemize}...\end{itemize}\par}`
