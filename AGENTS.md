---
published: false
sitemap: false
---

# Codex Project Memory

This project is the transferred and slightly modified Jekyll academic site for Rajesh Kumar at `/Users/rajeshkumar/XXX/ACADEMIC/LECTURE`.

## Working Rules

- Preserve user edits. Inspect files before changing them.
- Use `apply_patch` for manual edits whenever possible.
- Build check with `bundle exec jekyll build`.
- Current `_config.yml` in this transferred project uses `baseurl: ""`, so generated links should not assume `/PHY`.
- Keep changes small and aligned with the existing minimalist premium design.

## Site Identity

- Personal academic physics website for Rajesh Kumar.
- SEO direction: Rajesh Kumar, physics lecture notes, quantum mechanics, mathematical physics, LaTeX resources, TikZ diagrams, research papers, quizzes, UG/PG study materials.
- Design tone: premium, clean, academic, readable, mobile-friendly.

## Navigation And Layout

- Header navigation should include: `Home`, `About`, `Ref`, `Tags`, `Search`.
- `Search` opens an inline search bar in the same navigation line and shows matching results while typing.
- Header right icons are only contact icons, currently email and WhatsApp. Keep them visually balanced with the nav; recent desired sizing is smaller than the earlier large circles.
- Footer should be centered with copyright only; no repeated right-side icons in footer.

## Sass Architecture

Styles are split into Jekyll Sass partials under `_sass`. Keep relevant edits in the appropriate partial:

- `_base.scss`: global variables/base elements.
- `_header.scss`: navigation and inline search.
- `_icons.scss`: header/share/contact icons.
- `_share.scss`: share buttons.
- `_layout-hero.scss`: home hero.
- `_posts-pages.scss`: individual post layout.
- `_post-list.scss`: post/archive listing.
- `_notes-resources.scss`: notes, semester pages, Ref/resources.
- `_tables-search-pager.scss`: tables, search page/results, pagination.
- `_code-math.scss`: code blocks and math overflow.
- `_quiz.scss`: reusable quiz UI.
- `_about-cv.scss`: About/CV page.
- `_mobile.scss`: responsive overrides.

## Home Page

- Home hero should be compact, premium, and physics-oriented.
- The old `Search Archive` hero button was replaced by `Research`.
- `Research` should show only posts whose category contains `research`, sorted yearwise/datewise. Do not filter research by tag.
- `Open Notes` should point to the notes/materials page.
- Blog listing on home should remain thinner/compact and premium.
- Pagination should use premium left/right arrow controls, not plain text-only `Older`.

## Notes And Materials

- Notes page should be named/linked as `Notes`, not `Open Notes`.
- Notes should present semester-wise materials in a modern collapsible notice-board style.
- Current structure used in the earlier project:
  - `_posts/MSC/SEM-I/`
  - `_posts/MSC/SEM-III/`
  - `_posts/RESEARCH/`
  - `_posts/REF/`
  - `_posts/DOCUMENTATION/`
- Documentation posts should appear inside Notes after archive in a collapsed `Jekyll Documentation` section.
- Documentation posts were dated 2024 so they sort after current posts.

## Ref Page

- Ref page should follow the screenshot architecture: itemized, hyperlinked resource list with nested bullets.
- Do not use decorated boxed/card layout for the main Ref resources.
- Remove the paragraph beginning `Supplementary resources for the course...`.
- Use `Courier New`, Courier, monospace for the Ref list.
- Keep Ref font smaller and readable; recent desired scale was about `clamp(1rem, 1.6vw, 1.28rem)` desktop and about `.96rem` mobile.
- Use fixed green/teal link colors; no color-change animation for sublists.

## About Page

- About should feel like a premium CV page, not a vague blog page.
- Research Papers section should appear first.
- Research paper list should show first items and use a centered, compact, premium collapsible control for additional papers.
- Do not use the word `Focus` line in the Research Papers list.
- Books and article section should not repeat the word `Book` unnecessarily.
- ISBN/ISSN details to preserve:
  - The First Generation Mind: `ISBN 979-890510755-9`
  - Physics TikZ: `ISBN 978-93-5917-683-3`
  - Indian Astronomy and Indian Knowledge Tradition: `ISSN 2581-4133`, page 26.
- About hero/profile summary should use a softer premium italic serif, lightly cursive but readable.
- Profile card can use a subtle animated pastel background, but the effect must be visible without being loud.

## Posts And Content

- Research posts belong in `_posts/RESEARCH` and should have `categories: [research]` or equivalent category front matter.
- Research post tags should be topic keywords, not the generic word `research`.
- Documentation/demo posts should include:
  - how to write YAML front matter,
  - how to write LaTeX equations,
  - how to write quizzes,
  - how to write Markdown,
  - how to edit SCSS partials.
- TikZ image post was removed in favor of documentation. If TikZ demonstration is needed, show code and rendered output only when explicitly requested.
- No need to add `math: true` in each post because `_config.yml` defaults already set math for posts.

## Quiz System

- Quiz should be reusable anywhere, not a navbar page/button.
- The quiz include supports questions written directly in Markdown using simple syntax like `Q`, `A`, `B`, `C`, `D`, `ANSWER`, and `EXPLAIN`.
- Questions and options may contain LaTeX.
- Avoid requiring users to write JSON for quizzes.

## Mobile And Math

- Site must stay smartphone-friendly.
- Long MathJax equations should not be clipped on mobile; use horizontal overflow handling for display math/MathJax containers rather than editing individual posts.
- Header icons should fit on mobile without overpowering the brand/nav.

## Recent Final State From Source Work

- Ref intro paragraph removed.
- Ref resource list changed to smaller `Courier New` monospace.
- Ref sub-list color animation removed; fixed teal-green color retained.
- Header contact icon circles reduced from the oversized version.
- About summary text changed from heavy system font to a restrained italic serif.
