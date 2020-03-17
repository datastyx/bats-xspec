# bats-xspec

Docker container to run XSPEC tests with BATS

## Example usage 

First set setup your working directory to contain your BATS file and related schematron files, then :
```
docker run --rm -it -v `pwd`:/src datastyx/bats-xspec schematron_rule_tests.bats
```