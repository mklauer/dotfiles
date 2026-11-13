---
name: obsidian-vault
description: Search, create, update, and manage notes in the personal Obsidian vault. Use this skill whenever the user wants to find, read, create, edit, organize, or ingest notes into Obsidian — including Zettelkasten permanent notes, literature notes, MOCs, and PARA items. Trigger on: "add to vault", "create a note", "find note", "update note", "ingest", "Zettelkasten", "obsidian", "vault", "permanent note", "MOC", "literature note", or any request to capture, organize, or retrieve personal knowledge.
---

# Obsidian Vault

## Configuration

```bash
VAULT="/mnt/c/Users/D032297/OneDrive - SAP SE/Documents/Obsidian/Knowledge Base"
```

Set this variable at the start of every shell session before running any commands below. If the vault moves, update only this line.

## Rules

All conventions, workflows, and templates are defined in the vault's own `CLAUDE.md`:

```bash
"$VAULT"/CLAUDE.md
```

**Read this file before doing any work in the vault.** It covers naming conventions, note types, frontmatter, the ingest workflow, MOC guidelines, and git workflow.

## Search for notes

```bash
# Search by filename (replace "keyword" with your search term)
find "$VAULT"/SAP -name "*keyword*.md"

# Search by content (example: find notes mentioning "TODO")
grep -rl "TODO" "$VAULT"/SAP --include="*.md"
```