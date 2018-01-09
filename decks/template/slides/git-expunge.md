
`git expunge`
```bash
expunge = !git branch --merged mainline | grep -v 'mainline$' | xargs git branch -d
```
> Get rid of all local branches that have been merged into mainline.
