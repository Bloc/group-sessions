`git rerere`

- Reuse Recorded Resolution
- If you want to make sure a long lived topic branch will merge cleanly but don't want to have a bunch of intermediate merge commits.
- Takes a fingerprint of every conflict as it happens, and pairs it with a matching fix fingerprint when the problematic commit gets finalized.
- Turn it on!

`git config --global rerere.enabled true`

[More rerere](https://git-scm.com/blog/2010/03/08/rerere.html) | [Even More Rere](https://hackernoon.com/fix-conflicts-only-once-with-git-rerere-7d116b2cec67#.68npc8l2p)
