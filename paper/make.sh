#!/bin/bash
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja:latest platex thesis.tex
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja:latest pbibtex thesis
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja:latest platex thesis.tex
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja:latest platex thesis.tex
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja:latest dvipdfmx thesis.dvi