# Research Portfolio Website

A clean, professional portfolio website for researchers with Markdown-based content management.

## Structure

```
.
├── index.html              # Home page
├── papers.html             # Publications page
├── experience.html         # Experience page
├── styles.css              # Stylesheet
├── markdown-renderer.js    # Markdown parser
└── content/                # All content in Markdown format
    ├── profile.md          # Personal information
    ├── research.md         # Research overview
    ├── experience.md       # Education and work experience
    ├── social-links.json   # Social media links
    └── publications/       # Publications directory
        ├── papers-list.json    # List of papers
        ├── paper1/
        │   ├── info.md         # Publication text
        │   ├── citation.txt    # BibTeX citation
        │   └── paper.pdf       # PDF file
        ├── paper2/
        └── paper3/
```

## How to Use

### Editing Content

All content is stored in the `content/` directory as Markdown files. Simply edit these files to update your website:

1. **profile.md** - Your name, title, bio, and about section
2. **research.md** - Research overview (shown on home page)
3. **experience.md** - Education and work experience
4. **publications/** - Each paper in its own directory with info.md, citation.txt, and paper.pdf
5. **social-links.json** - Your social media and academic profile links

### Markdown Format

#### profile.md
```markdown
## Name
Your Name

## Title
PhD Researcher

## Field
Your Field

## Bio
Brief introduction...

## About Me
Detailed overview...
```

#### publications/
Each paper has its own directory containing:
- `info.md` - Short publication text for listing page
- `details.md` - Full publication details (title, authors, date, type, tags, abstract)
- `cite.bib` - BibTeX citation file
- `paper.pdf` - PDF file

Add paper directories to `papers-list.json` to display them.

Example `info.md`:
```markdown
Faith Culas (2025). Newcomers' Experiences during Debugging: A Cognitive Inclusivity Perspective using GenderMag. In Information and Software Technology.
```

Example `details.md`:
```markdown
## Title
Newcomers' Experiences during Debugging

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
- Inclusivity

## Abstract
This paper presents a comprehensive study on newcomers' experiences...
```

Example `cite.bib`:
```bibtex
@article{culas2025newcomers,
  title={Newcomers' Experiences during Debugging},
  author={Culas, Faith},
  journal={Information and Software Technology},
  year={2025}
}
```

#### experience.md
```markdown
## Education

### PhD in Field
**Institution:** University Name
**Date:** 2020 - Present
**Description:** Details...

---

## Work Experience

### Position Title
**Institution:** Company Name
**Date:** 2021 - Present
**Description:** Details...
```

#### research.md
```markdown
## Overview
My research focuses on [your main research area]...

Key areas include:
- Research area 1
- Research area 2
```

#### social-links.json
```json
{
  "email": "your.email@example.com",
  "github": "https://github.com/yourusername",
  "linkedin": "https://linkedin.com/in/yourusername",
  "orcid": "https://orcid.org/0000-0000-0000-0000",
  "scholar": "https://scholar.google.com/citations?user=YOUR_ID"
}
```

### Adding Your Photo

Replace the placeholder image URL in `index.html` with your own:
- Use a local file: `src="profile.jpg"`
- Or use an online URL: `src="https://your-image-url.com/photo.jpg"`

### Running Locally

Since the website loads Markdown files dynamically, you need to run a local server:

```bash
# Using Python 3
python3 -m http.server 8000

# Using Python 2
python -m SimpleHTTPServer 8000

# Using Node.js
npx http-server
```

Then open `http://localhost:8000` in your browser.

### Deployment

You can deploy this website to:
- GitHub Pages
- Netlify
- Vercel
- Any static hosting service

Just upload all files including the `content/` directory.

## Customization

### Colors

Edit the CSS variables in `styles.css`:

```css
:root {
    --primary-color: #2c3e50;
    --secondary-color: #3498db;
    --accent-color: #e74c3c;
}
```

### Layout

Modify the HTML files to change the structure and layout of each page.

## Features

- Clean, professional design
- Responsive layout (mobile-friendly)
- Markdown-based content management
- Social media links with icons (GitHub, LinkedIn, ORCID, Google Scholar, Email)
- Recent publications on home page (top 3)
- Citation popup with copy-to-clipboard
- Blog system with Markdown support
- Author profiles for publications
- Automatic sitemap generation
- Easy to update and maintain
- No database required
- Fast loading times

---

## Blog System

### Structure

```
content/blog/
├── blog-list.json          # List of all blog posts
├── my-post/
│   ├── meta.json          # Post metadata
│   ├── content.md         # Post content in Markdown
│   ├── cover.jpg          # Cover image (optional)
│   └── photo1.jpg         # Additional images
```

### Adding a New Blog Post

1. Create a new folder in `content/blog/` (e.g., `my-new-post`)
2. Create `meta.json`:

```json
{
  "title": "My Blog Post Title",
  "date": "January 20, 2025",
  "readTime": "5 min read",
  "excerpt": "A brief description of your post...",
  "tags": ["Research", "Software Engineering"],
  "coverImage": "cover.jpg"
}
```

3. Create `content.md` with your post content in Markdown
4. Add images to the same folder
5. Add the folder name to `blog-list.json`

### Markdown Features Supported

- **Text formatting**: Bold, italic, strikethrough
- **Headings**: H1-H6
- **Lists**: Ordered and unordered
- **Code blocks**: With syntax highlighting for multiple languages
- **Images**: `![Alt text](content/blog/post-name/image.jpg)`
- **Links**: Internal and external
- **Tables**: Full support
- **Blockquotes**: Styled quotes
- **Horizontal rules**: Section dividers

### Code Syntax Highlighting

Specify the language after triple backticks:

````markdown
```javascript
function hello() {
    console.log("Hello!");
}
```

```python
def greet(name):
    print(f"Hello, {name}!")
```
````

Supported languages: JavaScript, Python, Java, C/C++, HTML/CSS, SQL, Bash, and many more.

---

## Author Profiles

### Structure

```
content/authors/
├── author-name/
│   ├── info.json          # Author information
│   └── photo.jpg          # Author photo
```

### Adding an Author

Create `info.json`:

```json
{
  "name": "Author Name",
  "title": "PhD Student",
  "affiliation": "University Name",
  "bio": "Brief bio...",
  "photo": "content/authors/author-name/photo.jpg",
  "links": {
    "email": "author@university.edu",
    "website": "https://example.com",
    "github": "https://github.com/username",
    "linkedin": "https://linkedin.com/in/username",
    "orcid": "https://orcid.org/0000-0000-0000-0000",
    "scholar": "https://scholar.google.com/citations?user=ID"
  }
}
```

### Referencing Authors in Publications

In `details.md`, use author folder names:

```markdown
## Authors
author-name-1, author-name-2
```

Authors will be displayed at the end of each publication page with their photo and links.

---

## Social Media Links

### Configuration

Edit `content/social-links.json`:

```json
{
  "email": "your.email@university.edu",
  "github": "https://github.com/yourusername",
  "linkedin": "https://linkedin.com/in/yourusername",
  "orcid": "https://orcid.org/0000-0000-0000-0000",
  "scholar": "https://scholar.google.com/citations?user=YOUR_ID"
}
```

### Finding Your Links

- **Email**: Your email address
- **GitHub**: `https://github.com/yourusername`
- **LinkedIn**: `https://linkedin.com/in/yourusername`
- **ORCID**: Register at https://orcid.org/ to get your ID
- **Google Scholar**: Create profile at https://scholar.google.com/ and copy your URL

---

## Sitemap Generation

### What is a Sitemap?

A sitemap helps search engines discover and index your content.

### Files

- **sitemap.xml** - The sitemap file
- **robots.txt** - Tells search engines where to find your sitemap
- **generate-sitemap.sh** - Script to regenerate the sitemap

### Usage

Run the script whenever you add new content:

```bash
./generate-sitemap.sh
```

### Configuration

Edit `generate-sitemap.sh` and change the domain:

```bash
DOMAIN="https://yourdomain.com"  # Change to your actual domain
```

### When to Regenerate

- After adding a new publication
- After publishing a new blog post
- Before deploying your website

### Submitting to Search Engines

**Google Search Console:**
1. Go to https://search.google.com/search-console
2. Add your website
3. Submit sitemap: `https://yourdomain.com/sitemap.xml`

**Bing Webmaster Tools:**
1. Go to https://www.bing.com/webmasters
2. Add your website
3. Submit your sitemap URL

---

## Adding Publications

### Quick Guide

1. Create folder: `content/publications/paper-name/`
2. Add four files:
   - `info.md` - Short citation text
   - `details.md` - Full details (title, authors, abstract, tags, etc.)
   - `cite.bib` - BibTeX citation
   - `paper.pdf` - Your PDF file
3. Add folder name to `content/publications/papers-list.json`

### Example Files

**info.md:**
```markdown
Author Name (2025). Paper Title. In Conference/Journal Name.
```

**details.md:**
```markdown
## Title
Full Paper Title

## Authors
author-id-1, author-id-2

## Date
2025

## Type
Journal Article

## Publication
Journal Name

## Tags
- Tag 1
- Tag 2

## Abstract
Your abstract text here...
```

**cite.bib:**
```bibtex
@article{key2025,
  title={Paper Title},
  author={Author, Name},
  journal={Journal Name},
  year={2025}
}
```

---

## Troubleshooting

### Images Not Loading

- Check file paths are correct
- Use full paths from root: `content/blog/post-name/image.jpg`
- Placeholder SVGs will show if images are missing

### Local Server Required

The website uses JavaScript to load Markdown files, so you need a local server:

```bash
python3 -m http.server 8000
```

### Sitemap Script Not Executable

```bash
chmod +x generate-sitemap.sh
```

### Content Not Updating

- Clear browser cache
- Check JSON files are properly formatted
- Ensure file paths are correct

---

## Deployment Checklist

1. Update `content/profile.md` with your information
2. Update `content/social-links.json` with your links
3. Add your publications to `content/publications/`
4. Add your photo as `content/avatar.jpg`
5. Update domain in `generate-sitemap.sh`
6. Run `./generate-sitemap.sh`
7. Test locally with `python3 -m http.server 8000`
8. Deploy to your hosting service
