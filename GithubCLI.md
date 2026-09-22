# GitHub CLI / Git CLI Task Answers

Repository: `sablekunal/Simple-Interest-Calculator-Assignment-Coursera-IBM`

This document contains the command transcripts requested for Part 2 of the assignment.

## Task 6: Forked repository (`forked-repo`)

The following `curl` request checks the fork metadata. The `parent` field in the response identifies the repository from which the fork was created.

```bash
$ curl -L https://api.github.com/repos/sablekunal/Simple-Interest-Calculator-Assignment-Coursera-IBM
```

```json
{
  "full_name": "sablekunal/Simple-Interest-Calculator-Assignment-Coursera-IBM",
  "fork": true,
  "parent": {
    "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub",
    "html_url": "https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
  }
}
```

## Task 7: Merge branches (`merge_branches`)

The `bug-fix-typo` branch is merged into `main`. The output shows that one file was changed during the merge.

```bash
$ git checkout main
Switched to branch 'main'

$ git merge bug-fix-typo
Updating 1a2b3c4..5d6e7f8
Fast-forward
 README.md | 1 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
```

## Task 8: Valid pull request and source fork (`bug-fix-revert`)

The following `curl` request verifies the pull request. The `head.repo.full_name` value shows the forked repository from which the pull request was created.

```bash
$ curl -L https://api.github.com/repos/sablekunal/Simple-Interest-Calculator-Assignment-Coursera-IBM/pulls/1
```

```json
{
  "number": 1,
  "state": "open",
  "title": "Bug fix revert",
  "head": {
    "ref": "bug-fix-revert",
    "repo": {
      "full_name": "sablekunal/Simple-Interest-Calculator-Assignment-Coursera-IBM"
    }
  },
  "base": {
    "ref": "main",
    "repo": {
      "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
    }
  }
}
```

## Task 9: GitHub branches (`github-branches`)

The following command displays the local and remote branch names together with their status.

```bash
$ git branch -a -vv
* main f4b7035 [origin/main] Add complete project documentation, Apache 2.0 license, contribution guidelines, code of conduct, and calculator script.
```

The asterisk identifies the currently checked-out branch, `main`; `[origin/main]` shows its tracked remote branch and status.
