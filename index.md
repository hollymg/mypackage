# mypackage

The goal of mypackage is to print a personalised greeting from me!

## Installation

You can install the development version of mypackage from GitHub with:

``` r

# install.packages("remotes")
remotes::install_github("annakrystalli/mypackage")
```

## Example

This is a basic example which shows you how to print a generic greeting:

``` r

library(mypackage)
## basic example code
hello()
```

``` R
## 
##  _________________________ 
## < Hello world from Holly! >
##  ------------------------- 
##               \
##                \
## 
##         /\_/\         _
##        /``   \       / )
##        |n n   |__   ( (
##       =(Y =.‛`   `\  \ \
##       {`"`        \  ) )
##       {       /    |/ /
##        \\   ,(     / /
##         ) ) /-‛\  ,_.‛
##   jgs  (,(,/ ((,,/
```

This is a basic example which shows you how to print a personalised
greeting:

``` r

hello(name = "Lucy Elen")
```

``` R
## 
##  _____________________________ 
## < Hello Lucy Elen from Holly! >
##  ----------------------------- 
##                 \
##                  \
## 
##                 ,'``.._   ,'``.
##                 :,--._:)\,:,._,.:
##                 :`--,''   :`...';\
##                `,'       `---'  `.
##                /                 :
##               /                   \
##             ,'                     :\.___,-.
##            `...,---'``````-..._    |:       \
##              (                 )   ;:    )   \  _,-.
##               `.              (   //          `'    \
##                :               `.//  )      )     , ;
##              ,-|`.            _,'/       )    ) ,' ,'
##             (  :`.`-..____..=:.-':     .     _,' ,'
##              `,'\ ``--....-)='    `._,  \  ,') _ '``._
##           _.-/ _ `.       (_)      /     )' ; / \ \`-.'
##          `--(   `-:`.     `' ___..'  _,-'   |/   `.)
##              `-. `.`.``-----``--,  .'
##                |/`.\`'        ,','); SSt
##                    `         (/  (/
```

# Workflow derived from <https://github.com/r-lib/actions/tree/v2/examples>

# Need help debugging build failures? Start at <https://github.com/r-lib/actions#where-to-find-help>

on: push: branches: \[main, master\] pull_request:

name: R-CMD-check.yaml

permissions: read-all

jobs: R-CMD-check: runs-on: ubuntu-latest env: GITHUB_PAT: \${{
secrets.GITHUB_TOKEN }} R_KEEP_PKG_SOURCE: yes steps: - uses:
<actions/checkout@v6>

``` R
  - uses: r-lib/actions/setup-r@v2

  - uses: r-lib/actions/setup-r-dependencies@v2
    with:
      extra-packages: any::rcmdcheck
      needs: check

  - uses: r-lib/actions/check-r-package@v2
    with:
      upload-snapshots: true
      build_args: 'c("--no-manual","--compact-vignettes=gs+qpdf")'
```
