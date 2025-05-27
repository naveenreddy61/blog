# Hugo Blog Development README

This guide documents the setup, deployment, and troubleshooting instructions for the Hugo-based blog stored in this repository.

## Prerequisites

Ensure you're running a Debian-based environment (e.g., Ubuntu on WSL).

## 1. Install Go [change the version number to latest by going to website]

```bash
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
```

### Add Go to your shell profile (`~/.bashrc` or `~/.zshrc`):

```bash
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

Then run:

```bash
source ~/.bashrc  # or ~/.zshrc
```

Verify:

```bash
go version
```

## 2. Install Hugo (Extended Version)

Download and install:

```bash
wget https://github.com/gohugoio/hugo/releases/download/v0.147.6/hugo_0.147.6_linux-amd64.deb
sudo dpkg -i hugo_0.147.6_linux-amd64.deb
```

Verify:

```bash
hugo version
```

## 3. Clone the Blog Source Repository

```bash
git clone git@github.com:naveenreddy61/blog.git
cd blog
```

## 4. Install Theme as Submodule

If not already initialized:

```bash
git submodule update --init --recursive
```

If missing:

```bash
git submodule add https://github.com/tomfran/typo themes/typo
```

Ensure `config.toml` includes:

```toml
theme = "typo"
```

## 5. Restore `public/` Deployment Directory

From inside `naveenreddy61-blog`:

```bash
git clone git@github.com:naveenreddy61/naveenreddy61.github.io.git public
```

## 6. Local Development

Run the local server:

```bash
hugo server -D
```

Visit: `http://localhost:1313`

## 7. Deploy to GitHub Pages

```bash
hugo
cd public
git add .
git commit -m "Update site"
git push origin main  # or gh-pages depending on setup
cd ..
```

## 8. Deployment Script (Optional)

Create a file `deploy.sh`:

```bash
#!/bin/bash
hugo
cd public
git add .
git commit -m "Deploy update"
git push
cd ..
```

Make it executable:

```bash
chmod +x deploy.sh
```

Run with:

```bash
./deploy.sh
```

---

## Troubleshooting

### Q1: `localhost:1313` shows "Page Not Found"

* Ensure you're in the `naveenreddy61-blog` directory.
* Ensure there are valid posts in `content/`, and `draft: false` in front matter.
* Check `theme` is correctly set in `config.toml`
* Run with: `hugo server -D --disableFastRender`

### Q2: `git submodule` errors / theme missing

* Run: `git submodule update --init --recursive`
* Or re-add: `git submodule add https://github.com/tomfran/typo.git themes/typo`

### Q3: `hugo` not found after install

* Ensure `/usr/local/go/bin` and Hugo are in `$PATH`
* Run `source ~/.bashrc` again

### Q4: Deployment fails from `public/`

* Ensure `public/` is a Git repo tracking `naveenreddy61.github.io`
* If missing, re-clone:

  ```bash
  rm -rf public
  git clone git@github.com:naveenreddy61/naveenreddy61.github.io.git public
  ```

---

