# Release Please Test

Small demo test repo for
[release-plase](https://github.com/googleapis/release-please) with Ruby to
simulate the behaviour of
[semantic-release](https://github.com/semantic-release/semantic-release). This
means when a feature branch PR is merged, it will automatically create a release
PR, approve the PR, and enable auto-merge. The `release-please` GitHub Action
will take care of the version bump and updating the CHANGELOG along with tagging
and creating a GitHub release.

## Setup

Install `pre-commit` to lint for conventional commits locally.

```sh
echo "Installing pre-commit ..."
brew install pre-commit
pre-commit install -t pre-commit -t commit-msg
```

## Testing

The following will execute a new release

```sh
gco -b some-feat && git add . && g ci --allow-empty -m "feat: new release" && git push -u origin some-feat && gh pr create -f && gh pr merge --admin
```
