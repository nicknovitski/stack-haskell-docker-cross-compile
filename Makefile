.PHONY: default docker native

TEST_CMD = stack test --pedantic

default: native docker

docker:
	$(TEST_CMD) --docker

native:
	$(TEST_CMD) --install-ghc
