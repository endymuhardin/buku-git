Buku Git
--------

Buku Git adalah usaha untuk memasyarakatkan penggunaan version control di Indonesia, khususnya Git.
Penggunaan version control adalah langkah pertama menuju pembuatan software yang profesional.
Sayangnya banyak programmer di Indonesia yang tidak menggunakan version control hanya karena tidak tersedianya tutorial dan dokumentasi dalam bahasa Indonesia.

Mudah-mudahan dengan adanya buku ini, programmer Indonesia bisa menjadi lebih kompeten, profesional, dan mampu bersaing di dunia internasional.


Cara menggunakan
----------------

Buku ini dibuat dalam format markdown.

Walaupun format markdown didesain untuk bisa dibaca apa adanya, kadangkala kita butuh format lain seperti PDF agar buku ini bisa dicetak. Untuk mengkonversi Markdown menjadi PDF, kita menggunakan aplikasi yang bernama Pandoc.

Lebih lanjut tentang Markdown, Pandoc, dan cara konversinya bisa dibaca di [blog saya](http://software.endy.muhardin.com/aplikasi/membuat-dokumen-dengan-markdown-dan-pandoc/).

Cara konversi ke PDF
Untuk mengkonversi buku menjadi PDF, gunakan perintah berikut:

```
pandoc --template artivisi-template.tex  --variable mainfont="Droid Serif" --variable sansfont="Droid Sans" --variable monofont="Inconsolata" --variable fontsize=12pt --variable version=1.9 --variable subtitle="Menggunakan Git untuk mengelola pembangunan aplikasi" --latex-engine=xelatex --toc -N -o buku-git.pdf *md
```


Cara kontribusi
---------------
Anda ingin menyumbangkan tulisan? Baguslah kalau begitu.
Caranya gampang,

1. Fork repository ini menjadi repository Anda sendiri
2. Clone ke local untuk diedit
3. Editlah sesuka hati
4. Commit dan push ke repository Anda sendiri
5. Kirim pull request ke saya supaya bisa saya merge ke repository saya

