# WhatTheFar’s credentials

## Getting Started

Requires [`git-crypt`](https://github.com/AGWA/git-crypt)

```bash
brew install git-crypt
```

Setup credentials

```bash
git clone https://github.com/WhatTheFar/dotcredentials.git
cd dotcredentials
git-crypt unlock /path/to/key
./bootstrap.sh
```
