# test-buildout-python310


## About

Coming from https://github.com/crate/crate-python/pull/428, where we found GHA
croaks when running `buildout` with Python 3.10 on macOS >= 11, this is a
dedicated repository to reproduce the observations and encourage further
research about its root cause.


## Synopsis

```
# Choose one.
pip install --upgrade --pre "zc.buildout==2.13.7"
pip install --upgrade --pre "zc.buildout==3.0.0rc3"

# Run Buildout.
buildout -vv -n -c base.cfg
```


## Prior art

The best references with similar symptoms we could find about the issue.

- https://github.com/pypa/setuptools/issues/2514
- https://github.com/buildout/buildout/issues/606


## Discussion

See https://github.com/crate-workbench/test-buildout-python310/issues/1.
