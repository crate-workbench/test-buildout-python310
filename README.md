# test-gha-macos-buildout-sqlalchemy


## About

Coming from https://github.com/crate/crate-python/pull/428, where we found GHA
croaks when running `buildout` with Python 3.10 on macOS, this is a dedicated
repository to reproduce the observations.

https://github.com/pypa/setuptools/issues/2514 is the best reference we could
find about the issue.


## Synopsis

```
# Choose one.
pip install --upgrade --pre "zc.buildout==2.13.7"
pip install --upgrade --pre "zc.buildout==3.0.0rc3"

# Run Buildout.
buildout -vvv -n -c base.cfg
```


## Discussion

See https://github.com/crate-workbench/test-gha-macos-buildout-sqlalchemy/issues/1.
