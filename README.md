# Bruk Gurmessa Resume

This repository hosts the static resume site for Bruk Gurmessa. The page is built with Jekyll and renders all content from structured YAML data files in `_data/`.

## Structure

- `index.html` — the main resume page. A Jekyll template that renders everything from `site.data`.
- `cv.html` — a print-friendly static version.
- `_data/header.yml` — name, title, location, summary, contacts, and core technologies.
- `_data/experiences.yml` — work history (titles, companies + links, dates, summaries, responsibilities, and technologies).
- `_data/education.yml` — degrees, institutions + links, and details.
- `_data/certifications.yml` — certifications with verification links.
- `_data/articles.yml` — featured articles.

Edit the YAML data files to update the site; then push to `master`, and GitHub Pages rebuilds automatically.

## Local preview

To preview with Jekyll:

```bash
jekyll serve
```

Then open http://localhost:4000/ in a browser.