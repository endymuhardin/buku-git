# Pendahuluan #

## Tentang Version Control ##

Version Control adalah sebuah aplikasi yang mampu mengelola perubahan
terhadap file. Dia mencatat perubahan apa saja yang terjadi, kapan
terjadi, siapa yang mengubah, dan apa isi perubahannya. Dengan
menggunakan version control, file dapat dikerjakan secara bersamaan oleh
lebih dari satu orang dengan aman. Ini merupakan fitur yang esensial
dalam kegiatan pembangunan aplikasi perangkat lunak atau pemrograman.

Ada dua jenis version control, terpusat (centralized) dan terdistribusi
(distributed). Version control terpusat memiliki satu database (atau
dikenal dengan istilah repository) yang digunakan oleh banyak orang.
Salah satu aplikasi version control terpusat yang terkenal adalah
[Subversion](http://subversion.tigris.org).

Version control terdistribusi memiliki satu repository untuk
masing-masing pengguna. Repository ini berdiri sendiri, tapi bisa
disinkronisasikan antar pengguna dengan berbagai metode. Aplikasi
version control terdistribusi yang terkenal antara lain adalah
[Git](http://git-scm.org) dan [Mercurial](http://mercurial.selenic.com).


## Tentang Git ##

Git diciptakan oleh Linus Torvalds. Ya, Anda benar, Linus Torvalds *yang
itu*. Si pembuat Linux.

Alkisah pada jaman dahulu kala, Linus tidak menggunakan version control
sama sekali. Dia menerima kontribusi kode program dalam bentuk email.
Email berisi potongan kode (patch) ini lalu diintegrasikannya ke kode
programnya sendiri. Begitu seterusnya sehingga sistem operasi Linux
memiliki banyak fitur yang sebagian besarnya adalah sumbangan orang
lain.

Seiring dengan makin bertambahnya kontributor Linux, Linus pun merasa
kewalahan dalam memproses email yang masuk. Ini mengakibatkan
perkembangan sistem operasi Linux menjadi lambat, dibatasi oleh
kecepatan Linus membuka emailnya. Pada saat yang genting ini, datanglah
Larry McVoy menawarkan dagangannya, yaitu
[BitKeeper](http://en.wikipedia.org/wiki/BitKeeper).

Rupanya BitKeeper ini sesuai dengan cara kerja Linus, sehingga diapun
dengan gembira memakainya. Apalagi dengan diiming-imingi fasilitas
gratis iuran tahunan, tidak kalah dengan penawaran kartu kredit di mal.
Dengan segera, BitKeeper menjadi version control resmi dalam kegiatan
pengembangan Linux.

Walaupun demikian, kemesraan ini tidak berlangsung lama. Andrew
Tridgell, salah satu kontributor Linux dan pembuat aplikasi Samba,
mencoba mendownload isi repository BitKeeper. Hal ini membuat Larry
McVoy marah dan menghentikan fasilitas gratis iuran tahunan penggunaan
BitKeeper. Bahkan beberapa kontributor, khususnya yang berstatus
karyawan OSDL, tidak diperbolehkan membeli lisensinya. Jangankan gratis,
bayar saja tidak boleh.

Menghadapi kondisi ini, akhirnya Linus Torvalds memutuskan untuk membuat
sendiri aplikasi version control. Hasilnya adalah Git.

## Tentang Buku Git ##


### Mengapa buku ini ditulis ###

Penggunaan version control adalah langkah pertama menuju software
engineering yang baik dan benar. Sebuah tim yang membuat aplikasi
perangkat lunak tidak akan bisa bekerja sama dengan lancar tanpa version
control. Sayangnya, referensi yang membahas version control dalam bahasa
Indonesia masih sangat minim. Dengan adanya buku ini, mudah-mudahan bisa
meningkatkan efektifitas para programmer Indonesia sehingga bisa berdiri
setara dengan koleganya di dunia internasional.

### Siapa yang sebaiknya membaca ###

Buku ini ditujukan bagi mereka yang ingin menggunakan version control.
Pengguna terbesar version control biasanya adalah programmer. Walaupun
demikian, version control dapat digunakan untuk mengelola segala macam
file, sehingga bisa juga digunakan oleh non-programmer.

Untuk bisa memahami buku ini tidak dibutuhkan pengetahuan khusus kecuali
dasar penggunaan komputer biasa saja. Pembaca harus mahir membuat folder
dan mengedit file teks.

### Bagaimana urutan membacanya ###

Buku ini dibagi menjadi tiga bagian, yaitu:

-   penggunaan harian
-   manajemen proyek dan tim
-   administrasi sistem

Bagian pertama berisi cara menggunakan Git. Dengan menguasai bagian
pertama ini, kita sudah bisa bekerja secara produktif baik sendirian
maupun dalam tim. Bukan hanya teknik dasar, di bagian ini juga dibahas
teknik tingkat tinggi seperti branch, merge, rebase, dan lainnya. Kita
juga akan belajar cara penggunaan remote repository di sini.

Jika Anda seorang team leader atau manajer, Anda perlu mendefinisikan
prosedur kerja tim supaya anggota tim Anda bisa bekerja sama dengan
efektif. Di bagian kedua, kita akan melihat bagaimana Git digunakan
untuk membuat kerja tim menjadi lebih efektif dan efisien. Dengan
membahas beberapa studi kasus, kita akan memahami bagaimana
mendayagunakan Git secara maksimal.

Agar tim kita bisa menggunakan Git tentu kita harus menyediakan
infrastrukturnya. Cara instalasi server, konfigurasi akses kontrol,
backup dan restore, semua akan dibahas di bagian ketiga. Di bagian ini
juga dibahas beberapa perangkat pelengkap lain untuk meningkatkan
efektifitas dan efisiensi kerja tim.

Sebagian besar isi bagian ketiga membahas tentang instalasi dan
konfigurasi server. Oleh karena itu, pengetahuan mendalam tentang Linux
dan jaringan sangat dibutuhkan untuk menguasai bagian ketiga ini.

### Format penulisan ###

Agar lebih enak dibaca, kita akan membedakan bentuk dan warna tulisan
sebagai berikut. Perintah yang kita berikan pada komputer ditulis
seperti ini.

`git --version`

Hasil yang ditampilkan komputer ditulis seperti ini.

    git version 1.7.4.1

Catatan khusus. Seringkali ada hal penting yang perlu mendapat perhatian
khusus. Ini ditulis di menjorok ke tengah seperti contoh berikut.

> **Note**
>
> Working folder Git mengandung repository lengkap mulai dari revisi
> pertama sampai terbaru.

Berikut contoh kode program HTML.

~~~~ {.xml}
<html>
    <head>
        <title>Halo Dunia</title>
    </head>
    <body>
        <h1>Halo Dunia</h1>
    </body>
</html>
~~~~

Dan ini cara penulisan file konfigurasi

    # Ignore file eclipse
    .settings
    .metadata
    .project
    .classpath
    bin

    # Ignore hasil kompilasi Maven
    target

## Lisensi ##

Buku ini memiliki lisensi Creative Commons Attribution Share Alike
(CC-BY-SA). Artinya, semua orang:

-   bebas menggunakan buku ini tanpa harus membayar, baik untuk
    keperluan non-profit maupun komersil. Anda boleh membuka pelatihan
    berbayar menggunakan buku ini.
-   bebas membagikan buku ini kepada siapa saja.
-   bebas membuat perubahan terhadap isi buku ini.

Semua kebebasan di atas hanya memiliki syarat yaitu tetap harus
menyebutkan nama pengarang yang aslinya. Ini disebut dengan istilah
attribution. Singkatnya, boleh dipakai dan dibagikan asal jangan diakui
sebagai karya sendiri. Selain itu, segala perubahan yang dibuat juga
harus dilisensikan sama dengan buku ini. Ini disebut dengan istilah
Share-Alike. Lebih lanjut tentang lisensi ini bisa dilihat di
[website Creative Commons](http://creativecommons.org/licenses/)

## Tools ##

Buku ini dibuat menggunakan perangkat pembantu :

-   Markdown
    : format text untuk menulis buku
-   Pandoc
    : aplikasi untuk mengkonversi markdown menjadi PDF atau HTML

## Kontribusi ##

Semua orang boleh dan dianjurkan untuk ikut membantu penulisan buku ini.
Bagaimana caranya? Gampang. Ada beberapa pekerjaan yang dapat dilakukan.

### Reviewer ###

Tugasnya adalah memeriksa isi buku dan memberikan koreksi. Apa saja
boleh dikoreksi, mulai dari tanda baca, salah ketik, contoh latihan
tidak bisa dijalankan, apa saja. Kalau ada penjelasan yang kurang jelas
juga boleh dikomentari. Apapun yang bisa membuat buku ini lebih baik.
Hasil review dapat dientri di [halaman Issue di
Github](https://github.com/endymuhardin/buku-git/issues).

### Penulis ###

Bagus sekali kalau Anda ingin menyumbangkan tulisan. Lebih banyak yang
mencerdaskan bangsa lebih baik. Begini caranya. Sebagai penulis buku
Git, tentu Anda sudah paham cara menggunakan Git, dan juga kemungkinan
besar sudah punya account di Github. Langsung saja fork repository
buku-git ini dan segeralah berkarya. Begitu dirasa sudah memadai,
kirimkan pull request ke saya. Nanti akan saya merge ke repository saya.
