
## Praktikum 1
### Langkah 1 
![alt text](image.png)
### langkah 2
![alt text](image-1.png)
### Langkah 4
![alt text](image-2.png)

## Praktikum 2
### Langkah 1
![alt text](image-3.png)
### Langkah 2
![alt text](image-5.png)
### Langkah 3
![alt text](image-4.png)

## Praktikum 3
### Langkah 1 
![alt text](image-6.png)
### Langkah 2
![alt text](image-7.png)

## Praktikum 4
### Langkah 1 
![alt text](image-8.png)
### Langkah 2
![alt text](image-9.png)
### Langkah 3 
![alt text](image-10.png)

## Tugas Praktikum 1
- Material Apps 
![alt text](image-12.png)
- Cupertino Apps
![alt text](image-13.png) 
- Non-Material apps
![alt text](image-14.png)
### Layout multiple widgets vertically and horizontally
- Aligning widgets: Row
 ![alt text](image-17.png)
- Aligning widgets: Column
  ![alt text](image-16.png)
- Sizing widgets
  ![alt text](image-18.png)
  ![alt text](image-20.png)
- Packing widgets
![alt text](image-19.png)
- Nesting rows and columns
  ![alt text](image-22.png)
  ![alt text](image-21.png)
- Common layout widgets
-  Container 
  ![alt text](image-23.png)
- GridView
  ![alt text](image-24.png)
- ListView
  ![alt text](image-25.png)
- Stack
  ![alt text](image-26.png)
- Card
  ![alt text](image-27.png)

## Praktikum 5
### Langkah 1 
![alt text](image-28.png)
![alt text](image-29.png)
### Langkah 2
![alt text](image-30.png)
![alt text](image-31.png)
### Langkah 3
![alt text](image-32.png)
### Langkah 4
![alt text](image-33.png)
### Langkah 5
![alt text](image-35.png)
### langkah 6
![alt text](image-34.png)
### Langkah 7 
![alt text](image-36.png)
![alt text](image-37.png)

## Tugas Praktikum 2
2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya.
![alt text](image-38.png)
3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.
![alt text](image-39.png)
![alt text](image-40.png)
4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations
```
 child: Card(
              child: Column(
                children: [
                  Hero(
                    tag: 'hero-${items[index].name}', // Unique tag for Hero
                    child: Container(
                      height: 100, // Fixed height for the image
                      width: double.infinity,
                      child: Image.asset(
                        items[index].imageUrl, // Asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
```
5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
   - ![alt text](image-41.png)
6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!
```
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/item/:itemName',
        builder: (context, state) {
          final itemName = state.pathParameters['itemName']!;
          // Temukan item berdasarkan nama
          final item = items.firstWhere((item) => item.name == itemName);
          return ItemDetailPage(item: item);
        },
      ),
    ],
  );
```
