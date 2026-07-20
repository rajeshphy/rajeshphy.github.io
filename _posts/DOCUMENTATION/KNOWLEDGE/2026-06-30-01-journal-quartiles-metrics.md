---
title: "Journal Quartiles, Impact Factors and Research Metrics"
summary: "An explanatory reference to Q1–Q4, journal and author metrics, indexing databases, indicator limitations, and research assessment."
description: "A neutral reference to Q1–Q4, Impact Factor, CiteScore, SJR, SNIP, JCI, h-index, indexing, and research assessment."
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

Journal metrics summarize patterns in publications and citations. They are useful for describing journals, fields and publication sets, but they do not directly measure whether an equation is correct, whether a result is original, or how much an individual author contributed. A clear understanding therefore begins with the object being measured, the database supplying the records, the formula, the time window and the comparison group.

<div class="note-box" markdown="1">
**Dynamic-fact date:** database structures, ranking methods and policies described as current were checked on **30 June 2026**. Annual values, categories, quartiles and coverage status can change. The data year and the release year are distinct parts of the historical record.
</div>

## The layers of the journal-metric system

Several different objects are often compressed into the vague expression “journal quality.” They are not interchangeable.

| Object | Examples | What the object describes |
|---|---|---|
| **Bibliographic and citation database** | Web of Science Core Collection, Scopus | A selected body of source records, references and citation links |
| **Analytics product** | Journal Citation Reports, Scopus Sources, SCImago Journal & Country Rank | Indicators, categories, ranks and trends calculated from a particular dataset |
| **Journal metric** | JIF, JCI, CiteScore, SJR, SNIP, Eigenfactor | One quantitative feature of a journal under a defined method and time window |
| **Article-level evidence** | Citation count, replication, reuse, correction, expert evaluation | Attention to and use of one output, with no guarantee that all attention is favourable |
| **Researcher-level evidence** | Publication portfolio, contributions, h-index, software, data, mentoring | Features of a body of work and its scholarly context |
| **Repository or identifier** | arXiv, institutional repository, DOI, ORCID | Dissemination, version access or persistent identification rather than journal evaluation |

A **rank** is an ordered position within a defined set. A **percentile** converts that position into a relative scale. A **quartile** compresses the position into four broad bands. Each is a representation of relative standing, not an intrinsic property of a journal.

## Q1, Q2, Q3 and Q4

In journal terminology, **Q** means *quartile*, not calendar quarter. A quartile belongs to a named metric, data source, year and subject category. Consequently, the sentence “the journal is Q1” leaves out most of the information needed to understand the claim.

### JCR quartile calculation

Journal Citation Reports (JCR) orders journals within a category by an indicator such as the Journal Impact Factor (JIF). If

\[
X=\text{the journal's rank in the category}, \qquad
Y=\text{the number of ranked journals in the category},
\]

then

\[
Z=\frac{X}{Y}.
\]

The current [JCR glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary) defines the bands as follows.

| Quartile | JCR condition | Relative position |
|---|---:|---|
| Q1 | \(0<Z\leq0.25\) | Highest-ranked band |
| Q2 | \(0.25<Z\leq0.50\) | Upper-middle band |
| Q3 | \(0.50<Z\leq0.75\) | Lower-middle band |
| Q4 | \(Z>0.75\) | Lowest-ranked band |

Consider a hypothetical category containing 96 ranked journals.

| Rank | Calculation | JCR quartile |
|---:|---:|---|
| 8 | \(8/96=0.0833\) | Q1 |
| 24 | \(24/96=0.2500\) | Q1, at the boundary |
| 25 | \(25/96=0.2604\) | Q2 |
| 48 | \(48/96=0.5000\) | Q2 |
| 67 | \(67/96=0.6979\) | Q3 |
| 85 | \(85/96=0.8854\) | Q4 |

The four groups need not contain exactly the same number of titles. JCR uses sparse ranking when journals have equal indicator values. If two titles share rank 24, the next title has rank 26. Both tied titles have \(Z=24/96\) and remain in Q1, so the band contains more than 25 per cent of the titles. Clarivate describes this boundary effect in [A Primer on Ties in the JCR](https://clarivate.com/academia-government/blog/a-primer-on-ties-in-the-jcr/).

As of 30 June 2026, JIF is displayed to one decimal place. Reduced display precision creates more ties, so a movement across a quartile boundary can result from a small numerical change in a crowded part of the ranking.

### Percentiles retain more detail

JCR expresses JIF rank as a percentile using

\[
P=\frac{Y-X+0.5}{Y}\times100.
\]

For rank 24 among 96 titles,

\[
P=\frac{96-24+0.5}{96}\times100\approx75.5.
\]

Both the 76th-percentile and 99th-percentile journals fall in Q1, but their positions are clearly different. Quartiles are therefore convenient summaries with substantial information loss.

### One journal can have several correct quartiles

A journal assigned to several categories has a separate rank in every category. It can be Q1 in **Mathematical Physics** and Q2 in **Physics, Multidisciplinary** in the same JCR year. JCR can also report rankings based on JIF and on the field-normalized Journal Citation Indicator (JCI), producing different quartiles inside the same category.

The phrase **best quartile** refers only to the most favourable category result. It is a selected summary rather than a description of all category positions.

### Quartiles from different systems

| Common label | Ranking basis | Data environment | Main distinction |
|---|---|---|---|
| **JCR JIF quartile** | Journal Impact Factor rank | Web of Science Core Collection/JCR | Raw JIF is not field-normalized |
| **JCR JCI quartile** | Journal Citation Indicator rank | Web of Science Core Collection/JCR | Field-normalized indicator distinct from JIF |
| **Scopus CiteScore quartile** | CiteScore percentile | Scopus Sources | Four-year CiteScore method and Scopus categories |
| **SCImago quartile** | SJR-based category position | Scopus-derived SCImago data | Separate product, method and annual snapshot |

Scopus displays CiteScore bands as Q1 for the 75th–99th percentiles, Q2 for the 50th–74th, Q3 for the 25th–49th and Q4 for the 0–24th. The current [Scopus CiteScore documentation](https://service.elsevier.com/app/answers/detail/a_id/30562/supporthub/scopus/) describes these bands. SCImago states that its quartile method differs from the Scopus Sources method in the [SCImago FAQ](https://www.scimagolab.com/faqs-2/). “CiteScore Q1 in Scopus” and “SJR Q1 in SCImago” are therefore different claims.

## Journal Impact Factor

### Formula and time window

For JCR data year \(T\), the Journal Impact Factor is approximately

\[
\mathrm{JIF}_{T}=
\frac{\text{citations during }T\text{ to journal content published in }T-1\text{ and }T-2}
{\text{scholarly items published in }T-1\text{ and }T-2}.
\]

The denominator principally contains articles, reviews and proceedings papers classified as scholarly or citable items. The numerator counts citations received in the JCR year by content from the two target years. Clarivate consequently describes JIF as a functional approximation to a mean citation rate rather than a strict article-by-article average.

For a hypothetical journal with 78 citable items in 2023, 82 in 2024, and 520 citations during 2025 to its 2023–2024 content,

\[
\mathrm{JIF}_{2025}=\frac{520}{78+82}=\frac{520}{160}=3.25.
\]

Under the current one-decimal display, the reported value is approximately **3.3**. The number summarizes citation activity around the journal's recent content. It does not imply that every article received 3.3 citations, that a new article will do so, or that an individual article possesses an “impact factor.”

### Skew and numerator–denominator asymmetry

Journal citation distributions are normally skewed. A small group of review papers or unusually visible articles can contribute a large fraction of the numerator, while many articles receive fewer citations than the mean. The JIF therefore describes a distribution poorly when interpreted as the fate of a typical article.

The JIF numerator can include citations to journal content that is not counted as a citable item in the denominator. Editorials, letters or other front matter can contribute citations even though the denominator is based mainly on articles and reviews. This asymmetry is one reason that JIF values are not simple averages of the citation counts of all published items.

### Five-year JIF

The five-year JIF uses the preceding five publication years:

\[
\mathrm{5YJIF}_{T}=
\frac{\text{citations during }T\text{ to content from }T-1\ldots T-5}
{\text{citable items from }T-1\ldots T-5}.
\]

If 340 citable items published during 2020–2024 receive 1,340 citations in 2025, then

\[
\mathrm{5YJIF}_{2025}=\frac{1340}{340}\approx3.94.
\]

A five-year value above the two-year value is consistent with citation activity continuing beyond the shorter window. Such a pattern is common in areas where theoretical or mathematical results mature slowly. The two measures describe different windows; neither is universally superior. Clarivate gives historical context in [The Many Flavors of the Journal Impact Factor](https://clarivate.com/academia-government/blog/many-flavors-journal-impact-factor/).

### Retractions in the current calculation

Beginning with the 2025 JCR release, which used 2024 data, Clarivate excluded citations **to and from** retracted or withdrawn content from JIF-related numerators. Retracted articles remain in the publication count, preserving the fact that the journal published them. This treatment was current on 30 June 2026 and is described in Clarivate's [retraction-policy explanation](https://clarivate.com/academia-government/blog/journal-citation-reports-2025-addressing-retractions-and-strengthening-research-integrity/).

## Journal Citation Indicator

The **Journal Citation Indicator (JCI)** is Clarivate's field-normalized journal indicator. It averages the Category Normalized Citation Impact of a journal's articles and reviews from the previous three years. Normalization accounts for subject category, document type and publication year.

The reference value is 1:

| JCI | Meaning within the normalization model |
|---:|---|
| 1.0 | Category-expected citation impact |
| 1.4 | 40 per cent above category expectation |
| 2.0 | Twice category expectation |
| 0.5 | Half category expectation |

JCI makes citation cultures more comparable than raw JIF, but it remains a journal average based on constructed categories. A JCI of 1.4 does not mean that an article or researcher is “40 per cent better.” Clarivate's [JCI introduction](https://clarivate.com/blog/introducing-the-journal-citation-indicator-a-new-field-normalized-measurement-of-journal-citation-impact/) and the [JCR glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary) describe the method.

## CiteScore

**CiteScore** is calculated from Scopus records. Its current method uses the same four calendar years for included documents and their citations. For data year \(T\),

\[
\mathrm{CiteScore}_{T}=
\frac{\text{citations in }T-3\ldots T\text{ to included documents published in }T-3\ldots T}
{\text{included documents published in }T-3\ldots T}.
\]

The five included peer-reviewed document types are articles, reviews, conference papers, data papers and book chapters. Editorials, errata, letters, notes, news items, short surveys and articles in press are excluded from both sides. This symmetric document-type treatment differs from JIF.

If a journal publishes 220 included documents during 2022–2025 and those documents receive 770 citations during the same period,

\[
\mathrm{CiteScore}_{2025}=\frac{770}{220}=3.5.
\]

A CiteScore percentile of 82 in **Atomic and Molecular Physics, and Optics** places the title at or above approximately 82 per cent of titles in that Scopus subject area and in the CiteScore Q1 band. The raw value of 3.5 is not field-normalized; the subject percentile supplies within-field context.

The annual CiteScore is a fixed edition. **CiteScore Tracker** is a monthly updated provisional value that changes as Scopus processes documents and citations. A Tracker value and a final annual value can consequently differ.

## SJR and SNIP

### SCImago Journal Rank

The **SCImago Journal Rank (SJR)** treats the citation system as a network of prestige transfer. Citations from influential sources carry more weight than citations from less influential sources, and the prestige of a citing journal is distributed across its references. Its logic is related to PageRank.

SJR is size-normalized and is not expressed in ordinary “citations per article” units. It describes prestige-weighted citation influence. Its raw value, annual trend and category position are separate pieces of information. The [Scopus SJR explanation](https://service.elsevier.com/app/answers/detail/a_id/14883/supporthub/scopus/kw/sjr/) and [SCImago methodology paper](https://www.scimagojr.com/files/SJR2.pdf) provide the technical background.

### Source Normalized Impact per Paper

The **Source Normalized Impact per Paper (SNIP)** is calculated by Leiden University's Centre for Science and Technology Studies using Scopus data. It applies citing-side normalization: citation weight reflects the citation potential of the source field, including differences in the prevalence of active references. Fields in which papers contain many active references offer more citation opportunities than fields with short reference lists.

SNIP is designed for contextual comparison across fields without relying solely on rigid journal categories. It remains sensitive to skewed citation distributions, outliers and small-journal volatility. The [CWTS methodology guide](https://www.journalindicators.com/methodology) publishes stability intervals alongside point estimates because apparent differences may be statistically unstable.

SJR and SNIP answer distinct questions. SJR emphasizes position in a prestige-weighted network; SNIP emphasizes normalization for field-specific citation potential.

## Eigenfactor and Article Influence

Eigenfactor metrics use a five-year journal citation network. Citations from influential journals receive more weight, and journal self-citations are removed.

| Indicator | Quantity represented | Effect of journal size | Reference point |
|---|---|---|---|
| **Eigenfactor Score** | Total influence in the journal network | Generally rises with output volume | Relative value within the same edition |
| **Normalized Eigenfactor** | Rescaled total network influence | Still a journal-total measure | Average journal = 1 |
| **Article Influence Score** | Influence per article over the five-year network | Normalized for journal output | Mean article = 1 |

A large journal can have a high Eigenfactor because it publishes a large amount of influential material, while a smaller journal can have a high Article Influence Score because its average article has strong network influence. Current definitions appear in the [JCR glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary) and Clarivate's [Eigenfactor overview](https://clarivate.com/academia-government/blog/closer-look-eigenfactor-metrics/).

## A comparison of the major journal indicators

| Indicator | Main dataset | Window or basis | Field normalization | Central interpretation |
|---|---|---|---|---|
| JIF | Web of Science/JCR | Citations in one year to preceding two years | No | Recent mean-like citation rate |
| Five-year JIF | Web of Science/JCR | Citations in one year to preceding five years | No | Longer-window citation rate |
| JCI | Web of Science/JCR | CNCI average for preceding three publication years | Yes | Citation impact relative to field expectation |
| CiteScore | Scopus | Symmetric four-year document/citation window | Raw value: no; percentile: within field | Recent citation rate under Scopus coverage |
| SJR | Scopus-derived | Prestige-weighted citation network | Partly through network weighting | Prestige-weighted journal influence |
| SNIP | Scopus/CWTS | Citing-side normalization | Yes | Impact relative to field citation potential |
| Eigenfactor | Web of Science/JCR | Five-year prestige-weighted network | Network-based, not a field ratio | Total journal influence |
| Article Influence | Web of Science/JCR | Eigenfactor influence per article | Network-based | Average article influence |

These indicators can legitimately disagree because they use different source sets, document types, time windows, categories and mathematical models.

## Citation counts and the h-index

### Article citation counts

An individual article has a citation count, not a meaningful individual h-index. Citation count records the number of indexed citing links; it does not reveal whether the citing papers support, criticize, repeat, correct or merely mention the work. Article-level significance can also appear through replication, adoption of a theorem or method, reuse of software or data, correction of earlier understanding, or durable expert use without a large citation total.

### Author h-index

For a publication set ordered by decreasing citations, the **h-index** is the largest integer \(h\) for which at least \(h\) papers have each received at least \(h\) citations.

For citation counts

\[
42,\ 18,\ 12,\ 9,\ 7,\ 4,\ 3,
\]

the calculation is:

| Paper rank | Citations | Citations at least equal to rank? |
|---:|---:|---|
| 1 | 42 | Yes |
| 2 | 18 | Yes |
| 3 | 12 | Yes |
| 4 | 9 | Yes |
| 5 | 7 | Yes |
| 6 | 4 | No |

The h-index is **5**. Five papers have at least five citations, but six papers do not each have at least six citations. Physicist J. E. Hirsch introduced the indicator in the [original PNAS paper](https://doi.org/10.1073/pnas.0507655102).

The value depends on the publication set and database. Google Scholar, Scopus, Web of Science and INSPIRE can produce different h-indices for the same researcher because they cover different journals, proceedings, books, preprints and citing documents. Profile splitting, duplicate records and name ambiguity create additional differences.

The h-index is cumulative and tends to rise with career length. It does not normalize for career breaks or discipline, identify authorship contribution, distinguish a decisive paper from routine coauthorship, or credit citations above the h-core threshold. A recent PhD scholar and an established researcher therefore do not form a meaningful comparison merely because both have a reported h-index.

### Journal h-index

The same arithmetic can be applied to a journal's indexed publications. A journal h-index of 120 means that at least 120 items in the defined database and coverage period have each received at least 120 citations. The value strongly favours older, larger journals and citation-dense fields. Database and time-window labels are essential parts of its meaning.

Google Scholar's **h5-index** is a related journal measure limited to articles published in the last five complete calendar years. It is not interchangeable with an all-time journal h-index.

## Databases, collections and indexing status

### Web of Science Core Collection and JCR

**Web of Science Core Collection** is a bibliographic and citation database. **Journal Citation Reports** is a journal-analytics product built from Web of Science data. A record in one environment and a metric in the other are related but conceptually different.

As of 30 June 2026, Clarivate's journal evaluation process used 24 quality criteria and four additional impact criteria. Journals meeting the quality criteria can enter the **Emerging Sources Citation Index (ESCI)**. Journals also meeting the impact criteria can enter **Science Citation Index Expanded (SCIE)**, **Social Sciences Citation Index (SSCI)** or **Arts & Humanities Citation Index (AHCI)**.

ESCI journals can receive a JIF and participate in unified science and social-science category rankings. The existence of a current JIF therefore does not by itself establish SCIE coverage. The free [Web of Science Master Journal List](https://mjl.clarivate.com/home?PC=B) supplies title, collection and coverage information, while Clarivate documents the [evaluation criteria](https://clarivate.com/academia-government/scientific-and-academic-research/research-discovery-and-referencing/web-of-science/web-of-science-core-collection/editorial-selection-process/journal-evaluation-process-selection-criteria/).

### Scopus

**Scopus** is a separate abstract and citation database. Its Content Selection and Advisory Board evaluates journals, and covered sources remain subject to monitoring and re-evaluation. Future content coverage can be discontinued even though previously indexed records remain in the database.

Scopus Sources identifies the exact journal title and ISSN, source type, subject classifications, coverage years and active or discontinued status. Finding an old Scopus-indexed article proves historical inclusion of that record, not necessarily current source coverage. Scopus describes its coverage and re-evaluation process in the official [content policy](https://www.elsevier.com/en-au/products/scopus/content/content-policy-and-selection).

### DOAJ

The **Directory of Open Access Journals (DOAJ)** evaluates fully open-access journals against transparency and publishing-practice requirements. It is neither a citation index nor a ranking table. Subscription and hybrid journals fall outside its fully open-access scope, so absence from DOAJ has different significance for those models.

DOAJ records include editorial, licensing, copyright and fee information. Its [Guide to applying](https://doaj.org/apply/guide/) permits recognized indicators but excludes ranking claims from unrecognized metric services. The joint [Principles of Transparency and Best Practice](https://doaj.org/apply/transparency/) describe broader standards for trustworthy scholarly publishing.

### Google Scholar, INSPIRE-HEP and arXiv

**Google Scholar** provides broad scholarly discovery and citation profiles. Its coverage breadth is useful for discovery but does not constitute a selective journal whitelist.

**INSPIRE-HEP** is a discipline-specific literature and citation service for high-energy physics and related areas. It integrates journal records, preprints, data and author information in ways particularly relevant to theoretical physics.

**arXiv** is a preprint repository. An arXiv record supplies public dissemination and version history, not journal peer-review certification. Citation profiles in Google Scholar or INSPIRE similarly describe recorded scholarly links rather than certifying the correctness of a paper.

## Data year, release year and complete metric statements

Annual indicators are released after their data year has ended. The **2026 Journal Citation Reports release reflects 2025 citation data**, as documented in Clarivate's [2026 JCR announcement](https://clarivate.com/academia-government/blog/journal-citation-reports-2026-supporting-transparent-responsible-journal-evaluation/). The expressions “2025 JIF” and “JIF released in the 2026 JCR” refer to the data year and release edition respectively.

A complete quartile statement contains:

> **journal title + database or product + ranking metric + data year + subject category + rank/total or percentile + quartile**

Examples of complete descriptions are:

> In the 2025 JCR data, Journal X had JIF 3.3 and ranked 18 of 96 journals, Q1, in Category Y.

> In Scopus CiteScore 2025, Journal X had CiteScore 3.5 and an 82nd percentile, Q1, in Subject Area Z.

> SCImago reported SJR 0.84 and SJR quartile Q2 for Journal X in Category Z for 2025. This is an SJR quartile, not a JCR JIF quartile.

> Author A had a Scopus h-index of 14 on 30 June 2026.

By contrast, “Journal X is Q1,” “the paper has impact factor 4.2,” and “the journal is internationally indexed” omit the system or attribute a journal-level quantity to the wrong object.

## Why indicators disagree

Suppose one journal is described as JCR JIF Q2, JCR JCI Q1, Scopus CiteScore Q1 and SCImago SJR Q2 for the same nominal year. There is no necessary contradiction.

The JIF and JCI rank different quantities. Web of Science and Scopus contain different sources and citation links. Their subject categories have different boundaries. CiteScore and SJR apply different document windows and calculations. Ties and data-processing schedules can also alter band placement.

A second example involves two hypothetical Q1 journals. Journal Alpha is at the 91st JIF percentile in multidisciplinary physics but has no recent papers on a particular spectral-theory problem. Journal Beta is at the 78th percentile in mathematical physics and has published six close studies. The quartile label describes category position; the recent-paper pattern describes intellectual audience. The two kinds of evidence answer different questions, so the higher percentile does not logically imply the closer subject fit.

## Structural limitations of metrics

| Limitation | Effect on interpretation |
|---|---|
| **Skewed citation distributions** | A mean can be dominated by a few papers and poorly represent the typical article |
| **Field differences** | Raw citation rates differ greatly across specialties |
| **Short windows** | Slow-maturing theoretical or mathematical work can appear weak early |
| **Article-type mix** | Reviews generally attract more citations than narrow original research |
| **Database coverage** | Languages, regions, books, proceedings and older material are represented differently |
| **Category construction** | An interdisciplinary journal's relative position depends on the comparison set |
| **Small-sample volatility** | A few papers can move a small journal sharply between annual editions |
| **Citation meaning** | Citations include praise, criticism, correction and routine mention |
| **Career age** | Cumulative researcher indicators favour longer uninterrupted careers |
| **Team size and authorship** | Citation counts rarely identify each author's intellectual contribution |

Metric values can also respond to editorial and citation behaviour. Excessive journal self-citation, coercive citation requests, reciprocal citation, citation stacking, citation cartels, review-heavy article mixes and concentrated special-issue cross-citation can inflate an indicator without a corresponding change in scientific quality.

Clarivate can suppress a JIF when citation data show excessive self-citation or citation stacking. Metric suppression and removal from Web of Science are separate actions. Clarivate explains this distinction in its [JCR suppression policy](https://clarivate.com/academia-government/blog/refresher-course-jcr-journal-suppression-policies/). Scopus also monitors unusual publication and citation behaviour and can re-evaluate or discontinue a source.

Self-citation is not inherently improper. Research normally develops from earlier work, and relevant prior results remain relevant when written by the same authors. Distortion arises from irrelevance, coercion or coordination designed primarily to alter indicators.

Invented “impact factors” exploit confusion around metric names. The **Journal Impact Factor** is the Clarivate JCR indicator. Labels such as “Universal Impact Factor,” “Global Impact Factor” or “Cosmos Impact Factor” are not JIF. A logo or number on a journal website does not establish database inclusion or a recognized metric record.

Open access and article processing charges are separate from citation metrics. Reputable and unreliable journals exist under open-access, subscription and hybrid models; neither an APC nor the absence of an APC establishes quality.

## Responsible interpretation in research assessment

The [San Francisco Declaration on Research Assessment (DORA)](https://sfdora.org/read/) rejects the use of journal-based metrics as substitutes for evaluating an individual article, a researcher's contribution, or candidates in hiring, promotion and funding. This principle reflects the mismatch between a journal-level distribution and the qualities of one output or person.

DORA's 2024 [guidance on quantitative indicators](https://sfdora.org/wp-content/uploads/2024/05/DORA_indicators_guidance.pdf) describes indicators as proxies that require context, can conceal variation and can change behaviour when converted into targets.

The [Leiden Manifesto](https://www.nature.com/articles/520429a) develops the same logic through ten principles. Quantitative evaluation supports rather than replaces expert assessment; evaluation follows the mission of the researcher or institution; field and local relevance matter; data and analysis remain transparent; those evaluated can verify them; individual assessment considers portfolios; false precision is avoided; behavioural effects are recognized; and indicators are regularly scrutinized.

For theoretical physics, these principles separate several questions that metrics often blur:

- the correctness and originality of a derivation;
- the importance of the physical problem;
- the size and citation culture of the specialist community;
- the editorial reach of the journal;
- the subsequent use of the article; and
- the documented contribution of each author.

A specialist paper can represent a major intellectual contribution while accumulating modest citations. A highly cited collaborative paper can have wide influence while revealing little about one participant's independent contribution. Journal metrics describe venue context; article reading, contribution records and expert evaluation describe the research itself.

## Primary references and verification points

- [Clarivate: Journal Citation Reports glossary](https://journalcitationreports.zendesk.com/hc/en-gb/articles/28351666061457-Glossary)
- [Clarivate: JCR ties, ranks and quartiles](https://clarivate.com/academia-government/blog/a-primer-on-ties-in-the-jcr/)
- [Clarivate: 2026 Journal Citation Reports](https://clarivate.com/academia-government/blog/journal-citation-reports-2026-supporting-transparent-responsible-journal-evaluation/)
- [Clarivate: Web of Science journal evaluation criteria](https://clarivate.com/academia-government/scientific-and-academic-research/research-discovery-and-referencing/web-of-science/web-of-science-core-collection/editorial-selection-process/journal-evaluation-process-selection-criteria/)
- [Scopus: CiteScore methodology and interpretation](https://service.elsevier.com/app/answers/detail/a_id/30562/supporthub/scopus/)
- [Scopus: SJR explanation](https://service.elsevier.com/app/answers/detail/a_id/14883/supporthub/scopus/kw/sjr/)
- [CWTS Leiden: SNIP methodology and cautions](https://www.journalindicators.com/methodology)
- [Hirsch: original h-index paper](https://doi.org/10.1073/pnas.0507655102)
- [DORA: Declaration on Research Assessment](https://sfdora.org/read/)
- [DORA: responsible use of quantitative indicators](https://sfdora.org/wp-content/uploads/2024/05/DORA_indicators_guidance.pdf)
- [Hicks et al.: Leiden Manifesto for Research Metrics](https://www.nature.com/articles/520429a)
- [DOAJ: transparency and best-practice principles](https://doaj.org/apply/transparency/)

[← Course roadmap]({{ '/quantum-physics-journal-system/' | relative_url }}) · [Next: Module 2 — Quantum Physics Journal Landscape]({{ '/quantum-physics-journal-landscape/' | relative_url }})
