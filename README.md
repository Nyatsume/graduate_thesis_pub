RG-thesis-template
=====
Forked from https://github.com/yas-nyan/RG-Thesis-Template.
Thanks neko and chike.(謝辞に書く)

# Requirement

* Docker

# Usage

## 1. Fork this repository

Fork this repository to your account.
When you push your changes to the forked repository, this repository provides URL to download your thesis PDF file.

## 2. Write your thesis

* Latex files to edit is exists under the "src" directory.
* Use files under the "bib" directory to list citations.

## 3. Execute docker command with shell script file.

`sh ./make.sh`

## 4. Publish and share your thesis

Now, you can publish your thesis on the internet and share it to requiest reviews.
To do this, just commit all changes on your directory and push it to your forked directory.

```bash
$ git add -u
$ git commit -m "Your commit message here."
$ git push origin gh-pages:gh-pages
```

Anyone can download and review your newest thesis on http://your_github_username.github.io/thesis/thesis.pdf now!
