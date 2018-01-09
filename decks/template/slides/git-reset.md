`git reset`

> Changes where HEAD points to

###### Example Given commits A,B,C on master

```bash
git reset --soft B
```
> Leaves the HEAD pointing at B with the changes of C still on the index (staged)
