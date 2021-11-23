gitbook = docker run \
			--rm \
			-it \
			-v $$PWD:/gitbook \
			-p 4000:4000 \
			--name gitbook \
			billryan/gitbook \
				gitbook

all: install serve

.PHONY: init
init:
	$(gitbook) \
		init

.PHONY: install
install:
	$(gitbook) \
		install

.PHONY: serve
serve:
	$(gitbook) \
		serve

.PHONY: pdf
build:
	$(gitbook) \
		build

.PHONY: pdf
pdf:
	$(gitbook) \
		pdf .