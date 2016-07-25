#!/bin/bash
cd buku/
pandoc --template artivisi-template.tex  \
--variable mainfont="Droid Serif" \
--variable sansfont="Droid Sans" \
--variable monofont="Inconsolata" \
--variable fontsize=12pt \
--variable version=1.9 \
--variable subtitle="Menggunakan Git untuk mengelola pembangunan aplikasi" \
--latex-engine=xelatex \
--toc -N \
-o buku-git.pdf *md
