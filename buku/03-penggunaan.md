# Penggunaan Git Sehari-hari #

## Istilah dalam Git ##

Sepanjang buku ini, kita akan banyak menemui istilah-istilah baru.
Jangan khawatir bila istilah yang dijelaskan di sini belum bisa
dipahami. Seiring dengan pemahaman yang semakin meningkat,
istilah-istilah ini akan semakin masuk akal.

-   repository : database yang menyimpan history/ riwayat perubahan
-   snapshot : potret kondisi file dan folder pada saat tertentu
-   commit : snapshot yang disimpan di repository
-   branch : serangkaian commit yang berkaitan sehingga kalau digambar
    seperti garis lurus berisi banyak commit. Satu repository bisa
    berisi banyak branch.
-   master : nama branch default yang diberikan git pada waktu kita
    membuat repository. Branch master ini tidak istimewa. Dia bisa
    dihapus dan direname sesuka hati.
-   head : ujung branch, commit terbaru di dalam branch
-   HEAD : head yang sedang aktif. Walaupun satu repository bisa
    memiliki banyak branch, tapi cuma satu yang aktif.
-   working folder : folder berisi file dan folder tempat kita bekerja.
    Biasanya working folder berisi banyak file source code untuk
    aplikasi yang sedang kita buat. Git memantau working folder ini, dan
    bisa mengetahui file dan folder mana yang sudah berbeda dari posisi
    commit terakhir. Perbedaan atau perubahan ini bisa disimpan menjadi
    commit baru, atau dikembalikan ke kondisi sebelum diubah.
-   staging area : snapshot dari working folder yang akan kita simpan
    pada saat commit. Ini adalah fitur unik Git yang tidak dimiliki
    version control lain. Dengan adanya staging area, kita bisa memilih
    perubahan mana yang akan di-commit dan mana yang tidak.
-   object store : ini adalah database tempat semua commit disimpan.

## Membuat repository baru ##

Untuk membuat repository, kita jalankan perintah git init di dalam
folder kosong.

`git init`

    Initialized empty Git repository in /home/endy/tmp/latihan-git/.git/

Dengan demikian, kita telah membuat database untuk menyimpan revision di
folder tersebut. Database ini dikenal dengan istilah repository.

Repository git berupa hidden folder bernama .git. Karena hidden, mungkin
saja tidak terlihat, sehingga kita harus memodifikasi opsi di Windows
Explorer, Nautilus, atau aplikasi file manager yang kita gunakan agar
menampilkan hidden file/folder.

Repository yang baru saja kita buat dapat digunakan untuk bekerja
(memiliki working folder). Ada kalanya kita membuat repository untuk
ditaruh di server dan tidak diakses langsung. Repository ini disebut
*bare*. Untuk membuatnya, jalankan `git init` dengan opsi `--bare`
seperti ini.

`git init --bare`

    Initialized empty Git repository in /home/endy/tmp/latihan-git/

Berbeda dengan repository dengan working folder, repository bare tidak
memiliki hidden folder `.git`. Folder-folder yang digunakan git untuk
menyimpan datanya langsung digelar di folder repository bare tersebut.

## Working, Staging, dan Commit ##

## Melihat status working folder ##

## Memasukkan perubahan ke staging area ##

## Menyimpan isi staging area ke commit area ##

## Melihat history perubahan ##

## Membandingkan antar versi ##

## Pergi ke masa lalu ##

## Paralel Development dengan Branch ##

## Diff dan Patch ##

## Remote Repository ##
