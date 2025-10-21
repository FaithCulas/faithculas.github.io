# Markdown Guide for Blog Posts

This post demonstrates all the Markdown features you can use in your blog posts.

## Text Formatting

You can use **bold text**, *italic text*, and ***bold italic text***. You can also use ~~strikethrough~~.

## Headings

Use headings to structure your content:

### This is H3
#### This is H4
##### This is H5

## Lists

### Unordered Lists

- First item
- Second item
  - Nested item
  - Another nested item
- Third item

### Ordered Lists

1. First step
2. Second step
3. Third step

## Code

### Inline Code

Use `console.log()` for inline code snippets.

### Code Blocks

```javascript
function greet(name) {
    console.log(`Hello, ${name}!`);
}

greet('World');
```

```python
def calculate_sum(a, b):
    return a + b

result = calculate_sum(5, 3)
print(f"Result: {result}")
```

## Images

You can include images in your posts:

![Example Image](content/blog/markdown-guide/photo1.jpg)

Images will be automatically sized and styled.

## Links

You can add [links to external sites](https://example.com) or [links to other pages](../index.html).

## Blockquotes

> This is a blockquote. Use it for highlighting important information or quotes from other sources.
> 
> You can have multiple paragraphs in a blockquote.

## Tables

| Feature | Supported | Notes |
|---------|-----------|-------|
| Headers | ✓ | H1-H6 |
| Lists | ✓ | Ordered and unordered |
| Code | ✓ | Inline and blocks |
| Images | ✓ | Auto-sized |
| Tables | ✓ | Full support |

## Horizontal Rules

Use horizontal rules to separate sections:

---

## Combining Elements

You can combine different elements:

1. **Step 1**: Install the dependencies
   ```bash
   npm install
   ```

2. **Step 2**: Run the development server
   ```bash
   npm run dev
   ```

3. **Step 3**: Open your browser and navigate to `http://localhost:3000`

> **Note**: Make sure you have Node.js installed before running these commands.

## Tips for Writing

- Keep paragraphs short and focused
- Use headings to organize content
- Include code examples when relevant
- Add images to illustrate concepts
- Use lists for step-by-step instructions

Happy blogging!
