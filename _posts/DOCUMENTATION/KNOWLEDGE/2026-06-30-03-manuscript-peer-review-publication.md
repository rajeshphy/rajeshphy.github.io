---
title: "The Scholarly Publication Lifecycle in Physics"
summary: "A detailed explanation of manuscripts, journal submission, editorial triage, peer review, production, scholarly versions, and post-publication changes in physics."
description: "A neutral reference to the scholarly publication lifecycle in physics, from manuscripts and peer review to DOI registration, versions, and corrections."
date: 2026-06-30 11:30:00 +0530
categories:
  - doc-knowledge
tags:
  - theoretical-physics
  - scholarly-publishing
  - peer-review
  - journal-submission
  - arxiv
  - research-literacy
permalink: /manuscript-peer-review-publication/
hidden: true
---

[← Course roadmap]({{ '/quantum-physics-journal-system/' | relative_url }}) · [Previous: quantum physics journal landscape]({{ '/quantum-physics-journal-landscape/' | relative_url }}) · [Next: publication ethics and open access →]({{ '/publication-ethics-open-access/' | relative_url }})

Scholarly publication is the system by which a research claim moves from an author's manuscript into a maintained part of the scientific record. The visible article is only one object in that system. Around it are source files, metadata, declarations, editorial correspondence, referee reports, revised versions, publishing agreements, proofs, persistent identifiers, repository copies, indexing records, and any later correction notice.

In physics, this lifecycle often includes both a journal and a preprint repository such as arXiv. The repository establishes a public, dated version and enables rapid circulation; the journal organizes editorial selection, peer review, production, and stewardship of the version of record. These functions overlap in dissemination but are not identical.

A simplified lifecycle is:

**research result → manuscript → journal submission → technical checks → editorial triage → external peer review when selected → editorial decision → revision or closure → acceptance → production and proof → version of record and DOI → indexing and preservation → post-publication discussion or correction when necessary**.

The exact names of stages vary among publishers. The general sequence is described in the [APS Physical Review editorial policies](https://journals.aps.org/authors/editorial-policies), the [Physical Review Letters information for authors](https://journals.aps.org/prl/authors), and the [Springer Nature article-publishing overview](https://www.springernature.com/gp/authors/publish-an-article).

## 1. The Manuscript as a Scholarly Object

A manuscript is the author's proposed account of a research contribution. It is not yet the journal's version of record, even if it is complete, publicly available as a preprint, or formatted to resemble a published article. Its status changes through submission, revision, acceptance, and production.

For theoretical physics, a manuscript may contain several kinds of claim:

- a theorem or exact analytic result;
- a controlled approximation within a stated regime;
- a numerical result with convergence and precision conditions;
- a new model, Hamiltonian, action, formalism, or solution method;
- a prediction or phenomenological constraint;
- a reinterpretation or unification of established results;
- a review or synthesis of a research area; or
- a criticism, correction, or extension of an earlier paper.

The scientific record distinguishes these claim types because they carry different evidential burdens. An exact theorem depends on definitions, hypotheses, and proof. An asymptotic result depends on its limiting regime and neglected orders. A computational conclusion depends on algorithms, parameter choices, numerical stability, and reproducibility. A physical interpretation depends on whether the mathematical result supports that interpretation and whether alternative explanations remain possible.

In quantum and mathematical physics, readers commonly look for internal checks such as dimensional consistency, normalization, Hermiticity, unitarity, positivity, boundary conditions, conservation laws, symmetries, known limits, convergence domains, regulator dependence, and agreement with established special cases. These features are part of the manuscript's scientific content rather than merely editorial formatting.

The manuscript is also related to, but distinct from, the underlying research record. Derivation notebooks, symbolic-algebra files, numerical code, parameter files, plot data, and failed or intermediate calculations may not all appear in the article. They nevertheless form the evidential history from which the article was produced.

## 2. Common Manuscript and Article Types

Journal names for article types are not standardized. “Letter,” “Communication,” “Full Paper,” and “Article” can carry different meanings in different journal families. The journal's own definition determines the applicable length, scope, and editorial threshold.

### Full research article

A full article presents an original contribution with enough context, derivation, evidence, comparison, and discussion to support its principal claims. In theoretical physics, this format can accommodate a developed formalism, several linked results, substantial appendices, or detailed numerical validation.

### Letter or rapid communication

A Letter is usually short and selective. Its identity comes not only from page or word limits but also from an editorial expectation of urgency, unusually broad interest, or a particularly important advance. A technically correct specialist result may be better suited to a full article even when it can be compressed to Letter length.

### Brief report, note, or technical communication

These formats generally contain a narrower result than a full article: a concise calculation, a specific methodological advance, a clarification, a benchmark, or a focused extension. Their criteria and availability depend strongly on the journal.

### Review, colloquium, or perspective

A review synthesizes a body of literature rather than reporting only one new calculation. Some reviews are comprehensive and technical; others provide a selective conceptual viewpoint. Many high-profile review journals publish mainly by invitation or proposal and assess whether the field is mature enough for synthesis.

### Methods, software, data, or resource article

Some journals recognize reusable code, computational methods, curated data, or research infrastructure as the central output. The evaluative emphasis then includes documentation, validation, availability, interoperability, and usefulness beyond a single paper.

### Comment and reply

A Comment addresses a specific published article, often by identifying an error, limitation, alternative interpretation, or consequential extension. The original authors may be invited to submit a Reply. Journals normally apply special criteria because this format becomes part of an explicit scholarly exchange linked to the original record.

### Erratum or correction notice

An erratum, corrigendum, or correction is not an ordinary new research article. It is a linked publication that changes or clarifies part of an existing article while preserving the publication history. Publisher terminology differs, as discussed below.

Article type is not a universal hierarchy of quality. It identifies the function and expected form of the contribution inside a particular journal.

## 3. The Anatomy of a Physics Manuscript

Physics manuscripts do not all follow one rigid structure, but their components perform recognizable scholarly functions.

### Title and author information

The title identifies the subject and principal contribution for readers, search engines, databases, and citation systems. The byline connects named authors to affiliations and, increasingly, authenticated ORCID iDs. A corresponding author is designated for communication with the journal and usually remains the principal publication contact.

### Abstract

The abstract is both a summary and a metadata object. It appears independently in databases, alerts, search results, and repository records. It normally states the problem, approach, central result, relevant regime or assumptions, and significance without reproducing the full derivation.

### Introduction and literature position

The introduction places the manuscript in a research conversation. It identifies the problem, the nearest prior work, the unresolved gap, the contribution of the present paper, and the audience for whom that contribution matters. This section supplies much of the evidence used during editorial triage to judge novelty and journal fit.

### Model, framework, and notation

For a theoretical paper, this part defines the physical system, degrees of freedom, Hamiltonian or action, geometry, units, conventions, initial or boundary conditions, parameter ranges, and approximation hierarchy. Mathematical conclusions acquire meaning only relative to these definitions and assumptions.

### Methods and derivation

The methods may be analytic, numerical, symbolic, statistical, or mixed. Standard operations can be compressed, while nonstandard transformations, delicate approximations, regularization choices, branch selections, numerical algorithms, and convergence conditions generally require fuller exposition. Appendices often carry technical details needed for verification but not for the main conceptual sequence.

### Results

The results section presents the equations, theorems, spectra, phase diagrams, numerical outputs, figures, or parameter constraints that constitute the paper's contribution. A figure is part of the evidence: its axes, units, parameter values, normalization, legend, and caption determine how it can be interpreted.

### Discussion and limitations

Discussion connects formal results with physical meaning and compares them with earlier theory, computation, or experiment. It also locates the domain in which the conclusion holds. A limitation may arise from a model assumption, truncation, numerical range, missing interaction, unresolved uniqueness question, or absence of experimental access.

### Conclusion

The conclusion restates what has been established and its implications. It differs from speculation about work that has not yet been performed.

### Acknowledgements, contributions, funding, conflicts, and availability

Modern articles often contain structured statements about funding, author contributions, conflicts of interest, data, code, and materials. The [CRediT taxonomy](https://credit.niso.org/) provides fourteen standardized contribution roles, including conceptualization, formal analysis, methodology, software, supervision, validation, visualization, and writing. These statements make responsibility and credit more visible but do not by themselves define who qualifies for authorship.

### References, appendices, and supplementary material

References link the claim to prior scholarship. Appendices remain part of the article and are usually typeset with it. Supplementary material is a separately associated object and can contain extended calculations, multimedia, data, or additional figures. A journal may review and host supplementary files under policies that differ from those applied to the main article.

## 4. PDF, LaTeX Source, Figures, Data, and Code

The manuscript PDF is the human-readable representation evaluated by editors and referees. The source package is the set of files from which that representation is produced. In physics, LaTeX is common because it handles equations, cross-references, bibliographies, and complex notation. APS maintains [REVTeX](https://journals.aps.org/revtex) for manuscripts submitted to Physical Review and related journals.

A source package can include a main TeX file, section files, bibliography databases or a generated bibliography, figures, custom macros, style files, and supplementary source. At submission, some journals initially require only a PDF; others request source immediately. After acceptance, production normally requires editable source so the publisher can convert the article into its house style and structured formats such as XML and HTML.

Figures have both scientific and production properties. Vector formats are well suited to line art and diagrams; raster formats are used for images and density plots. Resolution, fonts, colors, and accessibility affect their published form. Reused figures may require permission even when the underlying scientific result is cited.

Data and code policies vary. A theoretical paper may have no experimental dataset but may still depend on numerical code, symbolic scripts, simulation configurations, or generated data. Availability statements describe whether these materials are public, available on request, restricted, or not applicable. Repository identifiers and software releases can become separate citable research outputs.

arXiv also prefers TeX/LaTeX source for TeX-generated papers and explains accepted formats, figure handling, file naming, compilation, and metadata in its [submission guidelines](https://info.arxiv.org/help/submit/index.html).

## 5. What a Journal Submission Contains

Journal submission creates a database record around the manuscript. Uploading a PDF is only one part of that record.

### Bibliographic metadata

The submission portal normally records the title, abstract, keywords, article type, author order, affiliations, corresponding-author details, ORCID iDs, funding information, and subject classifications. Editors use this information to route the paper; publishers later use it for production and DOI metadata. A discrepancy between portal metadata and the manuscript can propagate into indexes even when the PDF is correct.

### Cover letter

The cover letter is private editorial correspondence. It identifies the manuscript, article type, principal contribution, and claimed fit with the journal. It can also disclose related manuscripts, prior consideration, a preprint, unusual history, or information that does not belong in the public article. Springer Nature includes the cover letter as a distinct stage in its [publication overview](https://www.springernature.com/gp/authors/publish-an-article).

### Declarations

Submission systems commonly require statements that the work is original, is not simultaneously under consideration by another journal, has been approved by all authors, and complies with authorship, conflict, funding, research-integrity, data, and permissions policies. Related papers and public e-prints may also need to be identified. APS describes the corresponding author's responsibilities and disclosure of related material in its [editorial policies](https://journals.aps.org/authors/editorial-policies).

### Reviewer information

Some journals invite suggested reviewers or justified exclusions. Suggestions are advisory. The editor remains responsible for selecting qualified reviewers and evaluating conflicts of interest.

### Files beyond the main paper

The portal may contain supplementary files, source archives, separate figures, graphical abstracts, highlights, data statements, author-contribution statements, permissions, and reporting forms. These objects may be visible to referees, visible only to editors, or intended solely for production.

The initial submission is therefore both a scientific document and a set of representations about authorship, originality, relationships to prior work, and compliance with policy.

## 6. Administrative Checks and Editorial Triage

Two distinct forms of initial screening often occur.

### Technical or administrative screening

Editorial staff or automated systems may test whether files open, required fields are complete, author information is consistent, figures meet basic specifications, and declarations or permissions are present. A similarity report can identify text overlap for editorial interpretation; it is not by itself a verdict of plagiarism. Springer Nature describes an initial quality check involving authorship, competing interests, ethics, and plagiarism in its [post-submission process](https://support.springernature.com/en/support/solutions/articles/6000251301-editorial-process-after-submission).

A manuscript returned for technical correction has not necessarily undergone a scientific decision. Portal terms such as “submission incomplete,” “technical check,” and “returned to author” usually refer to this administrative layer.

### Editorial triage or desk review

An editor assesses whether the manuscript falls within scope and appears capable of meeting the journal's criteria for validity, novelty, importance, completeness, and presentation. A broad selective journal may ask whether the contribution changes understanding beyond a narrow specialty. A specialist journal may emphasize technical significance for its defined community.

The editor may reject a manuscript without external review. This is commonly called desk rejection, editorial rejection, or rejection without review. It can reflect poor scope fit, insufficient priority for that venue, an article-type mismatch, an unclear contribution, inadequate support, serious presentation problems, or a policy concern. It does not always imply that the result is incorrect.

APS states that its editors may end consideration when a submitted, resubmitted, or transferred manuscript is unlikely to advance under the journal's criteria. It also emphasizes that editors, not referees, are responsible for publication decisions.

## 7. External Peer Review

Peer review is the evaluation of a manuscript by researchers with relevant expertise. Referees examine the validity, novelty, significance, completeness, literature context, and clarity of the work and submit reports to the editor. They advise; they do not independently publish or reject the paper.

### Selection and conflicts

Editors select referees using subject expertise, publication history, availability, and conflict-of-interest information. A referee with a close collaboration, direct competition, personal relationship, or other material conflict may be unsuitable. Review materials are generally confidential unless the journal operates an open or transparent model.

### Single-anonymous review

In single-anonymous review, reviewers know the authors' identities but authors do not know the reviewers' identities. This remains common in physics and is the general model used by APS journals.

### Double-anonymous review

In double-anonymous review, identities are concealed in both directions during evaluation. Authors usually prepare an anonymized manuscript. Complete anonymity can be difficult in a small specialty or when a closely related preprint is public.

### Open and transparent review

“Open review” can mean that reviewer identities are disclosed, that reports are public, or both. In transparent review, reports, author responses, and decision letters may accompany the published article even when reviewer names remain confidential. [IOP Publishing's review-model guide](https://publishingsupport.iopscience.iop.org/questions/peer-review-models-on-iop-journals/) distinguishes single-anonymous, double-anonymous, and transparent arrangements.

### The report and the editorial assessment

A report commonly contains a summary of the work, an assessment of strengths and weaknesses, major scientific concerns, requests for clarification or additional evidence, minor corrections, and a confidential recommendation. Reports can disagree because referees bring different expertise, standards, and interpretations. The editor evaluates the manuscript, reports, author correspondence, journal criteria, and sometimes additional advice. The final decision is not necessarily a majority vote.

Peer review reduces some errors and improves many papers, but acceptance does not certify that every equation is permanently correct. The published authors remain responsible for the work, and the literature remains open to later criticism and correction.

## 8. Editorial Decision Categories

Decision terminology varies, and the operative text of a decision letter matters more than its label.

### Rejection

Rejection closes the current consideration. It may follow desk review or external review. Some journals permit a formal appeal; some permit a substantially changed manuscript as a new submission; others regard the decision as final except for procedural error.

### Major revision

A major-revision decision indicates that the editor sees a possible route to publication but considers substantial scientific or presentational changes necessary. It is not an acceptance. The revision may return to the same referees, go to new referees, or be assessed editorially.

### Minor revision

Minor revision usually means that the central work appears publishable but specified corrections or clarifications remain. The distinction between major and minor is local to the journal and does not guarantee a particular outcome.

### Reject and resubmit or revise and resubmit

This category often closes the original record while inviting a substantially rebuilt paper for fresh consideration. Depending on the journal, the new submission may retain some connection to earlier reports or may begin an entirely new review.

### Conditional acceptance

Conditional acceptance means that publication depends on a defined set of final changes or checks. Formal acceptance occurs only after those conditions are satisfied.

### Acceptance

Acceptance ends the journal's scientific selection stage and transfers the article into production. It does not mean that the article is already the version of record.

### Transfer offer

A transfer offer proposes consideration by another journal, often within the same publisher. Files, metadata, and sometimes referee reports can move with the manuscript. The destination journal makes its own decision under its own scope and criteria.

## 9. Revision and Response as Parts of the Record

A revision consists of a changed manuscript and an account of how editorial and referee comments were addressed. The response document is normally confidential correspondence, although transparent-review journals may publish it.

Point-by-point responses allow the editor and referees to connect each concern with a change, clarification, additional calculation, or reasoned disagreement. A revision can alter equations, figures, claims, citations, appendices, supplementary material, and metadata. Because changes are coupled, one corrected assumption may affect several sections of the paper.

Reasoned disagreement is a recognized part of peer review. Authors may show that a request rests on an incorrect premise, falls outside the paper's claim, conflicts with another request, or is not supported by available evidence. The editor then adjudicates. A referee recommendation can change after revision, and an editor can reach a different conclusion from the recommendation.

Review can involve several cycles. Some journals limit repeated rounds because indefinite refinement through anonymous review is not considered an efficient substitute for a clear editorial decision. The review history remains associated with the journal's manuscript record even when it is not public.

## 10. Rejection, Transfer, Appeal, and Complaint

These processes serve different functions.

A rejection is a scientific or editorial decision about publication in a particular journal. A transfer is an administrative route to another venue. An appeal asks the journal to reconsider a decision under its formal policy. A complaint concerns the conduct or management of the process rather than merely the scientific outcome.

Appeals generally focus on a material factual error, overlooked evidence, misapplication of journal policy, unmanaged conflict, or procedural irregularity. They are evaluated by an editor, editorial board member, executive editor, or other authority specified by the journal. APS describes escalation routes in its [appeals policy](https://journals.aps.org/authors/editorial-policies). An appeal does not automatically reopen peer review and is conceptually different from submitting a more persuasive revision.

Complaints can concern unreasonable delay, inappropriate communication, confidentiality, discrimination, reviewer conduct, or research-integrity handling. Publishers may have separate editorial and ethics channels. COPE frameworks help journals design processes for appeals, disputes, and corrections, but a journal's own published policy determines the route available in a particular case.

When a manuscript moves to an unrelated journal after rejection, the new journal usually begins a new editorial record. When it moves through a formal transfer, earlier reports may be visible to the receiving editor and can influence whether additional review is required.

## 11. Acceptance and Production

After acceptance, responsibility shifts from the editorial office to a production workflow, although editors may remain involved if a substantive problem appears.

### Final source and production intake

The publisher receives editable text, bibliography, figures, supplementary files, author metadata, and permissions. Production staff or vendors convert the source into the journal's structured format and visual design. Copyediting addresses style, grammar, consistency, references, and journal conventions without changing the scientific meaning.

### Publishing agreement and access route

Authors complete a copyright transfer, an exclusive or non-exclusive license to publish, or an open-access agreement. The agreement defines what the publisher may distribute, what rights authors retain, which manuscript versions may be deposited, and which reuse license applies. A fully open-access or hybrid option may involve an article processing charge, institutional agreement, funder arrangement, or waiver. These legal and financial matters are separate from peer-review acceptance.

### Proof

The proof is the typeset article supplied for verification before final publication. It exposes production errors that may have entered during conversion: altered symbols, broken equations, misplaced figures, incorrect author information, reference errors, or faulty links. It is not normally treated as a new scientific revision stage. Publisher interfaces such as [Elsevier Proof Central](https://www.elsevier.com/researcher/author/tools-and-resources/proof-central) record corrections and production queries.

### Online publication and issue assignment

Many journals publish articles online before assigning them to a print issue, volume, or page range. In continuous-publication journals, the article number and online date may constitute the complete citation. “Online first,” “advance article,” and “article in press” are publisher-specific labels and may represent different stages.

## 12. DOI, Metadata, and the Version of Record

A Digital Object Identifier is a persistent identifier for a digital object. For journal articles, a publisher registers the DOI and associated metadata with an agency such as Crossref. The DOI resolves to the article's current web location even if that location later changes. Crossref explains this persistent-linking function in its [information for researchers](https://www.crossref.org/community/researchers).

DOI registration does not by itself certify peer review, correctness, journal quality, or indexing. Many kinds of research output can receive DOIs. Its principal function is identification and reliable linkage.

Publication metadata can include title, author names, ORCID iDs, abstract, publication dates, journal, volume, issue, article or page number, references, funders, license, relations to preprints or corrections, and the current URL. This metadata feeds library systems, citation databases, search engines, funder systems, and researcher profiles. Crossref can support an [ORCID auto-update](https://www.crossref.org/community/orcid) when authenticated identifiers are deposited and the researcher grants permission.

The **version of record** is the publisher-maintained final article declared as the authoritative journal version. It can later acquire linked notices, but its publication history is preserved. A typeset proof is not necessarily the version of record; an accepted manuscript is not the version of record; and an arXiv version remains a separate manifestation even when its scientific content is nearly identical.

## 13. Preprints and Scholarly Versions

Version terminology is central to physics publishing because several legitimate versions can coexist.

| Version | Meaning |
|---|---|
| Author's original or submitted manuscript | The version submitted to a journal before peer-review changes |
| Preprint | A publicly shared manuscript, commonly on arXiv; it may precede submission or reflect a later author revision |
| Revised manuscript | A journal submission changed during peer review |
| Author accepted manuscript | The peer-reviewed text accepted by the journal, before or apart from the publisher's final typesetting |
| Proof | The production-stage typeset article circulated for correction |
| Version of record | The final publisher-maintained and formally published journal version |

Publisher and funder policies govern which version may be posted, where it may be posted, under what license, and whether an embargo applies. A preprint policy is therefore distinct from an open-access policy.

arXiv assigns an identifier and version number. A replacement after public announcement creates a new version while earlier versions remain accessible. The [arXiv replacement guidance](https://info.arxiv.org/help/replace.html) explains that changes generate a new version and that a version comment records their nature. This permanent history prevents an earlier public manuscript from being silently overwritten.

After journal publication, the arXiv record can contain the journal reference and DOI. arXiv documents these metadata updates in its [journal-reference and DOI guidance](https://info.arxiv.org/help/jref.html). The repository record then links readers to the formal publication without becoming identical to it.

Preprints establish rapid access and priority evidence but do not normally represent journal certification. Conversely, journal publication does not erase the preprint. Citations may point to either object, although the version of record is generally preferred once available unless the cited content exists only in another version.

## 14. Post-Publication Discussion and Changes

Publication does not close scientific evaluation. Readers may reproduce a calculation, find an error, question an interpretation, extend a result, or identify a policy concern. Journals maintain several mechanisms for modifying or commenting on the record.

### Minor amendments

Some publishers correct small production or metadata errors directly and attach a dated notice. The threshold for an unnumbered amendment varies. Changes to scientific content generally require a formal linked notice rather than silent replacement.

### Correction, erratum, or corrigendum

These terms usually describe a limited error whose correction leaves the article's central findings reliable. Some publishers use “erratum” for a publisher error and “corrigendum” for an author error; others use the terms differently or use only “correction.” The notice identifies the original article, states the change, and is linked in both directions. [IOP Publishing's correction policy](https://publishingsupport.iopscience.iop.org/questions/post-publication-corrections-to-journal-articles/) illustrates this linking of a correction with the original record.

### Addendum

An addendum supplies important information discovered or omitted after publication without necessarily correcting an error. Not all journals use this category.

### Expression of concern

An expression of concern alerts readers to a potentially serious problem while an investigation or determination remains incomplete. It is neither a finding of misconduct nor a substitute for a final correction or retraction.

### Retraction

A retraction indicates that the article's findings should not be relied upon or that the publication record has been seriously compromised. Retraction can follow honest major error, fabrication, falsification, plagiarism, redundant publication, unauthorized material, unethical research, a compromised review process, or a major undisclosed conflict. The article normally remains accessible with a prominent retraction notice so the history is not erased.

The [COPE retraction guidelines](https://publicationethics.org/sites/default/files/retraction-guidelines-cope.pdf) state that notices should identify the article, give the reason, state who is retracting it, be freely available, and be linked to the retracted work. Retraction is a correction of the literature, not a mechanism for deleting an inconvenient past.

### Withdrawal and removal

“Withdrawal” can mean cancellation of a manuscript before publication, withdrawal of a preprint with its record retained, or a publisher-specific action on an early online article. Complete removal of a version of record is rare and usually reserved for serious legal, privacy, safety, or fraudulent-publication circumstances. The exact meaning depends on policy.

### Comment, reply, and post-publication review

Formal Comments and Replies extend scholarly debate through the journal. Informal discussion may also occur in repositories, conferences, correspondence, or moderated post-publication platforms. A criticism does not alter the version of record unless the journal publishes a linked response, correction, expression of concern, or retraction.

## 15. The Participants and Their Distinct Roles

The publication lifecycle distributes responsibility across several institutions and people.

- **Authors** create the work, approve the manuscript, make declarations, respond to review, and remain accountable for the published content.
- **The corresponding author** manages formal communication and often makes attestations on behalf of all authors.
- **Editors** control journal selection, choose referees, interpret reports, make decisions, and oversee the integrity of the journal record.
- **Referees** provide confidential or public expert advice under the journal's review model.
- **Editorial staff** manage files, metadata, workflow, policy documentation, and communication.
- **Production staff and vendors** copyedit, typeset, convert, proof, and publish the accepted work.
- **The publisher or scholarly society** maintains infrastructure, policies, licenses, archives, and the version of record.
- **Repositories** preserve and disseminate preprints, accepted manuscripts, data, or code under their own policies.
- **DOI registration agencies and indexers** identify, connect, and organize publication metadata; they do not replace editorial judgment.
- **Institutions and funders** can investigate conduct, require access or data practices, and impose reporting conditions.
- **Readers and the wider research community** continue evaluation through citation, replication, criticism, reuse, and correction.

Confusion arises when one role is mistaken for another. A referee advises but does not own the decision. An index records coverage but does not certify every article. A DOI identifies an object but does not establish quality. A preprint repository disseminates a manuscript but does not perform the same certification as a journal. A publisher creates and maintains the version of record but does not replace the authors' scientific responsibility.

## 16. Reading Journal Statuses Correctly

Submission portals expose only a simplified view of an internal workflow. Labels such as “with editor,” “editor assigned,” “under review,” “reviews complete,” “decision in process,” and “production” do not have universal definitions. “Under review” can mean editorial assessment in one system and active external review in another. A status can remain unchanged while invitations are declined, a new referee is sought, an editor consults a colleague, or an administrative check proceeds.

Publication dates also represent different events. A record can contain received, revised, accepted, online, issue, and correction dates. The acceptance date marks editorial completion; the online date marks public journal publication; the issue date locates the article in a volume or issue. These dates may be separated by days or months.

Processing time is likewise composed of several intervals: author revision time, editor handling time, reviewer invitation and report time, and production time. A single “time to publication” number can conceal these different components.

The mature understanding of journal publication is therefore institutional rather than ceremonial. A paper does not pass through one mysterious gate. It moves through a documented sequence in which the scientific claim, editorial criteria, expert criticism, legal permissions, metadata, persistent identifiers, public versions, and correction mechanisms each perform a different function.

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

[← Previous: quantum physics journal landscape]({{ '/quantum-physics-journal-landscape/' | relative_url }}) · [Next: publication ethics and open access →]({{ '/publication-ethics-open-access/' | relative_url }})
