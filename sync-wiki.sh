# GitHub Wiki Setup

This document explains how to set up and maintain the GitHub Wiki for this repository.

## Initial Setup

1. **Enable Wiki** (if not already enabled):
   - Go to your repository on GitHub
   - Click on "Settings" tab
   - Scroll down to "Features" section
   - Check "Wikis" to enable

2. **Clone Wiki Repository**:
   ```bash
   git clone https://github.com/shekhar-marne/kubernetes-training.wiki.git
   cd kubernetes-training.wiki
   ```

3. **Copy Wiki Files**:
   ```bash
   cp -r ../kubernetes-training/wiki/* ./
   ```

4. **Commit and Push**:
   ```bash
   git add .
   git commit -m "Initial wiki setup"
   git push origin master
   ```

## Syncing Changes

To sync changes from the main repository's `wiki/` directory to the GitHub wiki:

```bash
#!/bin/bash
# sync-wiki.sh

# Clone wiki repo (if not already cloned)
if [ ! -d "wiki-repo" ]; then
    git clone https://github.com/shekhar-marne/kubernetes-training.wiki.git wiki-repo
fi

# Copy updated files
cp -r wiki/* wiki-repo/

# Commit and push changes
cd wiki-repo
git add .
git commit -m "Update wiki from main repo"
git push origin master
cd ..
```

## Alternative: GitHub Actions

You can automate wiki synchronization using GitHub Actions. Create `.github/workflows/sync-wiki.yml`:

```yaml
name: Sync Wiki
on:
  push:
    branches: [ main ]
    paths: [ 'wiki/**' ]

jobs:
  sync:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
      with:
        repository: shekhar-marne/kubernetes-training.wiki
        path: wiki-repo
        token: ${{ secrets.WIKI_TOKEN }}

    - name: Sync files
      run: |
        cp -r ../wiki/* ./
        git add .
        git commit -m "Sync wiki from main repo" || echo "No changes to commit"
        git push
```

## Manual Updates

For manual updates to the wiki:

1. Make changes to files in the `wiki/` directory
2. Commit and push to the main repository
3. Manually copy changes to the wiki repository or use the sync script

## Wiki Structure

- `Home.md` - Main wiki page
- `_Sidebar.md` - Navigation sidebar
- Other `.md` files - Individual wiki pages

Ensure all internal links use relative paths appropriate for the wiki context.</content>
<parameter name="filePath">/home/shekharm/development/local/kubernetes-training/wiki/GitHub-Wiki-Setup.md