# GIT

## COMMANDS

### FILE RESTORING
* `git checkout <hash> -- <filename>`       restore file from commit to both, staging area and working tree
* `git reset HEAD <filename>`       can be used to unstage files, but not change working tree
* `git checkout -- <filename>`      restores file from staging area (index) to working tree. Modern way is "git restore"
* `git restore`     restore files: WT files are restored from staging area; SA (index) files are restored from HEAD. i.e.
