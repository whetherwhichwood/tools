#!/usr/bin/env sh
set -e

npm install -g gnhf gh-axi chrome-devtools-axi lavish-axi
npm install -g @intellectronica/ruler
npm install -g @rubar/lavish-themes @rubar/lavish-publish-cf
npm install -g opencode-ai
brew install gh
curl -fsSL https://kunchenguid.github.io/treehouse/install.sh | sh
npx skills add kunchenguid/axi -g
npx skills add kunchenguid/lavish-axi --skill lavish -g
npx skills add kunchenguid/gh-axi --skill gh-axi -g
npx skills add kunchenguid/chrome-devtools-axi --skill chrome-devtools-axi -g
lavish-axi setup hooks
ruler init --global
gh auth login
git worktree list
treehouse --version
gnhf --version
gh-axi --version
chrome-devtools-axi --version
lavish-axi --version
opencode --version
