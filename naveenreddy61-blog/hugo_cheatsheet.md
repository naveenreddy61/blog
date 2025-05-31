# Hugo Cheatsheet

Quick reference for common Hugo operations and configuration.

---

## Serve Site Locally

```bash
hugo server -D
```

* `-D` includes drafts.
* Site runs at `http://localhost:1313`

---

## Build Static Site

```bash
hugo
```

* Builds static site to `public/`

---

## Create New Content

```bash
hugo new posts/my-post.md
```

* Creates a Markdown file with front matter in `content/posts/`
* Edit file and set `draft: false` to publish

---

## Delete a Post

```bash
rm content/posts/my-post.md
```

---

## Add Tags and Categories

In post front matter (YAML or TOML):

### TOML

```toml
title = "My Post"
date = 2024-01-01
draft = false
tags = ["python", "hugo"]
categories = ["development"]
```

### YAML

```yaml
title: "My Post"
date: 2024-01-01
draft: false
tags:
  - python
  - hugo
categories:
  - development
```

---

## Enable MathJax (LaTeX Math Rendering)

### 1. Modify `config.toml`

```toml
[params]
  math = true
```

### 2. Edit your theme’s `head.html` partial (if not already supported)

Insert this in `layouts/partials/head.html`:

```html
{{ if .Site.Params.math }}
<script src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
{{ end }}
```

### 3. Use math in posts:

```markdown
Inline: $a^2 + b^2 = c^2$

Block:
$$
\frac{\partial f}{\partial x} = 2x
$$
```

---

## Update Theme Submodule

```bash
git submodule update --remote --merge
```

---

## Deployment (if public/ is GitHub Pages target)

```bash
hugo
cd public
git add .
git commit -m "Deploy"
git push
cd ..
```

---

## Useful Flags

* `--cleanDestinationDir`: remove old files in `public/` before build
* `--minify`: compress output HTML/JS/CSS

Example:

```bash
hugo --cleanDestinationDir --minify
```

---

