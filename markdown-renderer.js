// Simple Markdown to HTML converter
class MarkdownRenderer {
    constructor() {
        this.rules = [
            // Headers
            { pattern: /^### (.+)$/gm, replacement: '<h3>$1</h3>' },
            { pattern: /^## (.+)$/gm, replacement: '<h2>$1</h2>' },
            { pattern: /^# (.+)$/gm, replacement: '<h1>$1</h1>' },
            
            // Bold
            { pattern: /\*\*(.+?)\*\*/g, replacement: '<strong>$1</strong>' },
            
            // Links
            { pattern: /\[([^\]]+)\]\(([^)]+)\)/g, replacement: '<a href="$2">$1</a>' },
            
            // Horizontal rule
            { pattern: /^---$/gm, replacement: '<hr>' },
            
            // Line breaks
            { pattern: /\n\n/g, replacement: '</p><p>' },
        ];
    }

    render(markdown) {
        let html = markdown;
        
        // Apply all rules
        this.rules.forEach(rule => {
            html = html.replace(rule.pattern, rule.replacement);
        });
        
        // Wrap in paragraphs if not already wrapped
        if (!html.startsWith('<')) {
            html = '<p>' + html + '</p>';
        }
        
        return html;
    }

    async loadMarkdown(filepath) {
        try {
            const response = await fetch(filepath);
            const markdown = await response.text();
            return this.render(markdown);
        } catch (error) {
            console.error('Error loading markdown:', error);
            return '<p>Error loading content.</p>';
        }
    }
}

// Export for use in other files
const mdRenderer = new MarkdownRenderer();
