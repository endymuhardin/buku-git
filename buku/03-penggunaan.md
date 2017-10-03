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
## Mengunduh sebuah repo ##

Untuk mengunduh sebuah repo anda cukup melakukan :
`git clone (alamat repository,misal https://github.com/endymuhardin/buku-git.git)`

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

## Tips dan Tricks ##


Beberapa tips dan triks dapat membuat pengalaman Git Anda lebih sederhana, mudah, atau bahkan akrab.
Banyak orang menggunakan Git tanpa menggunakan tip-tip berikut ini, 
dan kami tidak akan merujuk kepada mereka atau mengasumsikan bahwa Anda telah menggunakannya nanti dalam buku ini; 
tetapi Anda mungkin sebaiknya mengetahui bagaimana menggunakannya. 

Auto-Completion

Jika Anda menggunakan Bash shell, Git tersedia dengan sebuah script auto-completion yang dapat Anda hidupkan. Unduh source-code Git, dan cari direktori `contrib/completion`; di sana Anda akan menemukan berkas bernama git-completion.bash. Salin berkas ini ke direktori home Anda, dan tambahakn ini ke dalam berkas `.bashrc`:

	`source ~/.git-completion.bash`

Jika Anda ingin memasang Git agar secara otomatis menggunakan fitur ini bagi semua pengguna, salin script tadi ke direktori `/opt/local/etc/bash_completion.d` di sistem Mac atau ke direktori `/etc/bash_completion.d/` di sistem Linux. Ini adalah direktori tempat script yang akan secara otomatis dibaca oleh Bash untuk menyediakan fitur auto-complete nya.

Jika Anda menggunakan Windows dengan Git Bash, yang sebetulnya adalah setting default ketika instalasi Git di Windows menggunakan msysGit, fitur ini seharusnya sudah terkonfigurasi.

Pencet huruf Tab ketika Anda menuliskan perintah Git, dan Bash akan menampilkan beberapa kemungkinan yang Anda dapat pilih:

`$ git co<tab><tab>`
`commit config`

Dalam hal ini, mengetikkan git co dan memencet kunci Tab 2x akan menampilkan pilihan commit dan config. Dengan menambahkan `m<tab>` akan melengkapi git commit secara otomatis.

Hal ini juga bekerja terhadap opsi, yang mungkin lebih berguna. Sebagai contoh, jika Anda menjalankan perintah `git log` dan tidak ingat salah satu dari opsi yang tersedia, Anda dapat mulai mengetikkannya dan memencet Tab untuk melihat apa yang cocok:

`$ git log --s<tab>`
`--shortstat  --since=  --src-prefix=  --stat   --summary`

Ini adalah trick yang cukup menarik dan dapat menghemat waktu Anda dan waktu membaca dokumentasi.




