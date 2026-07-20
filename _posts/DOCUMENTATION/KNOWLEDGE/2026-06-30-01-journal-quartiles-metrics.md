---
title: "Journal Quartiles, Impact Factors and Research Metrics"
summary: "A supervisor-level guide to Q1–Q4, journal and author metrics, indexing databases, responsible interpretation, and auditable reporting."
description: "Understand Q1–Q4, Impact Factor, CiteScore, SJR, SNIP, JCI, h-index, indexing databases, and responsible research assessment."
date: 2026-06-30 11:50:00 +0530
categories:
  - doc-knowledge
tags:
  - quantum-physics
  - journal-metrics
  - research-assessment
  - journal-literacy
  - phd-supervision
permalink: /journal-quartiles-metrics/
hidden: true
---

[← Course roadmap: Journal and Paper Publication System for Quantum Physics]({{ '/quantum-physics-journal-system/' | relative_url }})

This module explains the numbers that appear beside journals and researchers. Its purpose is not to turn publication into a score-chasing exercise. It is to make you sufficiently literate to ask what a number measures, reproduce its logic, identify its blind spots, and stop a PhD scholar from making claims such as “this paper has an impact factor” or “this journal is Q1” without context.

<div class="note-box" markdown="1">
**Dynamic-fact date:** database coverage, journal categories, ranks, quartiles and annual metric values mentioned as current were checked on **30 June 2026**. Recheck the official source immediately before a submission, annual review, promotion file or thesis report. Preserve the metric's **data year**; never silently replace a historical value with the latest one.
</div>

## Learning outcomes

After working through this module, you should be able to:

1. calculate a JCR quartile from a category rank and explain what ties do at a boundary;
2. distinguish a JIF quartile, JCI quartile, CiteScore quartile and SCImago SJR quartile;
3. interpret JIF, five-year JIF, JCI, CiteScore, SJR, SNIP, Eigenfactor and Article Influence without confusing their datasets or time windows;
4. calculate an h-index and explain why its value changes with database, career length and publication set;
5. verify Web of Science, Scopus and DOAJ claims at their original sources;
6. quote a metric in a dated, category-specific and auditable form;
7. recognize metric manipulation and deceptive metric advertising; and
8. use quantitative indicators as supporting evidence rather than as substitutes for reading and expert judgment.

## First build the correct mental model

Five different things are often collapsed into the vague phrase “journal quality.” Keep them separate.

| Object | Example | Question it can answer | Question it cannot answer |
|---|---|---|---|
| Indexing database | Web of Science Core Collection, Scopus | Is this source covered in this database, over these years and in this collection? | Is every published result correct or important? |
| Analytics product | Journal Citation Reports, Scopus Sources, SCImago | What citation indicators and category positions are calculated from a particular dataset? | Is this manuscript a good scope match? |
| Journal metric | JIF, CiteScore, SJR, SNIP, JCI | How has a journal's recent output behaved under a stated formula? | How good is one paper or one author? |
| Article evidence | Citations, expert use, replications, corrections, data or code reuse | What happened to this particular output? | What was each co-author's contribution? |
| Researcher evidence | Portfolio, contribution statements, h-index, mentoring, software, talks | What body of work and scholarly contribution has accumulated? | Can one number establish originality, integrity or future potential? |

A **rank** is an ordered position. A **percentile** expresses relative standing in a comparison group. A **quartile** compresses that standing into one of four broad bands. These are different representations of the same ranking problem; none is a physical constant of the journal.

## Q1, Q2, Q3 and Q4

The word is **quartile**, not calendar quarter. A journal quartile is always relative to:

- a named database or product;
- a named metric;
- a data year; and
- a named subject category.

If any of these is missing, “Q1” is incomplete information.

### The JCR quartile calculation

In Journal Citation Reports (JCR), journals in a category are ordered by a metric such as Journal Impact Factor (JIF). Let

\[
X=\text{the journal's rank in the category}, \qquad
Y=\text{the number of ranked journals in that category},
\]

and

\[
Z=\frac{X}{Y}.
\]

JCR assigns the quartile as follows:

| Quartile | JCR condition | Plain-language position |
|---|---:|---|
| Q1 | \(0<Z\leq 0.25\) | Highest-ranked band |
| Q2 | \(0.25<Z\leq 0.50\) | Upper-middle band |
| Q3 | \(0.50<Z\leq 0.75\) | Lower-middle band |
| Q4 | \(Z>0.75\) | Lowest-ranked band |

These definitions are given in the current [Clarivate JCR glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary).

### Worked example 1: a straightforward category

Suppose the category **Quantum Science & Technology** contains 96 ranked journals in a hypothetical year.

| Journal rank | Calculation | Quartile |
|---:|---:|---|
| 8 | \(8/96=0.0833\) | Q1 |
| 24 | \(24/96=0.2500\) | Q1, exactly at the boundary |
| 25 | \(25/96=0.2604\) | Q2 |
| 48 | \(48/96=0.5000\) | Q2 |
| 67 | \(67/96=0.6979\) | Q3 |
| 85 | \(85/96=0.8854\) | Q4 |

Without ties, this resembles four equal groups. With ties, the number of titles in each quartile may not be equal.

### What ties do

JCR uses **sparse ranking** for equal JIF values. If two journals share rank 24, the next journal receives rank 26 rather than rank 25. Journals with the same JIF in the same category share the same rank and quartile.

In the 96-journal example, suppose positions 24 and 25 have an identical JIF. Both are assigned rank 24:

\[
Z=\frac{24}{96}=0.25,
\]

so both are Q1. The next journal is rank 26 and Q2. Q1 now contains 25 titles rather than exactly 24. This is not an error. Clarivate explains the ranking and boundary effect in [A Primer on Ties in the JCR](https://clarivate.com/academia-government/blog/a-primer-on-ties-in-the-jcr/).

As checked on 30 June 2026, JIF is displayed to one decimal place. This intentionally reduces false precision but creates more numerical ties. A movement of one rank or even one quartile can therefore reflect a crowded boundary rather than a dramatic scientific change.

### JIF percentile

Clarivate also expresses JIF rank as a percentile:

\[
P=\frac{Y-X+0.5}{Y}\times100.
\]

For rank 24 among 96 journals,

\[
P=\frac{96-24+0.5}{96}\times100\approx75.5.
\]

A higher percentile indicates a higher position within that category. The percentile retains more information than the coarse Q1 label: journals near the 76th and 99th percentiles are both Q1 but are not similarly positioned.

### One journal can have several quartiles

A journal can be assigned to more than one category. It then has a separate rank and quartile in every category. For example, a hypothetical title could be:

- Q1 in **Mathematical Physics**;
- Q2 in **Physics, Multidisciplinary**; and
- Q1 by JCI but Q2 by JIF in the same category.

None of these statements is contradictory. They answer different comparisons.

The phrase **best quartile** normally reports only the journal's most favorable category. It can be useful for quick filtering, but it can also conceal less favorable categories. For supervision and formal reporting, record all categories relevant to the manuscript or state explicitly that a best quartile is being quoted.

### “Q1” exists in several systems

| Label seen in practice | Ranking variable | Data source | Important caution |
|---|---|---|---|
| JCR JIF quartile | Journal Impact Factor | Web of Science Core Collection | Category- and year-specific; raw JIF is not field-normalized |
| JCR JCI quartile | Journal Citation Indicator | Web of Science Core Collection | A different, field-normalized ranking from JIF |
| Scopus CiteScore quartile | CiteScore percentile | Scopus | Q1 corresponds to the 75th–99th percentile in a Scopus subject area |
| SCImago quartile | SJR-based position | Scopus-derived SCImago data | Its method and annual snapshot can differ from Scopus Sources |

The [Scopus CiteScore documentation](https://service.elsevier.com/app/answers/detail/a_id/30562/supporthub/scopus/) defines its displayed bands as Q1 75th–99th percentile, Q2 50th–74th, Q3 25th–49th and Q4 0–24th. SCImago itself states that its quartile method is different from Scopus in the [SCImago FAQ](https://www.scimagolab.com/faqs-2/). Therefore, never write “Scopus Q1” if you actually mean “SCImago SJR Q1.”

## Journal Impact Factor

### Formula and time window

For JCR data year \(T\), the Journal Impact Factor is approximately

\[
\mathrm{JIF}_{T}=
\frac{\text{citations during }T\text{ to journal content published in }T-1\text{ and }T-2}
{\text{scholarly items published in }T-1\text{ and }T-2}.
\]

The denominator principally contains articles, reviews and proceedings papers classified as scholarly or citable items. The numerator contains citations in the JCR year to content from the two target years. Clarivate therefore calls JIF a functional approximation to a mean citation rate rather than a strict article-by-article average. See the [JCR glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary).

### Worked example 2: calculating JIF

Consider a hypothetical journal, *Foundations of Quantum Dynamics*.

| Quantity | Count |
|---|---:|
| 2023 citable items | 78 |
| 2024 citable items | 82 |
| Citations received during 2025 to its 2023–2024 content | 520 |

Then

\[
\mathrm{JIF}_{2025}=\frac{520}{78+82}=\frac{520}{160}=3.25.
\]

Under the current one-decimal display, this would appear as approximately **3.3**.

The correct interpretation is:

> During 2025, the journal's content from 2023 and 2024 received approximately 3.3 citations per citable item under the JCR method.

It does **not** mean:

- every paper received 3.3 citations;
- a new paper will receive 3.3 citations;
- a paper in the journal has “impact factor 3.3”;
- the journal is 3.3 times better than a journal with JIF 1.0; or
- the number measures correctness, novelty or peer-review quality.

Citation distributions are usually highly skewed. A few review papers or timely articles may supply a large fraction of the numerator, while many papers receive fewer citations than the mean. Examine the journal's citation distribution, median and uncited-item information when available.

### Numerator–denominator asymmetry

The numerator can include citations to journal content that is not counted as a citable item in the denominator. This matters when a journal publishes highly cited editorials, letters or other front matter. CiteScore was designed with a more symmetric set of included document types, but no average eliminates differences in article mix.

### Five-year JIF

The five-year JIF replaces the two publication years with the preceding five:

\[
\mathrm{5YJIF}_{T}=
\frac{\text{citations during }T\text{ to content from }T-1\ldots T-5}
{\text{citable items from }T-1\ldots T-5}.
\]

Suppose the same hypothetical journal received 1,340 citations during 2025 to 340 citable items published in 2020–2024:

\[
\mathrm{5YJIF}_{2025}=\frac{1340}{340}\approx3.94.
\]

Its five-year value exceeds its two-year JIF, suggesting that citations continue accumulating after the short JIF window. This can be relevant to mathematical and theoretical work whose influence develops slowly. Clarivate introduced the five-year measure for fields with longer times to peak citation; see [The Many Flavors of the Journal Impact Factor](https://clarivate.com/academia-government/blog/many-flavors-journal-impact-factor/).

Do not automatically prefer the larger number. The two indicators describe different citation windows.

### Current retraction treatment

Beginning with the 2025 JCR release using 2024 data, Clarivate excludes citations **to and from** retracted or withdrawn content from JIF-related numerators. Retracted articles remain in the article count so that retraction does not erase the publication record. This policy was current when checked on 30 June 2026. See [Clarivate's retraction-policy explanation](https://clarivate.com/academia-government/blog/journal-citation-reports-2025-addressing-retractions-and-strengthening-research-integrity/).

## Journal Citation Indicator

The Journal Citation Indicator (JCI) is Clarivate's journal-level, field-normalized indicator. It averages Category Normalized Citation Impact for articles and reviews from the preceding three years, controlling for:

- subject category;
- document type; and
- year of publication.

Its reference point is easy to interpret:

| JCI | Interpretation |
|---:|---|
| 1.0 | Category-expected citation impact |
| 1.4 | 40% above the category-expected citation impact |
| 2.0 | Twice the category-expected citation impact |
| 0.5 | Half the category-expected citation impact |

JCI helps when citation cultures differ, but it still averages a journal's papers. It does not make an individual article 40% better, and the construction of categories remains a modeling choice. See [Clarivate's JCI introduction](https://clarivate.com/blog/introducing-the-journal-citation-indicator-a-new-field-normalized-measurement-of-journal-citation-impact/) and the current [JCR glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary).

## CiteScore

CiteScore is calculated from Scopus. Its current method uses the same four calendar years for the citing and published material. For data year \(T\):

\[
\mathrm{CiteScore}_{T}=
\frac{\text{citations in }T-3\ldots T\text{ to included documents published in }T-3\ldots T}
{\text{included documents published in }T-3\ldots T}.
\]

The five included peer-reviewed document types are:

- articles;
- reviews;
- conference papers;
- data papers; and
- book chapters.

Editorials, errata, letters, notes, news items and short surveys are excluded from both sides of the calculation. Articles in press are also excluded. The complete current method is documented in the [Scopus CiteScore FAQ](https://service.elsevier.com/app/answers/detail/a_id/30562/supporthub/scopus/).

### Worked example 3: CiteScore and percentile

Suppose *Foundations of Quantum Dynamics* published 220 included documents during 2022–2025. Those documents received 770 citations during the same period:

\[
\mathrm{CiteScore}_{2025}=\frac{770}{220}=3.5.
\]

If Scopus gives it a CiteScore percentile of 82 in **Atomic and Molecular Physics, and Optics**, it ranks as high as or higher than approximately 82% of titles in that subject area and is therefore Q1 by CiteScore percentile.

The raw CiteScore 3.5 is not field-normalized. The percentile supplies the within-field context. A journal gets a separate percentile for every Scopus subject area in which it is classified.

### Static CiteScore and CiteScore Tracker

- **Annual CiteScore** is a fixed value suitable for formal reporting.
- **CiteScore Tracker** is updated monthly and can move as records and citations enter Scopus.

Label Tracker values explicitly. Do not mix a provisional Tracker value with a final annual quartile.

## SJR and SNIP

### SCImago Journal Rank

SJR treats citations as a network of prestige transfer. A citation from an influential source carries more weight than one from a less influential source. The citing journal distributes its prestige across the references it makes, which also reduces some differences between citation-dense and citation-sparse fields. The logic is similar to PageRank.

Practical interpretation:

- higher SJR means greater prestige-weighted citation influence;
- SJR is size-normalized, unlike a raw total citation count;
- its numerical units are not “citations per paper”; and
- category position and trend are usually more intelligible than the raw number alone.

See the official [Scopus explanation of SJR](https://service.elsevier.com/app/answers/detail/a_id/14883/supporthub/scopus/kw/sjr/) and the [SCImago methodology paper](https://www.scimagojr.com/files/SJR2.pdf).

### Source Normalized Impact per Paper

SNIP is calculated by Leiden University's Centre for Science and Technology Studies using Scopus data. It applies **citing-side normalization**. A citation from a paper with a long reference list receives less weight than a citation from a field in which reference lists are short. This corrects for different citation opportunities without depending entirely on rigid subject categories.

SNIP is useful for contextual comparison across fields, but the [CWTS methodology and interpretation guide](https://www.journalindicators.com/methodology) warns that:

- journal citation distributions are skewed;
- one or a few outliers can strongly affect the value;
- small journals fluctuate more; and
- stability intervals should be considered with the point estimate.

SJR and SNIP answer different questions. SJR emphasizes the prestige of the citation network; SNIP emphasizes differences in citation potential.

## Eigenfactor and Article Influence

Eigenfactor metrics use a five-year journal citation network. Citations from influential journals receive more weight, and journal self-citations are removed.

| Indicator | What it measures | Size effect | Reference value |
|---|---|---|---|
| Eigenfactor Score | Total influence in the journal network | Generally rises with journal size | Compare within the same dataset and year |
| Normalized Eigenfactor | Rescaled total influence | Still represents journal-level influence | Average journal = 1 |
| Article Influence Score | Influence per article over the five-year network | Normalized for journal output | Mean article = 1 |

Thus a large journal may have a high Eigenfactor because it publishes much influential material in total, while a smaller journal may have a high Article Influence because its average article is influential. Clarivate provides current definitions in the [JCR glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary) and a readable comparison in [A Closer Look at the Eigenfactor Metrics](https://clarivate.com/academia-government/blog/closer-look-eigenfactor-metrics/).

## Citation counts and the h-index

### Article level

An individual article has a **citation count**, not its own meaningful h-index. An h-index requires a set of publications. Article evidence can include:

- citations, interpreted by field and age;
- substantive use of a theorem, method or model;
- independent replication or extension;
- reuse of code or data;
- discussion in reviews, policy or teaching;
- corrections or retractions; and
- expert reading of the scientific contribution.

A citation count does not reveal whether the citation is supportive, critical, perfunctory or erroneous.

### Author h-index

For a set of papers ordered by decreasing citations, the h-index is the largest integer \(h\) for which at least \(h\) papers have each been cited at least \(h\) times.

Suppose an author's citation counts are:

\[
42,\ 18,\ 12,\ 9,\ 7,\ 4,\ 3.
\]

| Rank of paper | Citations | At least as many citations as rank? |
|---:|---:|---|
| 1 | 42 | Yes |
| 2 | 18 | Yes |
| 3 | 12 | Yes |
| 4 | 9 | Yes |
| 5 | 7 | Yes |
| 6 | 4 | No |

The h-index is therefore **5**. Five papers have at least five citations each; there are not six papers with at least six citations each. The definition was proposed by physicist J. E. Hirsch in the [original PNAS paper](https://doi.org/10.1073/pnas.0507655102).

### Journal h-index

The same arithmetic can be applied to all publications in a journal. A journal h-index of 120 means that at least 120 indexed journal items have each received at least 120 citations in the chosen database and coverage period.

This strongly favors:

- older journals;
- journals with large publication volumes;
- fields with high citation density; and
- databases with broader document and citation coverage.

It is therefore unsuitable as a clean comparison between a young specialist title and an old, high-volume multidisciplinary title.

### Why h-index values differ

An author's Google Scholar, Scopus and Web of Science h-indices commonly differ because each database covers a different set of journals, books, proceedings, preprints and citing documents. Profiles can also be split, merged incorrectly or contain duplicate records.

Google Scholar defines journal h5-index over the last five complete calendar years and explains its coverage in [Google Scholar Metrics](https://scholar.google.com/intl/in/scholar/metrics.html). Scopus permits date filtering and exclusion of self-citations in its h-graph; see the [Scopus h-graph guide](https://service.elsevier.com/app/answers/detail/a_id/11214/supporthub/scopus/kw/h%2Bindex/).

Always report **database + value + coverage or access date**. Never combine an h-index from one database with a citation total from another as though they form one internally consistent profile.

### What h-index leaves out

The h-index:

- tends to increase with career age and rarely falls except after database corrections;
- does not correct for discipline or career breaks;
- does not distinguish first, corresponding, supervisory or minor authorship;
- can reward participation in very large collaborations;
- ignores citations above the threshold once a paper is inside the h-core;
- says little about uncited or weakly cited papers outside the h-core; and
- can be manipulated through inappropriate self-citation or citation coordination.

For a PhD scholar, a low h-index may mean only that the work is recent. For a supervisor, a high h-index cannot substitute for identifying actual contributions. [DORA's guidance on quantitative indicators](https://sfdora.org/wp-content/uploads/2024/05/DORA_indicators_guidance.pdf) discusses these limitations directly.

## Databases, collections and indexing claims

### Web of Science Core Collection and JCR

Web of Science Core Collection is a bibliographic and citation database. Journal Citation Reports is the associated journal-analytics product.

Clarivate currently uses 24 quality criteria and four additional impact criteria. Journals meeting the quality criteria enter the **Emerging Sources Citation Index (ESCI)**. Journals also meeting the impact criteria may enter **Science Citation Index Expanded (SCIE)**, **Social Sciences Citation Index (SSCI)** or **Arts & Humanities Citation Index (AHCI)**.

As verified on 30 June 2026, ESCI journals can also receive a JIF and participate in unified science and social-science category rankings. Therefore:

> “The journal has a JIF” does not prove that it is in SCIE.

Check the exact collection, coverage and status in the free [Web of Science Master Journal List](https://mjl.clarivate.com/home?PC=B). Clarivate describes the current distinctions in its [journal evaluation process and selection criteria](https://clarivate.com/academia-government/scientific-and-academic-research/research-discovery-and-referencing/web-of-science/web-of-science-core-collection/editorial-selection-process/journal-evaluation-process-selection-criteria/).

### Scopus

Scopus is a separate abstract and citation database. Its Content Selection and Advisory Board evaluates journals using technical, editorial and citation criteria. Journals are monitored after inclusion and may be placed on hold or have future coverage discontinued.

Verify:

- exact title and ISSN;
- source type;
- active or discontinued status;
- coverage years; and
- current subject classifications.

Use [Scopus Sources](https://www.scopus.com/sources) or the source lists linked from [Scopus content coverage](https://www.elsevier.com/en-au/products/scopus/content). A discontinued journal's older records may remain in Scopus as part of the scholarly record, so finding an old article in a search is not proof of current coverage.

### DOAJ

The Directory of Open Access Journals curates **fully open-access** journals against transparency and publishing-practice requirements. It is not a citation index or ranking table.

- Presence in DOAJ is useful evidence for a fully OA title.
- Absence from DOAJ is not suspicious for a subscription or hybrid journal because those models are outside its scope.
- A DOAJ logo on a website is not proof; open the title's actual DOAJ record.

See the current [DOAJ Guide to applying](https://doaj.org/apply/guide/) and joint [Principles of Transparency and Best Practice in Scholarly Publishing](https://doaj.org/apply/transparency/).

### Google Scholar, INSPIRE-HEP and arXiv

Google Scholar is broad discovery infrastructure, not a selective journal whitelist. Being discoverable there does not prove a journal passed a formal editorial evaluation.

For high-energy and related theoretical physics, [INSPIRE](https://inspirehep.net/about) is an important discipline-specific literature and citation service. [arXiv](https://info.arxiv.org/about/index.html) is a preprint repository. These services are central to discovery and dissemination, but neither a preprint record nor a citation profile supplies journal peer-review certification by itself.

## How to quote a metric correctly

### Minimum reporting rule

Record:

> **journal + metric system + metric name + data year + subject category + rank/total + percentile or quartile + official source + access date**

### Good examples

> In the 2025 JCR data, Journal X had JIF 3.3 and ranked 18/96, Q1, in Category Y. Source: Journal Citation Reports; accessed 30 June 2026.

> In Scopus CiteScore 2025, Journal X had CiteScore 3.5 and an 82nd percentile, Q1, in Subject Area Z. Source: Scopus Sources; accessed 30 June 2026.

> SCImago reported SJR 0.84 and SJR quartile Q2 for Journal X in Category Z for 2025; accessed 30 June 2026. This is an SJR quartile, not a JCR JIF quartile.

> Author A had a Scopus h-index of 14 on 30 June 2026. The Google Scholar value was not substituted because the databases have different coverage.

### Bad examples and corrections

| Bad statement | Problem | Correct form |
|---|---|---|
| “My paper has impact factor 4.2.” | JIF belongs to a journal and year, not an article | “The paper appeared in a journal whose 2025 JIF was 4.2.” |
| “Journal X is Q1.” | System, metric, year and category absent | State all four and give rank or percentile |
| “Its current impact factor was 3.0 when my 2018 paper appeared.” | Latest metric substituted for historical context | Quote the relevant historical data year or clearly say it is the latest value |
| “It is indexed internationally.” | No database, collection, status or years | Name and verify each index |
| “Scopus gives it Q1.” | May confuse CiteScore and SCImago SJR | Say “CiteScore Q1 in Scopus” or “SJR Q1 in SCImago” |
| “A JIF of 6 means the journal is twice as good as JIF 3.” | Citation averages are not linear quality units | Compare citation behavior in context and assess quality directly |

### Data year versus release year

Annual metrics are normally published after the data year has ended. As checked on 30 June 2026, the **2026 JCR release reports 2025 citation data**. Preserve both labels when institutional forms are ambiguous:

> 2025 JIF, released in the 2026 Journal Citation Reports.

The release is documented by [Clarivate's 2026 JCR announcement](https://clarivate.com/academia-government/blog/journal-citation-reports-2026-supporting-transparent-responsible-journal-evaluation/).

## What the metrics are good for

| Decision question | Useful supporting indicator | Why |
|---|---|---|
| Which journals have relatively high recent citation activity in one JCR field? | JIF rank, percentile and distribution | Category-specific short-window context |
| Does influence accumulate slowly? | Five-year JIF and cited half-life | Longer citation window |
| How does recent influence compare after field normalization? | JCI or SNIP | Adjusts for citation-culture differences by different methods |
| What does Scopus show with a transparent symmetric window? | CiteScore and CiteScore percentile | Four-year document and citation window |
| Which journals occupy influential citation-network positions? | SJR, Eigenfactor, Article Influence | Prestige-weighted network views |
| What is the citation threshold across a body of work? | h-index with database and career context | Compact productivity–citation summary |
| Is this individual paper sound and important? | Expert reading, methods, evidence, article-level use | No journal metric answers this question |

Use at least two complementary indicators where quantitative context is genuinely needed. More importantly, combine them with scope, readership, editorial practice, costs, timing, recent comparable papers and direct scientific judgment.

## Limitations and routes to manipulation

### Structural limitations

| Limitation | Consequence |
|---|---|
| Skewed citation distributions | A mean can be dominated by a few papers and poorly predict a typical article |
| Field differences | Raw JIF, CiteScore and citation counts are not safely comparable across specialties |
| Short windows | Slow-maturing mathematical or theoretical work can appear weak too early |
| Article-type differences | Reviews usually attract more citations than specialist original papers |
| Database coverage | Language, region, books, proceedings and older references are represented differently |
| Category construction | Interdisciplinary journals may be helped or harmed by the chosen comparison set |
| Small sample volatility | A few papers can move a small journal sharply from year to year |
| Citation meaning | A citation can praise, criticize, repeat, correct or merely mention |
| Career age | Cumulative author indicators favor longer uninterrupted careers |
| Team size | Citation indicators rarely identify the intellectual contribution of each author |

### Manipulation and perverse incentives

Metrics can be influenced through:

- excessive journal self-citation;
- coercive requests to cite the target journal;
- reciprocal citation between journals or groups;
- citation stacking and citation cartels;
- publishing many citation-rich reviews;
- strategic handling of editorials and citable-item classification;
- large special-issue programs with concentrated cross-citation;
- unnecessary author self-citation;
- duplicate profiles or deliberately unclean author records; and
- advertising unofficial “impact factors” that imitate Clarivate terminology.

Clarivate can suppress a JIF when data show excessive self-citation or citation stacking. Suppression of a metric and removal from Web of Science are separate decisions. See [Clarivate's suppression-policy explanation](https://clarivate.com/academia-government/blog/refresher-course-jcr-journal-suppression-policies/).

Scopus also monitors outlier publication and citation behavior and can re-evaluate or discontinue a source; see its [content policy and re-evaluation process](https://www.elsevier.com/en-au/products/scopus/content/content-policy-and-selection).

Do not assume that all self-citation is improper. A continuing research program legitimately cites prior work. The test is relevance, proportionality and intellectual necessity—not whether the citation changes a metric.

## Predatory and deceptive metric claims

Before trusting a badge or invitation:

1. match the exact title and ISSN in the [ISSN Portal](https://portal.issn.org/);
2. verify Web of Science coverage in the [Master Journal List](https://mjl.clarivate.com/home?PC=B);
3. verify Scopus status and coverage years in [Scopus Sources](https://www.scopus.com/sources);
4. for a fully OA title, open its actual [DOAJ](https://doaj.org/) record;
5. verify claimed COPE or OASPA membership in the organizations' directories rather than trusting a copied logo;
6. inspect editor identities, recent papers, peer-review policy, fees, licences, archiving and correction policy; and
7. reject guaranteed acceptance, implausibly short review promises and invented metrics such as “Universal,” “Global” or “Cosmos” impact factors presented as if they were JIF.

Open access and article processing charges are not themselves warning signs. Deception, hidden terms and absence of real editorial service are the problem. Use the current [Think. Check. Submit. journal checklist](https://thinkchecksubmit.org/wp-content/uploads/2023/06/ThinkCheckSubmit-Journals-English.pdf).

## Responsible assessment: DORA and Leiden

### DORA

The central principle of the [San Francisco Declaration on Research Assessment](https://sfdora.org/read/) is that journal-based metrics should not be used as substitutes for assessing an individual article's quality, a researcher's contribution, or candidates in hiring, promotion and funding decisions.

For a scholar, examine the work itself: originality, correctness, rigor, contribution, openness, reuse, intellectual independence and response to error. A journal metric may describe venue context, but it does not transfer automatically to every paper or author.

DORA's 2024 [guidance on quantitative indicators](https://sfdora.org/wp-content/uploads/2024/05/DORA_indicators_guidance.pdf) further emphasizes that indicators are proxies, need contextualization, can conceal variation and should not replace expert judgment.

### The Leiden Manifesto

The [Leiden Manifesto](https://www.nature.com/articles/520429a) supplies ten operating principles:

1. quantitative evaluation should support qualitative expert assessment;
2. measure performance against the mission of the researcher, group or institution;
3. protect excellence in locally relevant research;
4. keep data collection and analysis open, transparent and simple;
5. allow those evaluated to verify data and analysis;
6. account for variation in publication and citation practice by field;
7. base assessment of individuals on qualitative judgment of their portfolios;
8. avoid misplaced concreteness and false precision;
9. recognize that indicators alter the behavior of researchers and institutions; and
10. scrutinize indicators regularly and update them.

For PhD supervision, this means that a paper in a modest specialist journal can represent a major intellectual achievement, while a minor contribution to a highly cited collaboration may not demonstrate independent research ability. Read the paper and record the scholar's contribution.

## Worked example 4: choosing between two journals

A scholar has derived a rigorous spectral result for a non-Hermitian quantum Hamiltonian. Two hypothetical targets are available:

| Evidence | Journal Alpha | Journal Beta |
|---|---|---|
| JCR category | Physics, Multidisciplinary | Mathematical Physics |
| JIF quartile | Q1 | Q1 |
| JIF percentile | 91 | 78 |
| Five recent close papers | 0 | 6 |
| Typical paper style | Short, broad claims | Long proofs and detailed spectral analysis |
| Intended readers | Broad physics audience | Exact mathematical-physics community |
| Length compatibility | Poor | Strong |

A ranking-only strategy picks Alpha. A publication strategy picks Beta unless the result has a genuinely broad conceptual consequence that can be communicated in Alpha's format. Beta's readers are more likely to verify, use and cite the theorem. Both are Q1, yet the decisive evidence is scope, article type and audience.

## Worked example 5: an apparent quartile contradiction

A journal is reported as:

- JCR JIF Q2 in **Physics, Multidisciplinary**, 2025 data;
- JCR JCI Q1 in the same category;
- Scopus CiteScore Q1 in **Physics and Astronomy (miscellaneous)**, 2025; and
- SCImago SJR Q2 in its 2025 category.

This can occur because:

1. JIF and JCI rank different metrics;
2. Web of Science and Scopus cover different title and citation sets;
3. category boundaries differ;
4. CiteScore and SJR use different calculations; and
5. ties and update schedules affect rank bands.

The intelligent response is not to select the most flattering badge. Record every relevant statement with its source and use the metric appropriate to the question.

## Supervisor's metric-audit worksheet

Copy this worksheet into the scholar's journal-shortlist record. Complete it separately for each candidate journal.

### Identity and scope

- **Exact journal title:**
- **Print ISSN / eISSN:**
- **Official journal URL:**
- **Publisher or learned society:**
- **Manuscript topic and article type:**
- **One-sentence scope match:**
- **Five genuinely comparable papers from the last two years:**

### Web of Science and JCR

- **Master Journal List record checked on:**
- **Collection:** ESCI / SCIE / SSCI / AHCI / not found
- **Coverage or status note:**
- **JCR data year:**
- **JIF:**
- **JIF category 1 — rank/total, percentile, quartile:**
- **JIF category 2 — rank/total, percentile, quartile:**
- **Five-year JIF:**
- **JCI and JCI category position:**
- **Citation distribution or unusual concentration noted:**

### Scopus and Scopus-derived indicators

- **Scopus Sources record checked on:**
- **Active, on hold or discontinued:**
- **Coverage years:**
- **CiteScore data year and value:**
- **Relevant subject-area rank, percentile and quartile:**
- **SJR year and value:**
- **SNIP year and value or stability note:**
- **SCImago value clearly separated from Scopus CiteScore:** yes / no

### Trust, access and logistics

- **DOAJ record if fully OA:**
- **Peer-review process stated clearly:**
- **Editorial board verified:**
- **APC, page or colour charges and taxes:**
- **Waiver or institutional agreement:**
- **Preprint policy:**
- **Copyright and licence:**
- **Archiving policy:**
- **Median decision and publication times, if documented:**
- **Correction, retraction and complaints policy:**
- **Any solicitation, cloned-domain or fake-metric red flag:**

### Decision

- **Scientific fit:** strong / moderate / weak
- **Audience fit:** strong / moderate / weak
- **Editorial-threshold fit:** ambitious / realistic / unsafe
- **Affordability and policy fit:** acceptable / unresolved / unacceptable
- **Metric context in one dated sentence:**
- **Why this journal is better for this manuscript than the alternatives:**
- **Final position:** ambitious target / realistic target / safe target / reject from shortlist

The worksheet deliberately puts identity and scope before metrics. A complete metric row cannot repair a weak scientific fit.

## Self-test

### Questions

1. A journal ranks 18th among 120 journals in a JCR category. What is \(Z\), and what is its quartile?
2. A journal is JCR Q2 and Scopus CiteScore Q1 in the same year. Must one database be wrong?
3. A paper appeared in a journal with JIF 5.0. What can you infer about the paper's own citations and quality?
4. Why can a journal have Q1 and Q2 labels simultaneously within JCR?
5. Which are field-normalized: raw JIF, raw CiteScore, JCI, CiteScore percentile and SNIP?
6. An author has citation counts \(30, 15, 10, 8, 5, 5, 2\). What is the h-index?
7. Does a current JIF prove that a journal is in SCIE?
8. What minimum context should accompany a quartile claim?
9. Name three ways a journal metric may be manipulated or distorted.
10. Why is a five-year JIF potentially useful for theoretical or mathematical physics?
11. Which metric would you inspect for prestige-weighted total journal influence, and which related metric is per article?
12. What should a supervisor do if a specialist Q2 journal has an exact audience match while a broad Q1 journal has published no comparable work?

<details markdown="1">
<summary><strong>Answers</strong></summary>

1. \(Z=18/120=0.15\). Since \(0<Z\leq0.25\), the journal is Q1 in that category and year.
2. No. The databases, source sets, category schemes and metrics differ. Record both with their exact category and source.
3. Nothing definite about the individual paper. JIF is a recent journal-level citation approximation. The paper may be uncited or highly cited and may be strong or flawed; assess it directly.
4. It may be assigned to several categories, or the two labels may refer to different JCR metrics such as JIF quartile and JCI quartile.
5. JCI, CiteScore percentile and SNIP supply field-normalized or within-field context. Raw JIF and raw CiteScore do not.
6. The first five papers have at least five citations, but the sixth has only five rather than six. Therefore \(h=5\).
7. No. As verified on 30 June 2026, ESCI journals can also receive a JIF. Check the exact Web of Science collection in the Master Journal List.
8. Database/product, ranking metric, data year and subject category; preferably also rank/total or percentile, official source and access date.
9. Examples include excessive self-citation, coercive citation, citation stacking or cartels, concentrated special-issue cross-citation, strategic article-type mix and fake metric advertising.
10. Its longer window can reveal influence that accumulates beyond the two-year JIF window, common in slow-maturing theoretical work.
11. Eigenfactor measures prestige-weighted total influence; Article Influence is its per-article counterpart.
12. Examine claim breadth and editorial threshold, but normally prefer the exact specialist audience if that is where the paper will receive the most competent test and use. Quartile alone should not override scope.

</details>

## Compact rules to remember

1. **A journal has metrics; an article has evidence.**
2. **There is no context-free Q1.**
3. **Always record system, metric, year and category.**
4. **A high average does not describe every member of a skewed distribution.**
5. **Indexing is named, dated and reversible.**
6. **Field normalization improves comparison; it does not create a quality meter.**
7. **The h-index belongs to a defined publication set and database.**
8. **Scope and readership come before rank.**
9. **Read the research; do not outsource judgment to a badge.**
10. **Preserve a dated audit trail for every formal claim.**

## Primary references and verification points

- [Clarivate: Journal Citation Reports glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary)
- [Clarivate: JCR ties, ranks and quartiles](https://clarivate.com/academia-government/blog/a-primer-on-ties-in-the-jcr/)
- [Clarivate: Web of Science journal evaluation criteria](https://clarivate.com/academia-government/scientific-and-academic-research/research-discovery-and-referencing/web-of-science/web-of-science-core-collection/editorial-selection-process/journal-evaluation-process-selection-criteria/)
- [Scopus: CiteScore methodology and interpretation](https://service.elsevier.com/app/answers/detail/a_id/30562/supporthub/scopus/)
- [Scopus: SJR explanation](https://service.elsevier.com/app/answers/detail/a_id/14883/supporthub/scopus/kw/sjr/)
- [CWTS Leiden: SNIP methodology and cautions](https://www.journalindicators.com/methodology)
- [Hirsch: original h-index paper](https://doi.org/10.1073/pnas.0507655102)
- [DORA: Declaration on Research Assessment](https://sfdora.org/read/)
- [DORA: responsible use of quantitative indicators](https://sfdora.org/wp-content/uploads/2024/05/DORA_indicators_guidance.pdf)
- [Hicks et al.: Leiden Manifesto for Research Metrics](https://www.nature.com/articles/520429a)
- [DOAJ: transparency and best-practice principles](https://doaj.org/apply/transparency/)
- [Think. Check. Submit.: journal checklist](https://thinkchecksubmit.org/wp-content/uploads/2023/06/ThinkCheckSubmit-Journals-English.pdf)

**Next:** [Module 2 — Quantum-Physics Journal Landscape and Selection]({{ '/quantum-physics-journal-landscape/' | relative_url }})
