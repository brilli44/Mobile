## Nama     : Brilliantna Salsabila
## Kelas    : TI - 3B
## NIM      : 2241720041 /04

### Tugas Praktikum 1: Dasar State dengan Model-View
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
![alt text](<video praktikum 1.gif>)
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
- Jawab : Langkah 4 - initState(): Di langkah ini, method initState() digunakan untuk mempersiapkan elemen-elemen penting yang diperlukan sebelum tampilan muncul, seperti membuat ScrollController. initState() dipakai supaya pengaturan ini dilakukan sekali saja saat aplikasi mulai, agar lebih efisien.
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
- Jawab : Variabel plan adalah objek dari kelas Plan yang berfungsi untuk menyimpan dan mengelola data aplikasi, seperti daftar tugas. Dengan adanya plan, kita bisa dengan mudah mengakses tugas-tugas yang ada dan melakukan perubahan yang terlihat langsung pada tampilan UI.
- Kenapa dibuat konstanta? plan dibuat sebagai konstanta (const Plan()) untuk menunjukkan bahwa data awalnya tidak akan berubah. Namun, meskipun data awalnya tetap konstan, kita masih bisa memperbarui data di dalamnya menggunakan setState(). Dengan begitu, ketika ada perubahan, tampilan akan diperbarui sesuai dengan data terbaru, sementara data awal tetap terjaga.
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
![alt text](<video praktikum 1 nomer 4.gif>)
5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
- Jawab : 
Method di Langkah 11 dan 13 dalam lifecycle:

- initState() (Langkah 11): Method ini dijalankan sekali saat widget pertama kali dibuat, fungsinya untuk menyiapkan hal-hal yang diperlukan sejak awal.
- dispose() (Langkah 13): Method ini membersihkan resource yang tidak terpakai ketika widget dihapus, supaya aplikasi tetap efisien dan tidak membuang memori.


### Tugas Praktikum 2: InheritedWidget
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
- Jawab : **InheritedWidget** itu berguna untuk membagikan data ke seluruh widget di aplikasi tanpa perlu mengirimkan data ke setiap widget satu per satu. Tapi, **InheritedNotifier** lebih keren karena menggabungkan kelebihan **InheritedWidget** dan **ValueNotifier**, jadi widget bisa langsung diberi tahu kalau ada perubahan data. Ini memudahkan kita dalam mengelola data yang berubah-ubah di aplikasi, jadi nggak perlu repot-repot lagi.
3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
   - Pada langkah 3, method digunakan untuk mengubah atau memperbarui data (misalnya, menambah tugas atau mengganti status tugas). setState() digunakan untuk memberitahukan Flutter agar merender ulang UI dengan data terbaru setelah perubahan dilakukan. Tujuannya adalah memastikan UI selalu mencerminkan status terkini data.
   - Kenapa seperti itu? Karena data di aplikasi bisa berubah-ubah, dan UI harus selalu menampilkan informasi terbaru. Jadi, dengan cara ini, setiap perubahan data (misalnya nambah tugas atau ubah status tugas) langsung bisa terlihat tanpa perlu merender ulang UI secara manual. Dengan menggunakan setState(), kita memberitahu Flutter untuk otomatis memperbarui widget yang perlu diubah sesuai data terbaru.
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
   ![alt text](<tugas praktikum 2.gif>)

- Praktikum 2 ini bertujuan untuk memberi pengalaman langsung dalam pengembangan aplikasi Flutter. Beberapa tujuan utamanya adalah:

    a. **Memahami Struktur Aplikasi**: Mengenal cara kerja aplikasi Flutter dan pengelolaan file dalam proyek besar.
  
    b. **State Management**: Belajar cara mengelola data dan memastikan UI selalu terupdate dengan teknik seperti `ValueListenableBuilder`.

    c. **Manipulasi Data dan ListView**: Mengelola data dalam ListView, misalnya menambah dan mengubah tugas, serta memperbarui UI.

    d. **Widget Interaktif dan Navigation**: Menambah widget interaktif (seperti Checkbox dan FloatingActionButton) dan memahami cara berpindah antar layar.

    e. **Menggunakan SafeArea**: Agar konten aplikasi nggak terhalang oleh area layar yang nggak bisa dipakai, seperti notch.

    Tujuan utama praktikum ini adalah untuk mempelajari cara membangun aplikasi mobile yang interaktif dan responsif dengan Flutter.


### Tugas Praktikum 3: State di Multiple Screens
- Hasil Praktikum 
![alt text](<tugas praktikum 3.gif>)
Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!
![alt text](image.png)
- Diagram tersebut menggambarkan transisi dari aplikasi dengan satu layar menjadi aplikasi multi-layar di Flutter. Pada sisi kiri diagram, terlihat struktur awal aplikasi dengan satu layar, di mana PlanCreatorScreen mengelola daftar tugas menggunakan susunan kolom. Namun, pada struktur awal ini, semua tugas dikelola dalam satu layar, dan manajemen state (keadaan) hanya terbatas pada satu layar tersebut.
Pada sisi kanan diagram, terlihat struktur yang telah diperbarui dengan menambahkan layar kedua (PlanScreen). Layar ini diakses melalui Navigator.push, sehingga aplikasi dapat menangani beberapa daftar rencana (plans). Penambahan SafeArea, Scaffold, dan manajemen state yang lebih baik melalui PlanProvider memungkinkan setiap rencana ditampilkan, diedit, dan diperbarui secara mandiri.
Dengan menerapkan prinsip Lift State Up, state untuk rencana dikelola pada level yang lebih tinggi di dalam widget tree, sehingga beberapa layar dapat berbagi dan mengakses data yang sama tanpa duplikasi atau kesalahan manajemen state.

