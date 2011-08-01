Buku Git
--------

Buku Git adalah usaha untuk memasyarakatkan penggunaan version control di Indonesia, khususnya Git.
Penggunaan version control adalah langkah pertama menuju pembuatan software yang profesional.
Sayangnya banyak programmer di Indonesia yang tidak menggunakan version control hanya karena tidak tersedianya tutorial dan dokumentasi dalam bahasa Indonesia.

Mudah-mudahan dengan adanya buku ini, programmer Indonesia bisa menjadi lebih kompeten, profesional, dan mampu bersaing di dunia internasional.


Cara menggunakan
----------------

Buku ini dibuat dalam format docbook.
Docbook adalah format penulisan buku dalam XML. Karena XML berbentuk text file biasa, maka kita bisa simpan di dalam version control dengan segala fiturnya, seperti misalnya : riwayat perubahan, membandingkan antar versi, dan lainnya. Lebih detail tentang Docbook dapat dilihat di [Wikipedia](http://en.wikipedia.org/wiki/DocBook "Docbook di Wikipedia")

Membaca file XML tentunya tidak menyenangkan bagi manusia biasa. Dengan demikian, kita harus konversi menjadi format yang lebih manusiawi seperti HTML atau PDF.

Berikut cara konversinya.

Kebutuhan Aplikasi
------------------
1. Java SDK versi terbaru
2. Maven 2 versi terbaru

Cara konversi
-------------
1. Clone dulu repositorynya untuk mengambil source code buku dalam format docbook
2. Buka command prompt dan masuk ke folder buku-git
3. Konversi dengan perintah mvn clean install
4. Buku hasil pemrosesan ada di folder target

Cara edit
---------
Docbook adalah XML biasa. Gunakan editor XML untuk mengeditnya. Di editor canggih, kita bisa menggunakan fitur autocomplete untuk membuat tag docbook

Cara kontribusi
---------------
Anda ingin menyumbangkan tulisan? Baguslah kalau begitu.
Caranya gampang,

1. Fork repository ini menjadi repository Anda sendiri
2. Clone ke local untuk diedit
3. Editlah sesuka hati
4. Commit dan push ke repository Anda sendiri
5. Kirim pull request ke saya supaya bisa saya merge ke repository saya

