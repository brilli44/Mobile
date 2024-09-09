# tgs_prak2_brilli

## Nama : Brilliantna Salsabila 
## NIM : 2241720041
## Kelas : D4 TI 3B
## Matkul : Pemrograman Mobile

1. Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!
![alt text](image.png)

2. Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!

- Dasar Flutter: Flutter dibangun dengan Dart, jadi untuk paham Flutter, kamu harus tahu Dart.
- Sintaks: Struktur kode dan logika di Flutter memakai Dart, seperti penggunaan widget dan variabel.
- Pemrograman Asinkron: Dart punya cara khusus mengelola proses yang berjalan di latar belakang, yang sering digunakan di Flutter, misalnya untuk mengambil data.
- Kinerja: Dart membantu aplikasi lebih cepat saat pengembangan dan saat dirilis.
- Debugging: Memahami Dart memudahkanmu menemukan dan memperbaiki kesalahan kode di Flutter

3. Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.
 Bahasa Dart adalah inti dari framework Flutter.
- Pengembang perlu mengetahui asal-usul bahasa Dart, bagaimana komunitas mengerjakannya, kelebihannya, dan mengapa itu adalah bahasa pemrograman yang dipilih untuk Flutter.
- Kelebihan Dart
    - **Productive tooling**: merupakan tool untuk menganalisis kode, plugin IDE, dan ekosistem paket yang besar.

    - **Garbage Collection**: untuk mengelola dealokasi memori (teruteama memori yang ditempati oleh objek yang tidak lagi digunakan).

    - **Type annotations (opsional)**: untuk keamanan dan konsistensi dalam mengontrol semua data dalam aplikasi.

    - **Statically typed**: Dart juga akan tetap aman dengan menggunakan fitur *type-safe* dan *type inference* untuk menganalisis *types* saat *runtime*. Fitur ini penting untuk menemukan bug selama kompilasi kode.

    - **Portability**: bahasa Dart tidak hanya untuk web (yang dapat diterjemahkan ke JavaScript) tetapi juga dapat dikompilasi secara *native* ke kose **Advanced RISC Machines (ARM)** dan x86.

- Semua pengembangan framework Flutter melibatkan pengetahuan/fitur mendalam dengan bahasa Dart; Kode aplikasi, kode plugin, dan manajemen dependensi semuanya menggunakan bahasa Dart beserta fitur-fiturnya.

- Dart mulai diluncurkan dan berkembang pada tahun 2011.

- untuk mengeksekusi kode Dart dapat dilakukan dengan dua cara, seperti berikut ini:
    - Dart virtual machines (VMs)
    - JavaScript compilations

- Kode Dart dapat dieksekusi pada lingkungan yang mendukung bahasa Dart. Lingkungan yang mendukung bahasa Dart perlu memperhatikan fitur-fitur penting seperti berikut:

    - Runtime systems
    - Dart core libraries
    - Garbage collectors

- Eksekusi kode Dart dapat beroperasi dalam dua mode: 

    - kompilasi Just-In-Time (JIT): tempat kode sumber dikompilasi sesuai kebutuhan—Just in time. Dart VM memuat dan mengkompilasi kode sumber ke kode mesin asli (native). Pendekatan ini digunakan untuk menjalankan kode pada command line atau selama proses pengembangan aplikasi mobile yang dapat memanfaatkan fitur seperti debugging dan hot reload.

    - Kompilasi Ahead-Of-Time (AOT): dimana Dart VM dan kode Anda dikompilasi sebelumnya, VM bekerja lebih seperti sistem runtime Dart, yang menyediakan garbage collector dan metode-metode native dari Dart software development kit (SDK) pada aplikasi. Pendekatan ini memiliki keuntungan performa yang sangat besar dibandingkan kompilasi JIT, tetapi fitur lain seperti debugging dan hot reload tidak tersedia.

- Dart dirancang untuk object-oriented (OO)

- Operator x == y digunakan untuk memanggil

- x.==y digunakan untuk melakukan perbandingan kesetaraan

- Arithmetic operators
    - "+" untuk tambahan.
    - "-" untuk pengurangan.
    - "*" untuk perkalian.
    - "/" untuk pembagian.
    - "~/" untuk pembagian bilangan bulat.
    - "%" untuk operasi modulus.
    - -expression untuk negasi.

- Dart juga menyediakan shortcut operator untuk menggabungkan variabel setelah operasi lainnya. Operator aritmatika atau shortcut operator adalah +=, -=, *=, /=, dan ~/=.

- Increment dan decrement operators
    - ++var atau var++ untuk menambah nilai variabel var sebesar 1
    - var atau var-- untuk mengurangi nilai variabel var sebesar 1

- Equality and relational operators
    - == untuk memeriksa apakah operan sama
    - != untuk memeriksa apakah operan berbeda
    Untuk melakukan pengujian relasional, maka gunakan operator sebagai berikut:

    untuk melakukan pengujian relasional, maka gunakan operator sebagai berikut:
    - ">" memeriksa apakah operan kiri lebih besar dari operan kanan
    - "<" memeriksa apakah operan kiri lebih kecil dari operan kanan
    - ">=" memeriksa apakah operan kiri lebih besar dari atau sama dengan operan kanan
    - "<=" memeriksa apakah operan kiri kurang dari atau sama dengan operan kanan

- Logical operators

    Operator logika di Dart adalah operator yang diterapkan pada operan bool; bisa berupa variabel, ekspresi, atau kondisi.

    - !expression negasi atau kebalikan hasil ekspresi-yaitu, true menjadi false dan false menjadi true.
    - || menerapkan operasi logika OR antara dua ekspresi.
    - && menerapkan operasi logika AND antara dua ekspresi





