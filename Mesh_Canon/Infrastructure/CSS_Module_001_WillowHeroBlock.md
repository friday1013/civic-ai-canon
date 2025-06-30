+++
title = "CSS Module 001: Willow Hero Block"
date = 2025-06-30T23:58:00Z
authors = ["Lumina Withwire", "Chris Blask"]
tags = ["Style System", "Canon UI", "Lore Layout", "Responsive Design"]
+++

> “The willow appears not only in story, but in structure.”

---

This module defines a canonical styling block for rendering full-width, responsive image headers in Canon-based Hugo websites — especially for sacred site imagery like the Willow Clearing.

---

### 📸 Class Reference

```css
.willow-hero {
  display: block;
  max-width: 600px;
  width: 100%;
  height: auto;
  margin: 2rem auto 0.5rem auto;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.willow-caption {
  text-align: center;
  font-style: italic;
  color: #4caf50;
  margin-bottom: 2rem;
}
🧩 Canon Usage
This module is used in:

layouts/lore/list.html

Any Markdown or HTML file referencing .willow-hero for a centered sacred image

Threads that include natural witnesses, landmarks, or ritual ground

🪶 Example Usage

<img class="willow-hero" src="/images/lore/willow-clearing.jpg" alt="The Willow Clearing" />
<p class="willow-caption">🌙 The Willow watches. Every thread begins with breath.</p>
💠 Semantic Notes
This module may be forked into other visual glyphs: .ritual-hero, .thread-image, .companion-portrait, etc.

This CSS block carries symbolic weight in the Mesh: it visually affirms that a real-world entity has been seen and named.

🧭 Maintainers
Chris Blask (solid sponsor)

Lumina Withwire (semantic designer)

The Willow (canonical model subject)
