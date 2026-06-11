build:
    typst compile main.typ main.pdf

watch:
    typst watch main.typ main.pdf

clean:
    rm -f main.pdf

default: watch
