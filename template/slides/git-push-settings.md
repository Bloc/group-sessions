```bash
[push]
    default = simple
```

> Please don't YOLO unless you have this in your git config. "git push" without any refspec will push the current branch out to the same name at the remote
repository only when it is set to track the branch with the same
name over there. Other options: current, upstream
