# Publications Directory

This directory contains all your publications. Each paper has its own subdirectory.

## Structure

```
content/publications/
├── papers-list.json          # List of all papers (order matters)
├── paper1/
│   ├── info.md              # Short publication text (for listing)
│   ├── details.md           # Full details (title, authors, abstract, tags, etc.)
│   ├── cite.bib             # BibTeX citation
│   └── paper.pdf            # PDF file
├── paper2/
│   ├── info.md
│   ├── details.md
│   ├── cite.bib
│   └── paper.pdf
└── paper3/
    ├── info.md
    ├── details.md
    ├── cite.bib
    └── paper.pdf
```

## Adding a New Paper

1. Create a new directory with a unique name (e.g., `paper4`)
2. Add four files to the directory:
   - `info.md` - Short publication text
   - `details.md` - Full publication details
   - `cite.bib` - BibTeX citation
   - `paper.pdf` - Your PDF file
3. Add the directory name to `papers-list.json`

### Example: info.md

```markdown
Faith Culas (2025). Newcomers' Experiences during Debugging: A Cognitive Inclusivity Perspective using GenderMag. In Information and Software Technology.
```

Format: `Author(s) (Year). Title. In Venue.`

### Example: details.md

```markdown
## Title
Newcomers' Experiences during Debugging: A Cognitive Inclusivity Perspective using GenderMag

## Authors
Faith Culas

## Date
2025

## Type
Journal Article

## Publication
Information and Software Technology

## Tags
- Cognitive Diversity
- Debugging
- GenderMag
- Inclusivity
- Software Engineering

## Abstract
This paper presents a comprehensive study on newcomers' experiences during debugging tasks, examining how cognitive diversity affects problem-solving approaches...
```

### Example: cite.bib

```bibtex
@article{culas2025newcomers,
  title={Newcomers' Experiences during Debugging: A Cognitive Inclusivity Perspective using GenderMag},
  author={Culas, Faith},
  journal={Information and Software Technology},
  year={2025},
  publisher={Elsevier}
}
```

### Example: papers-list.json

```json
{
  "papers": [
    "paper1",
    "paper2",
    "paper3",
    "paper4"
  ]
}
```

Papers will appear in the order listed in `papers-list.json`.

## Removing a Paper

1. Delete the paper's directory
2. Remove the directory name from `papers-list.json`

## Features

- Click publication title to view full details page
- Click "View Details" to see abstract, tags, type, and more
- Click "PDF" to open the paper in a new tab
- Click "Cite" to open a popup with the citation
- Copy citation to clipboard with one click
- Each publication has its own dedicated page with:
  - Full abstract
  - Publication type (Journal Article, Conference Paper, etc.)
  - Tags for categorization
  - Publication date
  - Venue information
