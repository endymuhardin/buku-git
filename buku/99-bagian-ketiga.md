# Administrasi Sistem Git #

## Membuat Git Server ##
Ketika berhubungan dengan Git hosting, Anda memiliki sejumlah opsi yang tersedia. GitHub, Gitlab dan Bitbucket adalah solusi populer, tetapi menjalankan Git server Anda sendiri merupakan alternatif yang patut dipertimbangkan.

Menyiapkan Git Server memungkinkan Anda membuat repositori pribadi tanpa batasan “free plans” dari pihak penyedia.
    SETTING GIT SERVER
    Langkah pertama adalah menginstal Git di server Anda.

    Jika Anda menggunakan Debian atau Ubuntu, segarkan indeks paket lokal dan instal git dengan menjalankan perintah berikut sebagai user sudo:

    -sudo apt update && sudo apt install git

    Selanjutnya, buat pengguna baru yang akan mengelola repositori Git:

    -sudo useradd -r -m -U -d /home/git -s /bin/bash git

    Direktori home user diatur ke /home/git. Semua repositori akan disimpan di bawah direktori ini. Kita tidak menetapkan kata sandi untuk user “git”, login hanya dimungkinkan menggunakan ssh key.

    Beralih ke user “git” menggunakan perintah su:

    -sudo su - git

    Jalankan perintah berikut untuk membuat direktori SSH dan mengatur izin yang benar:

    -mkdir -p ~/.ssh && chmod 0700 ~/.ssh

    Buat file bernama ~/.ssh/authorized_keys yang akan menampung SSH keys pengguna yang diotorisasi:

    -touch ~/.ssh/authorized_keys && chmod 0600 ~/.ssh/authorized_keys

    Pengaturan server selesai. Anda sekarang siap untuk membuat repositori Git pertama Anda.
    
## Integrasi dengan Redmine ##

## Integrasi dengan Jenkins ##
