---
name: template-skill
description: |
  Template for creating new Claude Code skills.
  Use this as a starting point when building skills. Shows proper structure,
  documentation patterns, and organization of supporting files.
allowed-tools: []
---

# Template Skill

This is a complete, ready-to-use template demonstrating how to structure and document a Claude Code skill. Use it as a reference when creating new skills for this repository.

## Anatomy of a Skill

Every skill consists of:

1. **SKILL.md** (required) - Frontmatter metadata + instructions
2. **reference/** (optional) - Guidelines, standards, best practices
3. **templates/** (optional) - Code/document templates
4. **scripts/** (optional) - Executable scripts and utilities

## Creating Your Skill

### Step 1: Copy This Template

```bash
cp -r skills/template-skill skills/your-skill-name
```

### Step 2: Update the Frontmatter

Edit `SKILL.md` to customize:

```yaml
---
name: your-skill-name          # lowercase, hyphens, max 64 chars
description: |                 # Clear trigger conditions, max 1024 chars
  What your skill does.
  When Claude should use it.
allowed-tools: [read, bash]    # Optional: restrict tool access
---
```

### Step 3: Write the Content

Structure your SKILL.md with these sections:

#### Purpose
Brief description of what the skill does and when to use it.

#### When to Use This Skill
Specific scenarios and triggers. Be precise—this helps Claude recognize when to apply your skill.

#### Key Capabilities
List the main features or areas your skill covers.

#### Examples
Show practical, concrete examples of using the skill.

#### Best Practices
Guidelines and recommendations for applying the skill effectively.

#### Limitations
Document edge cases, constraints, or what the skill doesn't handle.

#### References
Links to supporting files in subdirectories.

### Step 4: Add Supporting Files

Create files in subdirectories as needed:

```
your-skill-name/
├── SKILL.md
├── reference/
│   ├── standards.md
│   └── guidelines.md
├── templates/
│   ├── code-template.ext
│   └── example.ext
└── scripts/
    └── helper-script.sh
```

## Directory: `reference/`

Store guidelines, standards, and reference materials here.

- `standards.md` - Coding/writing standards
- `guidelines.md` - Best practices and patterns
- `checklist.md` - Validation or review checklists
- `troubleshooting.md` - Common issues and solutions

## Directory: `templates/`

Include code templates, boilerplate, or document examples.

- Code examples showing correct implementation patterns
- Starter code users can adapt
- Document templates for specific formats

## Directory: `scripts/`

Executable scripts that support your skill.

- Validation scripts
- Setup or initialization scripts
- Helper utilities
- Testing scripts

## Skill Naming Conventions

- Use **kebab-case**: `my-skill-name` (not `my_skill_name` or `mySkillName`)
- Be **descriptive**: `typescript-validation` (not `ts-check`)
- Match the **capability**: name should clearly reflect what it does

## Best Practices for Skill Design

### 1. Clear, Specific Description

The `description` field is how Claude discovers your skill. Make it explicit:

```yaml
# Good: Clear, action-oriented
description: |
  Extracts text and tables from PDFs, fills form fields, and merges documents.
  Use when working with PDF files, form processing, or document assembly.

# Poor: Too vague
description: |
  Helps with documents and stuff
```

### 2. Single Responsibility

Each skill should focus on one capability:

- ✓ `code-reviewer` - Focused on code review
- ✓ `pdf-processor` - Focused on PDF operations
- ✗ `document-processor` - Too broad
- ✗ `general-utilities` - Unfocused

### 3. Practical Examples

Include real-world scenarios:

```markdown
## Examples

When asked to validate a TypeScript component, apply these checks:
1. Type safety validation
2. Interface compliance
3. Naming convention verification
```

### 4. Document Limitations

Be explicit about what the skill doesn't do:

```markdown
## Limitations

- Does not handle legacy JavaScript (ES5 and earlier)
- Requires TypeScript 4.0 or higher
- Cannot validate dynamically generated types
```

### 5. Organize with Subdirectories

Use subdirectories for clarity:

- `reference/` - Documentation and standards
- `templates/` - Code and document examples
- `scripts/` - Automation and utilities

## Integrating Your Skill

Once created, copy to your project:

```bash
# Project-level (available only in this project)
cp -r skills/your-skill-name /path/to/project/.claude/skills/

# Global (available in all projects)
cp -r skills/your-skill-name ~/.claude/skills/
```

Claude will automatically discover and use the skill based on its description.

## Testing Your Skill

1. Copy the skill to `.claude/skills/` of a test project
2. Ask Claude questions matching the skill's description
3. Observe if Claude uses the skill appropriately
4. Refine the description if triggers aren't working
5. Add examples if Claude needs more context

## Skill Documentation Template

Use this structure for consistent documentation:

```markdown
---
name: skill-name
description: |
  What it does. When to use it.
allowed-tools: [tool1, tool2]
---

# Skill Title

## Purpose

What this skill does and its primary use case.

## When to Use This Skill

Specific scenarios and triggers.

## Key Capabilities

- Capability 1
- Capability 2
- Capability 3

## Examples

Practical examples of using this skill.

## Best Practices

Guidelines for effective use.

## Limitations

What this skill doesn't handle.

## References

- See `./reference/standards.md` for standards
- See `./templates/` for code examples
```

## References

- [Anthropic's Official Skills Repository](https://github.com/anthropics/skills) - Production-grade skill implementations and examples
- [Superpowers Repository](https://github.com/obra/superpowers) - Battle-tested skills library with systematic organization
- [Claude Code Skills Documentation](https://code.claude.com/docs/en/skills.md) - Official Claude Code skill guide

---

**Ready to create your skill?**

1. Copy this directory: `cp -r skills/template-skill skills/my-skill-name`
2. Edit `SKILL.md` with your metadata and content
3. Add supporting files in subdirectories
4. Test by copying to a project: `cp -r skills/my-skill-name ~/.claude/skills/`
5. Commit to the repository when ready
