# GitHub setup

The project is prepared to become a normal Git repository. The original `S8.EXE` is ignored by `.gitignore` so it is not accidentally published.

On Linux Mint:

```bash
mkdir -p ~/Projects
cd ~/Projects
tar -xzf ~/Downloads/ti82-pclink-phase1.tar.gz
cd ti82-pclink

git init
git add .
git commit -m "Add S8 reverse engineering baseline"
```

Then create an empty GitHub repository and add it as `origin`:

```bash
git remote add origin git@github.com:<YOUR_GITHUB_USER>/ti82-pclink.git
git branch -M main
git push -u origin main
```

Do not add `reference/S8.EXE` unless redistribution rights for the original executable have been established.
