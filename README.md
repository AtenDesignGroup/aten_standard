# Aten Standard

## Objective

A standard installation profile for Drupal without the annoying modules that nobody uses. Say good bye to comments, contact, shortcuts, to just name a few that won't be installed by default.

## Useful git hooks for your local dev environment

Git hooks aren't version controlled, but this module contains some git hooks that can be useful for local development. To take advantage of any of them in your local copy of this project, copy one or more of   them from this module's `assets` directory to this project's `.git/hooks` directory.

Here are the git hooks available in this module:

1. `post-commit`: Fires either when you make a commit or when you merge code from one branch to another. If your project is hosted somewhere other than Pantheon and you're using a Pantheon sandbox project for QA, use this script to automatically keep the `master` branch (required by Pantheon) up to date with the `main` branch. Be sure to use the `post-merge` hook script from this module as well, uncommenting its Section 2. If you don't need to automatically compile the theme after merges, comment out Section 1 of the `post-merge` script.
1. `post-merge`: Fires when you pull new commits from a remote repository or when you complete a merge locally (for example, merging a feature branch in to `main`.) In the event of a merge conflict this hook doesn't fire until the merge is successfully completed. If you don't need to maintain a `master` branch that is up to date with your `main` branch, comment out Section 2 of this script.
