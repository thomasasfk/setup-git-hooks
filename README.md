# Global Git Hooks

This directory contains global Git hooks that are automatically copied to new repositories.

## AI-Powered Commit Messages

The `prepare-commit-msg` hook can generate commit messages using the Gemini API.

### Requirements:
1. Set your Gemini API key:
   ```bash
   export GEMINI_API_KEY="your-api-key"
   ```

2. Enable AI commit messages for a specific commit:
   ```bash
   AI=1 git commit
   ```

3. Add optional context:
   ```bash
   AI=1 C="JIRA-123: Feature implementation" git commit
   ```

## Applying to Existing Repositories

Run the following from within your repository:
```bash
~/.git-templates/apply-hooks.sh
```
