.DEFAULT_GOAL := help

##
## Available Goals:
##

##   validate  : Runs local validators.
##
.PHONY: validate
validate :
	circleci config validate .circleci/config.yml

# From: https://swcarpentry.github.io/make-novice/08-self-doc/index.html
##   help      : Print this help message.
##
.PHONY : help
help : Makefile
	@sed -n 's/^##//p' $<
