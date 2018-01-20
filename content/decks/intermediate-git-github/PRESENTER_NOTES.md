# Intermediat git/GitHub
---

## Slide 1
An intermediate walkthrough to git and github. You understand the basics, and you want to know how to use git more effectively.

## Slide 2
Be sure to share the link to slides in the chat as well as mentions that
feedback is welcomed

## Slide 3 - Expectation
Encourage students to participate by answering your questions

## Slide 4 - Overview
Go over the briefly what will be covered

## Slide 5 - Presenter introduction
Replace this slide with an introduction to yourself. Establish
credibility and share your experience in JavaScript/

## Slide 6 - Collaboration
Reiterate that difference between this session and the Intro the Git
session is that this session focuses on Collaboration.

## Slide 7
Walkthrough the example repo we will be working in. Be sure to show the
code and README.md. Explaining the importance of the README and note the
instructions. 

## Slide 8
Fork the repository

**Ask students** if they have forked a repository

## Slide 9
Show the diagram of what just happened when you forked the repo. Note
the term upstream and how it references the original repository.

Point out that there is a link reference the upstream on your forked
repo.

## Slide 10
Clone the fork locally. Show off that the code has been copied locally. 

**Ask students** if they know the difference between SSH or cloning via
URL

Encourage students to use SSH for better security and leverage the link documentation on how
to do so.

## Slide 11
**Ask students** if they know the difference between Fork and Clone.

Answer: https://stackoverflow.com/questions/7057194/what-is-the-difference-between-forking-and-cloning-on-github

## Slide 12
Create a remote pointing the upstream. Note that this will come in handy
later

## Slide 13
Create a remote pointing the fork and name it fork

## Slide 14
1. Create use `git remote -v` to show three remotes and note that GitHub
creates the origin by default.
2. Remove the fork remote using `git remote remove`.
3. Open the `.git/config` to show you can also rename a remote directly.
4. Change then name of origin to fork.

## Slide 15
1. add a new cat breed to cat.js
2. create a new branch for your changes
3. create a pull request to the upstream
4. Reject the PR to rebase the `one-more-kitty` branch

## Slide 16
1. Fetch the `one-more-kitty` branch
  - note that fetching only points to the branch by showing the `git branch`
  - **Ask students** if they know the difference between Fetch and Pull
2. Checkout the `one-more-kitty` branch
  - note that `git branch` show the branch

## Slide 17
1. Rebase `one-more-kitty` on to your branch
2. Push changes to your PR
  - note that pushing to the same branch updates the open PR

**Ask students** if they know the difference between Merge and Rebase
## Slide 18 - More cool things on GitHub
If time allows, walk through some other things you can to on GitHub

## Slide 19
Take questions if time is available. Be sure to share feedback and slide link.

