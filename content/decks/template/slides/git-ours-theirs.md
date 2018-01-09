`git accept-<ours|theirs>`
```bash
accept-ours = "!f() { files=\"$@\"; [ -z $files ] && files='.'; git checkout --ours -- $files; git add -u $files; }; f"
accept-theirs = "!f() { files=\"$@\"; [ -z $files ] && files='.'; git checkout --theirs -- $files; git add -u $files; }; f"
```
> Use this to quickly accept the changes on your branch(ours) or the changes on the 'other' branch (theirs)
