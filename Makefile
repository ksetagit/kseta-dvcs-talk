SRC=$(wildcard *.tex)
OPTS=--pdf -I KIT

.PHONY: clean

all: $(patsubst %.tex,%.pdf,$(SRC))

%.pdf: %.tex
	@rubber $(OPTS) $<

clean:
	@rubber --clean $(OPTS) $(SRC)
	@rm -f $(patsubst %.tex,%-blx.bib,$(SRC))
