# GAPS Master Spreadsheet

## Requirements

```
pydantic=2.6.4
jq=1.7.1
yq=4.42.1
```

### Usage

This repository contains a version controlled copy of the GAPS master mapping spreadsheet: https://docs.google.com/spreadsheets/d/1i41fsmLf7IjfYbr1coTo9V4uk3t1GXAGgt0aOeCkeeA/edit#gid=0

The included Makefile will pull a CSV version of the latest spreadsheet and export it to json by running:

``` bash
make pull
```

A validation and standarization of the outputs can be done by running

``` bash
make parse
```

This will generate the file `mapping-validated.json` which should be used by any programs as the output will be guaranteed to conform to the spec defined in `schema.py`.
