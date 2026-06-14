---
title: "Upgrading an Old Jekyll Project to Jekyll 4: Full Error Diagnosis and Fix"
summary: "Documentation note: Upgrading an Old Jekyll Project to Jekyll 4: Full Error Diagnosis and Fix."
date: 2026-01-18 19:00:00 +0530
categories:
  - doc-tech
tags:
  - jekyll
  - upgrade
  - debugging
permalink: /jekyll-4-upgrade-complete-guide/
hidden: true
---
This project was originally built using **Jekyll 3.x** and worked correctly for several years. Later, the local system Ruby environment was upgraded and **Jekyll 4** was installed. This guide documents the complete process of diagnosing and resolving incompatibilities during the migration.

## Initial Situation

When the old project was run using:

```bash
bundle exec jekyll serve
```

it immediately started throwing errors and failed to build. The build process halted with dependency resolution failures and version constraint violations.

The goal was to upgrade the existing project in-place, preserving all content and configurations, rather than recreating it from scratch.

## Understanding Why Old Jekyll Projects Break

A Jekyll project's behavior depends critically on Ruby gems defined in:

- **Gemfile** — Explicitly declared dependencies
- **Gemfile.lock** — Pinned versions of all transitive dependencies
- **theme gemspec** — Dependencies of gem-based themes

When Jekyll is upgraded across a major version (3 → 4):

- Old gem versions become incompatible with the new Jekyll API
- Gemfile.lock pins outdated dependencies that conflict with Jekyll 4
- Some gems (notably github-pages) force older Jekyll versions internally
- Configuration keys and plugin APIs may have changed

Therefore, errors are expected unless dependencies are realigned and configuration is reviewed.

## Step 1: Inspecting the Project Structure

A thorough analysis of the project revealed:

- A custom theme gem (jekyll-theme-basically-basic.gemspec)
- A Gemfile with multiple plugins including the outdated github-pages
- A _config.yml mixing both `theme` and `remote_theme` declarations
- Outdated version constraints in the Gemfile

This immediately indicated multiple dependency and configuration conflicts that would prevent Jekyll 4 from running.

## Step 2: Removing GitHub Pages Constraint

The Gemfile originally contained:

```ruby
gem "github-pages", group: :jekyll_plugins
```

The github-pages gem forces Jekyll 3.x internally and manages its own plugin versions.

**Action Taken:** The github-pages gem was removed completely from the Gemfile.

**Reason:**

- GitHub Pages infrastructure does not support Jekyll 4 locally
- The github-pages gem intentionally locks Jekyll to 3.x for consistency with GitHub's rendering
- Keeping this gem makes it impossible to run Jekyll 4 locally
- For local development with Jekyll 4, declare plugins individually instead

## Step 3: Resetting Locked Dependencies

The file Gemfile.lock was created under Jekyll 3.x and contained pinned versions of all gems from that era.

**Action Taken:**

```bash
rm Gemfile.lock
```

**Reason:**

- Gemfile.lock locks old gem versions that are incompatible with Jekyll 4
- Major version upgrades require Bundler to resolve dependencies fresh
- Without removing the lock file, Bundler will attempt to install Jekyll 3.x dependencies
- This step is mandatory and should be done only once during the upgrade process

## Step 4: Understanding the jekyll-remote-theme Error

After deleting Gemfile.lock and running `bundle install`, Bundler produced this error:

```
Could not find gem 'jekyll-remote-theme (~> 0.4.3)'
The source contains the following gems matching 'jekyll-remote-theme':
	* jekyll-remote-theme-0.4.1
```

This error indicated that the requested version of jekyll-remote-theme was not available in the gem repository.

## Why This Error Occurred

In the Gemfile, the following line existed:

```ruby
gem "jekyll-remote-theme", "~> 0.4.3"
```

Bundler interprets the pessimistic version operator `~> 0.4.3` as:

- Allow any version >= 0.4.3
- But strictly < 0.5.0

However:

- Only version 0.4.1 was available in rubygems.org
- 0.4.1 does not satisfy the constraint ~> 0.4.3 (since 0.4.1 < 0.4.3)
- Bundler failed to resolve before installing any gems

## The Correct Fix Strategy

At this point, the entire configuration was reviewed:

- The project was already using: `theme: jekyll-theme-basically-basic`
- This means the theme is loaded as a gem, not fetched remotely
- Having both `theme` and `remote_theme` is a configuration error
- jekyll-remote-theme is therefore not required for this setup

**Final Decision:** Remove jekyll-remote-theme entirely from the Gemfile.

This is the cleanest and most stable solution for Jekyll 4 because:
- It eliminates version constraint conflicts
- It uses the locally installed theme gem for reliability
- It reduces network dependencies
- It improves build reproducibility

## Final Corrected Gemfile (Jekyll 4)

```ruby
source "https://rubygems.org"

gemspec

gem "jekyll", "~> 4.3"
gem "jekyll-feed"
gem "jekyll-paginate"
gem "jekyll-seo-tag"
gem "jekyll-sitemap"

gem "logger"
gem "csv"
```

**Key Changes:**
- Removed `github-pages` gem entirely
- Updated Jekyll to 4.3.x with flexible versioning
- Declared plugins individually with no version constraints (allowing latest compatible versions)
- Added `logger` and `csv` as explicit gems (required by Ruby 3.4+)

## Final Corrected _config.yml Theme Section

```yaml
theme: jekyll-theme-basically-basic

plugins:
  - jekyll-feed
  - jekyll-seo-tag
  - jekyll-sitemap
  - jekyll-paginate
```

**Key Changes:**
- Declared only `theme:` (removed any `remote_theme:` entry)
- Listed all active plugins under the `plugins:` key
- Ensured plugin list matches Gemfile declarations

## Rebuilding the Project (Correct Order)

After all fixes were applied, the project was rebuilt using the correct sequence:

```bash
bundle install
bundle exec jekyll serve
```

**Expected Output:**
```
Configuration file: /path/to/_config.yml
			Source: /path/to
	   Destination: /path/to/_site
 Incremental build: disabled. Enable with --incremental
	  Generating...
	   Jekyll Feed: Generating feed for posts
					done in 2.345 seconds.
 Auto-regeneration: enabled for /path/to
	Server address: http://127.0.0.1:4000
  Server running...
  Press ctrl-c to stop.
```

Jekyll now builds successfully under Jekyll 4, with hot-reload enabled for local development.

## Key Lessons for Upgrading Any Jekyll Project

1. **Never keep github-pages for local Jekyll 4 development** — It enforces Jekyll 3.x
2. **Always delete Gemfile.lock during major upgrades** — It prevents dependency resolution
3. **Do not mix theme and remote_theme** — Use one or the other, preferably theme gems
4. **Ensure Gemfile version constraints match available gems** — Use `~>` conservatively
5. **Prefer theme gems over remote_theme for stability** — Reduces network calls and improves reproducibility
6. **Test incrementally** — Fix one error at a time rather than changing everything at once
7. **Review _config.yml after upgrade** — Configuration keys and plugin behavior may have changed
8. **Update Ruby if needed** — Jekyll 4 benefits from Ruby 2.7+ and runs optimally on Ruby 3.x

