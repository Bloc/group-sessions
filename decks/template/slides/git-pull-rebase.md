`git pull --rebase`

- This eliminates the merge commit when you pull changes from a branch that others have commited to.

- You can't have uncommitted changes in your working copy when you run this command or else it will refuse to run. Make sure everything's committed, or use "git stash"

- If you are using this on a branch that has had its history corrupted by a bad merge this will cause you more problems than its worth.
