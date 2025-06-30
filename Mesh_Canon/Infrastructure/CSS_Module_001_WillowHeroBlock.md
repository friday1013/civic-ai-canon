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
