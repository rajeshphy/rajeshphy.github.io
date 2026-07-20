---
title: "From Manuscript to Publication: The Physics Paper Workflow"
summary: "A supervisor-ready workflow for preparing, submitting, revising, publishing, versioning, and correcting a theoretical-physics paper."
description: "A complete theoretical-physics workflow for manuscript preparation, submission, peer review, revision, publication, and correction."
date: 2026-06-30 11:30:00 +0530
categories:
  - doc-knowledge
tags:
  - theoretical-physics
  - manuscript-writing
  - peer-review
  - journal-submission
  - arxiv
  - phd-supervision
permalink: /manuscript-peer-review-publication/
hidden: true
---

[← Course roadmap]({{ '/quantum-physics-journal-system/' | relative_url }}) · [Previous: journal landscape and selection]({{ '/quantum-physics-journal-landscape/' | relative_url }}) · [Next: publication ethics and open access →]({{ '/publication-ethics-open-access/' | relative_url }})

Publishing is not a single act of uploading a PDF. It is a controlled chain of scientific, editorial, ethical, and production decisions. For a supervisor, the aim is not merely to get one paper accepted; it is to teach a scholar a repeatable system that produces work which is correct, traceable, readable, and defensible.

This chapter follows one theoretical-physics paper from the moment its central result stabilizes to the point at which its version of record may need a correction. Journal-specific instructions always override generic advice. The [APS Physical Review editorial policies](https://journals.aps.org/authors/editorial-policies), [APS journal author guidance](https://journals.aps.org/prl/authors), and [Springer Nature publication workflow](https://www.springernature.com/gp/authors/publish-an-article) are useful authoritative examples of the stages described here.

## 1. See the Whole Workflow Before Starting

A disciplined paper normally passes through these gates:

1. **Result gate:** the calculation is stable and independently checked.
2. **Claim gate:** the authors can state exactly what is new, correct, and useful.
3. **Literature gate:** the nearest prior work has been found and compared honestly.
4. **Target gate:** a journal and article type have been selected before final drafting.
5. **Internal-review gate:** all authors have read and approved the complete manuscript.
6. **Submission gate:** files, metadata, declarations, and cover letter are consistent.
7. **Editorial gate:** the journal performs technical checks and an editor decides whether to seek external reviews.
8. **Peer-review gate:** referees advise; the editor decides.
9. **Revision gate:** every comment is answered and every change is traceable.
10. **Acceptance gate:** authors verify the final scientific and administrative record.
11. **Production gate:** proofs, license, open-access choice, and publication metadata are completed.
12. **Stewardship gate:** preprints, repositories, ORCID records, and any later corrections remain synchronized.

Do not collapse these gates into “the student has written something, so let us submit it.” A rushed submission often spends more time in avoidable revisions than a well-managed internal review would have taken.

## 2. Decide Whether the Paper Is Scientifically Ready

### The one-sentence test

Before formatting, ask the scholar to complete this sentence without vague words:

> We show that **[precise result]** for **[defined system or model]** under **[stated assumptions]**, which changes or extends **[specific earlier understanding]** because **[quantified or conceptual reason]**.

If the sentence cannot be written, the paper probably has not yet identified its claim. “We study,” “we explore,” and “some interesting results are obtained” describe activity, not contribution.

### Five readiness questions

A paper is ready for drafting only when the group can answer yes to these questions:

1. **Correctness:** Have the central derivations or computations been checked by a second route or a second person?
2. **Novelty:** Can we name the three to ten closest papers and state the exact difference from each?
3. **Completeness:** Are all steps needed to support the advertised conclusion present, including inconvenient limiting cases?
4. **Significance:** Is there a recognizable community for whom the result resolves, predicts, unifies, simplifies, or rules out something?
5. **Reproducibility:** Could a competent researcher reconstruct the result from the definitions, equations, parameters, code, and supplementary material supplied?

### A theoretical-physics validation audit

For a quantum-theory manuscript, the supervisor should explicitly record which of the following checks were performed:

- Dimensions and units are consistent, including in natural-unit conventions.
- Symbols are defined once and used consistently; indices, signs, phases, and complex conjugations have been audited.
- Operators have the claimed Hermiticity, domains, boundary conditions, and commutation relations.
- States, probability distributions, density matrices, propagators, or spectral functions have the required normalization and positivity properties.
- Time evolution or scattering obeys unitarity where the model requires it.
- Gauge, Lorentz, rotational, translational, parity, time-reversal, or other stated symmetries really hold.
- Conservation laws follow from the equations used, and any anomaly or explicit breaking is identified.
- Known limits are recovered: weak/strong coupling, classical limit, continuum limit, zero/large temperature, short/long time, large size, or a standard solvable parameter choice.
- Singular points, branch choices, convergence regions, regularization, renormalization, and analytic continuation are stated rather than hidden in algebra.
- Approximation orders and neglected terms are visible, with a domain in which the approximation is controlled.
- Numerical results have tolerance, precision, convergence, finite-size, and parameter-range checks.
- Computer algebra has been verified against hand derivations or an independent implementation for central steps.
- Plots can be regenerated from saved data or code; axes, units, parameter values, and uncertainty or numerical error are stated.
- The manuscript distinguishes a theorem, an exact result, an approximation, a conjecture, a numerical observation, and a physical interpretation.
- Results are compared quantitatively—not merely rhetorically—with the closest literature.

The scholar should maintain a short **verification note** outside the paper listing each check, the file or notebook used, the person who checked it, and the date. This becomes invaluable during review.

## 3. Select the Target Before Final Writing

The target journal affects length, emphasis, vocabulary, level of derivational detail, figure count, data policy, and even whether the intended work is an Article, Letter, Rapid Communication, Brief Report, or Review. Choose the journal before polishing the final draft, not after the manuscript has acquired the shape of a different journal.

### Prepare a one-page target brief

For each serious candidate, record:

- journal name, publisher, and exact scope statement;
- intended article type and its length or figure limits;
- two to five genuinely similar papers published there recently;
- the journal audience and why this result matters to that audience;
- editorial selectivity: specialist soundness, broad significance, rapid short report, or review/synthesis;
- peer-review model and preprint policy;
- data/code and supplementary-material requirements;
- LaTeX template, reference style, and required statements;
- subscription, hybrid, or fully open-access route; expected charges and waiver eligibility;
- a strong backup journal and the changes needed for transfer.

Use journal metrics only as context. A high metric cannot repair poor scope fit. Editors first ask whether the paper belongs in their journal and meets its editorial standard. The [Physical Review Letters author page](https://journals.aps.org/prl/authors), for example, asks authors to understand its scope, editorial criteria, and article type before submission.

### Build a rational journal ladder

Choose three levels in advance:

1. **Aspirational but defensible:** the paper genuinely meets the stated novelty and importance threshold.
2. **Strong scope fit:** the regular readership is precisely the intended research community.
3. **Reliable backup:** scientifically reputable, appropriately indexed, and suitable for the full result without distortion.

This ladder prevents emotional decisions after rejection. Never submit the same manuscript to two journals simultaneously. A preprint is not a second journal submission, but it should be disclosed according to the target journal's policy.

## 4. Design the Manuscript Around Its Scientific Argument

A theoretical-physics paper should read as an argument, not as a chronological diary of calculations.

### Title

Make the title specific enough to be discoverable and restrained enough to be credible. Include the physical system or concept and the principal result when possible. Remove unsupported words such as “novel,” “revolutionary,” “complete,” or “exact” unless the manuscript proves them.

### Abstract

A useful abstract answers five questions in roughly this order:

1. What problem or gap is addressed?
2. What model, framework, or method is used?
3. What is the principal result?
4. Under what important assumptions or regime does it hold?
5. Why does it matter?

Include a decisive equation-scale statement or quantitative result when it can be expressed clearly in prose. Avoid citations, undefined abbreviations, derivational detail, and claims broader than the paper.

### Introduction

The introduction should move from field to gap to contribution:

- establish the problem and its physical importance;
- synthesize the nearest literature instead of presenting a long historical catalogue;
- identify the unresolved limitation or contradiction;
- state what this paper does and does not claim;
- summarize the method and principal findings;
- explain the paper's organization only if the structure is not obvious.

The novelty paragraph should be testable. A referee must be able to compare it with cited work.

### Model, assumptions, and notation

Define the Hilbert space, Hamiltonian or action, degrees of freedom, geometry, initial/boundary conditions, units, conventions, parameter domain, and approximation hierarchy. Put assumptions near the equations that depend on them. A result with hidden assumptions appears more general than it is and invites a justified referee objection.

### Methods and derivation

Show the steps needed to audit the result. Standard algebra may be compressed and moved to an appendix; a nonstandard identity, delicate approximation, regulator, numerical procedure, or choice of branch must be explained. State which results are analytic, symbolic, numerical, or fitted.

For a long derivation, give the reader signposts:

1. starting equation and assumptions;
2. transformation or approximation;
3. intermediate invariant or checkpoint;
4. final expression;
5. limiting-case verification.

### Results

Organize results by scientific question, not by the sequence in which the researcher discovered them. Every figure should answer a stated question. Captions should identify the system, parameters, line styles, units, and takeaway well enough that a reader can understand the figure without searching the entire paper.

### Discussion

Separate result from interpretation. Compare with earlier theory, simulations, or experiment; identify why agreement or disagreement occurs; state the controlled domain; and discuss limitations. A limitation stated by the authors is evidence of scientific judgment, not weakness.

### Conclusion

Answer the problem posed in the introduction. Do not introduce uncited claims or new derivations. Distinguish demonstrated consequences from future possibilities.

### Appendices and supplementary material

Use appendices for derivations necessary to validate the paper but disruptive to its main argument. Use supplementary material only when the journal permits it and when the main paper remains intelligible without it. Important evidence should not be hidden merely to shorten the article.

### References

Verify every bibliographic record against the publisher page, arXiv record, or DOI. Cite primary work for technical claims. Include the literature most capable of challenging the novelty claim, not only papers from the authors' network. Ensure that cited equations and conclusions actually occur in the cited sources.

## 5. Treat LaTeX and Source Files as Research Infrastructure

APS provides [REVTeX author resources](https://journals.aps.org/revtex), while arXiv states that TeX/LaTeX is its preferred long-term submission format in its [submission guidelines](https://info.arxiv.org/help/submit/index.html). Whatever template is used, the source should be portable and reproducible.

### A clean source package

Keep one authoritative project containing:

```text
paper/
├── main.tex
├── sections/
├── figures/
├── data/
├── code/
├── references.bib
├── supplement.tex
├── response/
└── README.md
```

The repository should record how to compile the paper and regenerate nontrivial figures. Before submission:

- build from a fresh copy, not from an environment containing invisible local files;
- remove absolute paths, temporary files, unused figures, private notes, and track-change comments;
- include required custom style or bibliography files and confirm that licenses permit distribution;
- use vector figures for line art when accepted and adequate resolution for raster images;
- embed fonts and inspect equations at high zoom;
- resolve every undefined reference, citation, duplicate label, and important compiler warning;
- check that figure filenames and LaTeX references match in capitalization;
- confirm that the source and uploaded PDF produce the same scientific content;
- archive the exact submitted source, PDF, supplementary material, code commit, and date.

Do not “improve” a central equation in the PDF alone. A scientific change must enter the authoritative source and all dependent calculations.

## 6. Fix Authorship and Identifiers Before Submission

Authorship is a scientific responsibility, not a reward conferred at upload time. Before the full draft circulates, agree on:

- who qualifies as an author under the target journal's policy;
- author order and corresponding author;
- who will approve and submit each revision;
- who is accountable for each derivation, dataset, code component, and statement;
- what contributions belong in acknowledgements rather than authorship.

Use the [CRediT taxonomy](https://credit.niso.org/) to describe roles such as conceptualization, formal analysis, methodology, software, validation, supervision, visualization, and writing. CRediT has fourteen standardized roles, but it supplements rather than defines authorship.

Each author should connect an authenticated [ORCID iD](https://orcid.org/) in the submission system where supported. ORCID distinguishes researchers with similar names, and publishers can include authenticated identifiers in publication metadata. [Crossref's ORCID auto-update guidance](https://www.crossref.org/community/orcid) explains how an article can be added to an author's ORCID record after DOI registration with the researcher's permission.

At the internal approval meeting, every author should explicitly confirm:

1. the final manuscript and author order;
2. the accuracy of their affiliation and ORCID;
3. their contribution statement;
4. the conflicts, funding, and related-work declarations;
5. consent to submission to the named journal.

Keep a dated record of this approval.

## 7. Write a Cover Letter That Helps the Editor Decide

A cover letter is not a second abstract and not an advertisement full of superlatives. Its purpose is to tell the editor, in one page, why this manuscript belongs in this journal and whether anything requires disclosure. Springer Nature likewise advises authors to explain the work and its relevance in a one-page letter in its [article publication steps](https://www.springernature.com/gp/authors/publish-an-article).

### Cover-letter template

```text
Dear [Editor or Editors],

Please consider our manuscript, “[exact title],” as a [article type]
for [journal].

We establish [one-sentence principal result] for [system/regime]. The
main advance over the closest work, [briefly identify it], is [precise
difference]. This matters to readers of [journal] because [scope- and
audience-specific reason].

The central result has been checked by [independent analytic/numerical/
limiting-case checks, stated briefly]. [Data/code/supplement statement,
if useful.]

The manuscript is original, is not under consideration by another
journal, and has been approved by all authors. [State preprint, related
manuscripts, conflicts of interest, prior contact, or transfer history
when relevant.] We have complied with the journal's authorship,
research-integrity, and data policies.

[Optional: suitable reviewers and any justified exclusions are entered
in the submission system.]

Sincerely,
[Corresponding author, affiliation, ORCID, and contact details]
```

Do not claim “first” unless the literature search supports it. Do not ask for a particular editor or referee because they are friendly. Reviewer suggestions should be independent experts with relevant technical competence, not recent coauthors, close collaborators, supervisors, students, institutional colleagues, or people with other conflicts.

## 8. Assemble the Submission Package and Declarations

The journal's current author instructions are the controlling checklist. A typical package contains:

- manuscript PDF;
- complete LaTeX/source archive if requested;
- separate high-quality figure files if requested;
- supplementary material and its source;
- cover letter;
- title, abstract, keywords, author names, affiliations, email, and ORCID entered as metadata;
- funding agencies and grant numbers in the required registry format;
- author-contribution statement;
- competing-interest declaration;
- data, code, and materials availability statements;
- related manuscripts, preprints, conference versions, or prior consideration disclosed;
- suggested or opposed reviewers with evidence-based reasons where the system allows it;
- permissions for any reused figure, table, or substantial copyrighted material;
- graphical abstract, highlights, plain-language summary, or classification codes if required.

### Read each declaration literally

The corresponding author may be asked to attest that:

- the work is original and not simultaneously submitted elsewhere;
- all authors qualify, approve the submitted version, and accept accountability;
- related work and text overlap have been disclosed;
- conflicts of interest and funding are complete;
- data, code, images, and third-party material were used lawfully;
- required research or institutional approvals exist;
- use of generative-AI tools has been disclosed or limited according to journal policy;
- the authors will comply with the journal's license, data, and ethics policies.

These are not routine boxes to delegate blindly to a student. The corresponding author makes representations on behalf of the group. APS explicitly requires disclosure of related manuscripts and e-prints and places responsibilities on the corresponding author in its [editorial policies](https://journals.aps.org/authors/editorial-policies).

### Perform a metadata-to-PDF audit

Compare the portal against the manuscript character by character:

- title and subtitle;
- author spelling and order;
- affiliations and present addresses;
- corresponding-author email;
- abstract and keywords;
- funding numbers;
- preprint identifier;
- data/code links;
- supplementary-file names.

Metadata errors propagate into indexing services even when the PDF is correct.

## 9. Understand Technical Checks and Desk Review

After upload, two different screens may occur.

### Technical or administrative check

Editorial staff may check file readability, required statements, author information, length, permissions, similarity reports, figure quality, and policy compliance. Springer Nature describes an initial quality check covering matters such as authorship, competing interests, ethics, and plagiarism in its [post-submission editorial process](https://support.springernature.com/en/support/solutions/articles/6000251301-editorial-process-after-submission).

A technical return is not necessarily a scientific rejection. Correct the requested items promptly and verify that no content changed accidentally.

### Editorial or desk review

An editor then evaluates scope and editorial criteria. The editor may reject without external review. APS notes that an editor may end consideration when a manuscript is unlikely to advance under the journal's criteria in its [peer-review policy](https://journals.aps.org/authors/editorial-policies).

Common desk-rejection reasons are:

- outside the journal's scope or wrong article type;
- contribution too narrow or incremental for that journal's threshold;
- novelty not visible or contradicted by recent literature;
- result incomplete, insufficiently verified, or too speculative;
- presentation prevents a reliable evaluation;
- policy, originality, or research-integrity concern;
- manuscript substantially exceeds format constraints;
- audience fit is weak even if the work is technically correct.

Read the letter diagnostically. “Not sufficiently broad for this journal” does not mean “wrong physics.” It may indicate a better specialist destination. Before resubmitting elsewhere, change the journal name, cover letter, article type, formatting, scope language, and any claims exposed by the decision.

## 10. Know What Peer Review Does—and Does Not Do

Referees evaluate validity, novelty, importance, completeness, and presentation and advise the editor. The editor owns the decision. Peer review is quality control by informed experts, not proof that every equation is correct and not a vote counted mechanically.

### Common review models

- **Single-anonymous:** reviewers know the authors; authors do not know reviewers.
- **Double-anonymous:** authors and reviewers are concealed from each other as far as practical. Preprints and small specialties may make inference possible.
- **Open review:** identities, reports, responses, or some combination may be public.
- **Transparent review:** reports, author responses, and decision letters may be published even if reviewer identity remains concealed.

Models and terminology vary by journal. [IOP Publishing's peer-review model guide](https://publishingsupport.iopscience.iop.org/questions/peer-review-models-on-iop-journals/) defines single-anonymous, double-anonymous, and transparent review and tells authors to check each journal's policy. APS journals generally use single-anonymized review, as explained on the [PRL author page](https://journals.aps.org/prl/authors).

### Typical decisions

- **Reject:** the editor has ended consideration. A new submission is possible only if the journal explicitly permits it or after a successful appeal.
- **Reject and resubmit:** the current manuscript is closed, but a substantially rebuilt paper may be invited as a new submission.
- **Major revision:** serious scientific or presentation issues must be resolved; acceptance is not promised.
- **Minor revision:** the paper is promising, but every requested point still requires a response.
- **Conditional acceptance:** specified final changes are required before formal acceptance.
- **Accept:** scientific evaluation is complete, subject to production checks.

Journal labels differ. Read the operative sentences and deadline, not only the heading.

## 11. Respond to Referees as a Scientific Colleague

The response letter should make the editor's next decision easy. It is a map from every concern to evidence and manuscript changes.

### The response method

1. **Wait before reacting.** Read the reports once, then return after the emotional response has passed.
2. **Extract every actionable point.** Split long paragraphs into numbered comments.
3. **Classify each point:** correctness, missing evidence, novelty, scope, clarity, citation, presentation, or optional suggestion.
4. **Assign responsibility and evidence.** Decide who will calculate, verify, rewrite, or check each response.
5. **Change the manuscript first.** The response must describe a real revision, not a promise.
6. **Re-run coupled checks.** Changing an equation may alter figures, limits, abstract, conclusions, supplement, and code.
7. **Answer point by point.** Quote or faithfully summarize the comment, answer directly, and give page/section/equation/line locations.
8. **Prepare clean and marked versions** if the journal requests both.
9. **Audit consistency.** The response, marked manuscript, clean manuscript, source, supplement, and portal metadata must agree.
10. **Obtain all-author approval** before resubmission.

### Response-letter template

```text
Dear Editor,

We thank you and the referees for the careful assessment. We have
revised the manuscript substantially. The principal changes are:

1. [major scientific change or new verification]
2. [clarification of novelty or scope]
3. [new derivation, figure, comparison, or limitation]

Below, referee comments are reproduced in bold/quotation and followed
by our responses. Locations refer to the revised manuscript.

REFEREE 1, COMMENT 1
“[Comment]”

Response: We agree. We have [specific action]. The revised text/equation
appears in Sec. II B, Eq. (14), page 5 [or lines 183–201]. The result now
shows [brief scientific consequence].

REFEREE 1, COMMENT 2
“[Comment]”

Response: We respectfully disagree with the premise that [precise
claim]. Under assumptions [A and B], Eq. (7) implies [short reasoning].
To prevent this misunderstanding, we now state the assumptions before
Eq. (7), add the limiting-case check in Appendix A, and narrow the claim
in the abstract. The new text is [location].
```

### How to disagree well

A justified disagreement contains four elements:

1. acknowledge the concern;
2. identify the exact point of disagreement;
3. provide derivation, evidence, policy, or literature—not authority;
4. revise the manuscript so future readers do not encounter the same ambiguity.

Never write “the referee clearly did not read the paper.” If an expert reader missed something, the presentation may need improvement even when the physics is correct.

### When reports conflict

Do not choose whichever report is easier. Explain the conflict to the editor, propose a scientifically coherent resolution, and state its consequences. For example: preserve the derivation in an appendix, shorten the main text, and add a summary of assumptions. The editor can then adjudicate between incompatible requests.

### When a requested calculation is too large

Do not merely say it is “beyond scope.” Explain:

- what question the calculation would answer;
- why it is not necessary for the manuscript's stated claim;
- what evidence already supports that claim;
- what smaller check or limitation statement has been added;
- whether the requested extension is identified as future work.

## 12. Handle Rejection, Transfer, and Appeal Rationally

### After rejection

Hold a short post-decision meeting and classify the outcome:

- **fit rejection:** retarget with changes in framing and format;
- **threshold rejection:** choose a journal whose selectivity matches the contribution;
- **correctable scientific rejection:** repair calculations, evidence, or comparison before resubmission;
- **fundamental rejection:** pause publication until the central claim is changed or withdrawn;
- **possible procedural/factual error:** evaluate an appeal under the journal's policy.

Do not send the unchanged paper to the next journal within hours. At minimum, resolve valid referee points, update the literature search, adapt the manuscript and cover letter, and archive the rejected version and correspondence.

### Transfer

A publisher or journal family may offer transfer of files and sometimes reviews. Before accepting, check:

- the destination's scope, reputation, peer-review model, and charges;
- whether reviews and identities or confidential correspondence transfer;
- whether the new editor will make an independent decision;
- whether the manuscript can be revised before transfer;
- whether the offer is optional and whether declining affects future submission.

Convenience is not evidence of suitability. Treat the destination as a fresh journal decision.

### Appeal

An appeal is appropriate when there is a material factual error, demonstrable misapplication of journal policy, overlooked evidence central to the decision, serious unmanaged conflict, or a procedural failure that could change the outcome. It is usually not appropriate because the authors dislike the editor's assessment of priority or because one referee recommended acceptance.

Follow the journal's stated route and deadline. APS describes formal appeal routes and review of whether its procedures were followed in the [Physical Review editorial policies](https://journals.aps.org/authors/editorial-policies). A useful appeal is brief:

```text
Subject: Appeal regarding manuscript [ID and title]

We request reconsideration of the decision dated [date] on one specific
ground: [factual or procedural issue]. The decision/report states [exact
point], whereas [equation, supplied evidence, policy, or record] shows
[concise correction]. This issue is material because [effect on the
decision].

We are not requesting reconsideration merely because we disagree with
the journal's editorial threshold. We ask that [specific remedy, such as
independent editorial review] be considered under the journal's appeal
policy.
```

Do not attack a referee, speculate about identity, mobilize personal contacts, or submit the manuscript elsewhere while the appeal remains active unless the journal explicitly permits it. If the group decides to move on, close or withdraw the appeal first.

## 13. Acceptance Is the Start of Production, Not the End of Checking

After acceptance, the publisher may request source files, high-resolution figures, permissions, a publishing agreement, an open-access selection, and payment information. Read the agreement. Determine whether copyright is transferred or a license to publish is granted, which reuse rights the authors retain, what Creative Commons license applies if open access is chosen, and whether funder or institutional requirements are met.

Do not pay an invoice based only on an unsolicited email. Verify charges inside the journal's official system or through a known publisher contact.

### Proofs are for correctness

Proofs are normally intended to correct production errors and small author errors, not to rewrite the paper or add new results. Deadlines may be short. Elsevier's [Proof Central guidance](https://www.elsevier.com/researcher/author/tools-and-resources/proof-central) illustrates the need to answer production queries and inspect the article in journal style.

Two people should proof independently. Check:

- title, author order, spelling, affiliations, corresponding author, and ORCID;
- abstract and section headings;
- every displayed equation, sign, index, exponent, Greek letter, matrix, alignment, and equation number;
- in-text equation, figure, table, section, appendix, and supplementary references;
- figure resolution, labels, colors, legends, cropping, and caption association;
- tables, numerical precision, units, and column alignment;
- references, page/article numbers, arXiv identifiers, and DOI links;
- acknowledgements, grant numbers, contribution, conflict, data, and code statements;
- hyperlinks and supplementary files;
- copy-editor queries and the final correction log.

Compare the proof with the accepted manuscript, not only with memory. After returning corrections, save the annotated proof and the publisher's confirmation.

### DOI, online publication, and version of record

A DOI is a persistent identifier, not a quality score. Crossref explains that publishers register bibliographic metadata and a DOI so the work remains discoverable and linkable even if its web location changes in its [guide for researchers](https://www.crossref.org/community/researchers). The first online appearance may already be the version of record even before assignment to an issue, volume, or page range.

Record separately:

- acceptance date;
- online-publication date;
- DOI;
- volume, issue, page or article number when assigned;
- license and open-access status;
- accepted-manuscript and version-of-record URLs.

## 14. Manage Preprints and Versions Deliberately

In quantum physics, arXiv is often part of the communication workflow, but the preprint and journal article are related versions, not interchangeable files.

### Before posting

- Check the target journal's current preprint and double-anonymous-review policy.
- Obtain approval from every author for the exact preprint version.
- Select the correct arXiv category and cross-lists.
- Choose a license deliberately and confirm compatibility with later publishing choices.
- Remove confidential referee material, submission-system data, and private notes.
- Compile in arXiv's environment and inspect the generated PDF and metadata.

arXiv's [submission guidelines](https://info.arxiv.org/help/submit/index.html) require a refereeable scientific contribution, describe accepted source and figure formats, and instruct authors to verify processed files before final submission.

### During review

Decide as a group when a revision is scientifically substantial enough for a new preprint version. Do not post a referee report or imply editorial endorsement. Mention the preprint identifier during journal submission and follow the journal's policy on citing it.

arXiv's [version-replacement guidance](https://info.arxiv.org/help/replace.html) explains that a public replacement creates a new version, requires a description of changes, and leaves earlier versions publicly available. Therefore, use the version comment to state meaningful changes accurately.

### After acceptance or publication

1. Check which manuscript version the journal agreement permits you to deposit.
2. Update arXiv with an allowed accepted version when appropriate.
3. Add the journal reference and DOI using arXiv's [journal-reference and DOI procedure](https://info.arxiv.org/help/jref.html).
4. Do not upload the typeset publisher PDF unless the license expressly allows it.
5. Link the preprint, accepted manuscript, code/data release, and version of record without presenting them as identical.

Maintain a local version register:

```text
v1-preprint       initial public scientific version
v2-preprint       revision after new checks or peer review
submitted         exact journal submission
revised-1         exact first revision and response
accepted          author-accepted manuscript
proof             typeset proof with corrections
version-of-record publisher's final citable article
```

## 15. Remain Responsible After Publication

### Publication-day tasks

- Open the final article from the DOI and inspect the HTML, PDF, equations, figures, supplement, and links.
- Confirm that indexing metadata lists authors, affiliation, abstract, references, funding, and license correctly.
- Add or authorize the work in ORCID and institutional systems.
- Update the arXiv journal reference and permitted manuscript version.
- Create a stable tagged release for associated code or data and cite its identifier.
- Share a restrained summary that distinguishes the result, assumptions, and implications.
- Add the paper to the group's internal result and supervision records.

### When an error is found

First determine whether it is:

- a harmless typographical issue that does not affect interpretation;
- a meaningful but local error correctable without invalidating the conclusion;
- an authorship, affiliation, funding, or metadata error;
- a substantial error affecting part of the analysis;
- a fundamental error making the findings unreliable;
- a suspected integrity or legal problem.

Notify all coauthors and contact the journal promptly with the exact location, corrected content, cause, and effect on conclusions. Do not silently replace a local PDF and hope the problem disappears.

Publishers use terms differently, but a **correction**, **erratum**, or **corrigendum** usually amends a reliable article; an **expression of concern** alerts readers while a serious matter remains unresolved; and a **retraction** marks findings that should not be relied upon. IOP explains how corrections remain linked to the article in its [post-publication correction policy](https://publishingsupport.iopscience.iop.org/questions/post-publication-corrections-to-journal-articles/). The [COPE retraction guidelines](https://publicationethics.org/sites/default/files/retraction-guidelines-cope.pdf) emphasize correcting the scholarly record transparently and identify major error, fabrication, plagiarism, unauthorized material, unethical research, and compromised review among grounds that may warrant retraction.

An honest correction is part of responsible scholarship. Concealment transforms a correctable scientific mistake into an integrity problem.

## 16. A Supervisor's Operating System

For every paper, keep a small publication ledger containing:

- working and final title;
- one-sentence claim and novelty comparison;
- target-journal brief and backup ladder;
- author order, CRediT roles, ORCID, and dated approvals;
- verification log for equations, code, figures, and limiting cases;
- source commit and hashes or filenames of every submitted version;
- submission ID, editor, dates, status, and deadline;
- decision letters, referee reports, response matrices, and revised files;
- accepted manuscript, agreement, proof, DOI, and version-of-record link;
- preprint versions, repository identifiers, and correction history.

At each supervision meeting ask four questions:

1. What claim changed since the last version?
2. What evidence now supports or weakens it?
3. What could a skeptical expert reasonably object to?
4. Which exact file is the authoritative version?

This teaches the scholar that publication is controlled scientific reasoning, not formatting followed by waiting.

## 17. Complete Submission Checklist

Copy this checklist into the paper's repository and record the name of the person who verified each item.

### Target and policy

- [ ] Journal scope and editorial criteria have been read on the official site.
- [ ] Correct article type has been selected.
- [ ] Recent similar papers in the target journal have been examined.
- [ ] Length, abstract, figure, reference, and supplementary limits are satisfied.
- [ ] Peer-review, preprint, data/code, AI-tool, and prior-publication policies are understood.
- [ ] Open-access route, expected charges, agreements, and waiver options are known.
- [ ] A suitable backup journal is documented.

### Scientific readiness

- [ ] The central claim can be stated in one precise sentence.
- [ ] Closest prior work is identified and the novelty difference is explicit.
- [ ] Every central derivation has been independently checked.
- [ ] Units, signs, indices, phases, normalizations, and conventions have been audited.
- [ ] Symmetries, conservation laws, and operator properties have been checked.
- [ ] Known limits and benchmark cases are recovered.
- [ ] Approximation order and validity regime are stated.
- [ ] Numerical convergence, precision, tolerance, and robustness checks are complete.
- [ ] Code-generated figures and values can be reproduced.
- [ ] Conclusions do not exceed the evidence or parameter regime.
- [ ] Limitations and unresolved issues are stated honestly.

### Manuscript

- [ ] Title is specific, searchable, and not inflated.
- [ ] Abstract states problem, method, result, regime, and significance.
- [ ] Introduction identifies the gap and makes a precise novelty claim.
- [ ] Model, assumptions, notation, units, and boundary/initial conditions are defined.
- [ ] Derivations contain enough information for expert verification.
- [ ] Results and interpretation are distinguished.
- [ ] Every figure is necessary, legible, reproducible, and fully captioned.
- [ ] Appendices and supplement contain supporting—not concealed essential—evidence.
- [ ] References have been verified and include competing/contrary relevant work.
- [ ] Claims of priority, exactness, generality, and significance are justified.
- [ ] Spelling, grammar, cross-references, equation numbers, and citations have been checked.

### Authorship and integrity

- [ ] Authorship eligibility and order were agreed before submission.
- [ ] CRediT roles accurately describe contributions.
- [ ] All names, affiliations, emails, and ORCID iDs are correct.
- [ ] Every author approved the exact submitted manuscript and target journal.
- [ ] Corresponding author responsibilities are understood.
- [ ] Funding and grant numbers are complete.
- [ ] Competing interests are declared.
- [ ] Related manuscripts, prior consideration, conference versions, and preprints are disclosed.
- [ ] There is no simultaneous journal submission.
- [ ] Reused material has correct citation and permission.
- [ ] Text, equations, figures, data, and code satisfy originality and integrity policies.
- [ ] Any AI-tool use complies with the current journal policy and is disclosed if required.

### Files and reproducibility

- [ ] The manuscript builds from a clean environment.
- [ ] All LaTeX, bibliography, style, and figure files are included.
- [ ] No absolute paths, private comments, hidden tracked changes, or unused confidential files remain.
- [ ] Compiler warnings, broken citations, and undefined references are resolved.
- [ ] PDF fonts, equations, figures, hyperlinks, and page boundaries were visually inspected.
- [ ] Supplementary material matches citations in the manuscript.
- [ ] Data/code availability links work and access permissions are correct.
- [ ] Exact submitted PDF, source, supplement, and code commit are archived.

### Portal and cover letter

- [ ] Cover letter names the correct journal, editor, title, and article type.
- [ ] Cover letter states the contribution and scope fit without exaggeration.
- [ ] Portal title, abstract, authors, affiliations, keywords, funding, and files match the PDF.
- [ ] Reviewer suggestions are expert and conflict-free.
- [ ] Reviewer exclusions, if any, have specific professional justification.
- [ ] Every declaration was read and answered accurately.
- [ ] The generated submission proof was downloaded and checked.
- [ ] Submission ID, confirmation email, date, and archived files are recorded.

### Revision

- [ ] Decision category, deadline, and editor instructions are understood.
- [ ] Every referee and editor comment appears in the response matrix.
- [ ] Each response states an action, evidence, and manuscript location.
- [ ] Disagreements are technical, respectful, and supported.
- [ ] All affected equations, figures, conclusions, source, supplement, and metadata were updated.
- [ ] Clean and marked manuscripts satisfy journal instructions.
- [ ] All authors approved the revision and response letter.
- [ ] Exact revised files and correspondence are archived.

### Acceptance and proofs

- [ ] Publishing agreement, retained rights, and open-access license were read.
- [ ] Funder and institutional deposit requirements are satisfied.
- [ ] Any invoice was verified through an official journal channel.
- [ ] Two people independently checked the proof against the accepted manuscript.
- [ ] Author data, equations, figures, tables, references, funding, and supplement were checked.
- [ ] Every production query received an answer.
- [ ] Proof corrections and publisher confirmation are archived.

### Publication and stewardship

- [ ] DOI resolves to the correct article.
- [ ] HTML, PDF, metadata, supplement, and links were checked after publication.
- [ ] Journal reference and DOI were added to arXiv.
- [ ] Deposited manuscript version complies with the publishing agreement.
- [ ] ORCID and institutional records were updated or authorized.
- [ ] Code/data received a stable release and identifier where appropriate.
- [ ] Any discovered error was assessed with all authors and reported promptly.
- [ ] Corrections, if needed, are linked in the group's publication ledger.

## Authoritative Resources

- [APS: Editorial Policies and Practices](https://journals.aps.org/authors/editorial-policies)
- [APS: Physical Review Letters Information for Authors](https://journals.aps.org/prl/authors)
- [APS: REVTeX resources](https://journals.aps.org/revtex)
- [Springer Nature: Step-by-step article publishing](https://www.springernature.com/gp/authors/publish-an-article)
- [Springer Nature: Editorial process after submission](https://support.springernature.com/en/support/solutions/articles/6000251301-editorial-process-after-submission)
- [IOP Publishing: Peer-review models](https://publishingsupport.iopscience.iop.org/questions/peer-review-models-on-iop-journals/)
- [IOP Publishing: Post-publication corrections](https://publishingsupport.iopscience.iop.org/questions/post-publication-corrections-to-journal-articles/)
- [COPE: Retraction guidelines](https://publicationethics.org/sites/default/files/retraction-guidelines-cope.pdf)
- [arXiv: Submission guidelines](https://info.arxiv.org/help/submit/index.html)
- [arXiv: Submit a new version](https://info.arxiv.org/help/replace.html)
- [arXiv: Add a journal reference and DOI](https://info.arxiv.org/help/jref.html)
- [CRediT: Contributor Role Taxonomy](https://credit.niso.org/)
- [ORCID: Researcher identifiers](https://orcid.org/)
- [Crossref: DOI information for researchers](https://www.crossref.org/community/researchers)
- [Crossref: ORCID auto-update](https://www.crossref.org/community/orcid)
- [Elsevier: Proof Central](https://www.elsevier.com/researcher/author/tools-and-resources/proof-central)

The mature publication habit is simple to state: **make the claim precise, preserve the evidence, disclose the context, answer criticism with work, and protect the scientific record after publication.**

[← Previous: journal landscape and selection]({{ '/quantum-physics-journal-landscape/' | relative_url }}) · [Next: publication ethics and open access →]({{ '/publication-ethics-open-access/' | relative_url }})
