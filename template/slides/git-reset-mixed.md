`git reset`

###### Example Given commits A,B,C on master

```bash
git reset --mixed B
```
> Leaves the HEAD pointing at B with the changes of C  in the working directory but not on the index (not staged)
