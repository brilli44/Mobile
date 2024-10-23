import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/linkaja.png'), // Logo LinkAja
        ),
        actions: [
          Icon(Icons.favorite, color: Colors.white), // Ikon Love
          SizedBox(width: 16),
          Icon(Icons.call, color: Colors.white), // Ikon Call Center
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Atas dengan Background Kota dan Kotak Merah
            Stack(
              children: [
                // Latar Belakang Foto Kota
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/city_background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Kotak Merah dengan Informasi Pengguna
                Positioned(
                  top: 60, // Menyesuaikan posisi lebih tinggi
                  left: 16,
                  right: 16,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, BRILLIANTNA SALSABILA',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Saldo Utama
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.account_balance_wallet, color: Colors.red),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Your Balance',
                                          style: TextStyle(color: Colors.black54, fontSize: 12),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rp 9.747',
                                              style: TextStyle(color: Colors.black, fontSize: 16),
                                            ),
                                            SizedBox(width: 4),
                                            Icon(Icons.refresh, color: Colors.grey, size: 18), // Ikon panah bulat
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            // Saldo Bonus
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.monetization_on, color: Colors.orange),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bonus Balance',
                                          style: TextStyle(color: Colors.black54, fontSize: 12),
                                        ),
                                        Text(
                                          '0',
                                          style: TextStyle(color: Colors.black, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Baris Ikon Menu
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMenuIcon(Icons.add_circle_outline, "TopUp"),
                  _buildMenuIcon(Icons.remove_circle_outline, "CashOut"),
                  _buildMenuIcon(Icons.send, "Send Money"),
                  _buildMenuIcon(Icons.more_horiz, "See All"),
                ],
              ),
            ),

            // GridView Menu Layanan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildServiceIcon(Icons.phone_android, "Pulsa/Data"),
                  _buildServiceIcon(Icons.flash_on, "Electricity"),
                  _buildServiceIcon(Icons.tv, "Cable TV & Internet"),
                  _buildServiceIcon(Icons.credit_card, "Kartu Uang Elektronik"),
                  _buildServiceIcon(Icons.church, "Gereja"),
                  _buildServiceIcon(Icons.volunteer_activism, "Infaq"),
                  _buildServiceIcon(Icons.favorite, "Other Donations"),
                  _buildServiceIcon(Icons.more_horiz, "More"),
                ],
              ),
            ),

            // Banner Promo
            Container(
  margin: EdgeInsets.symmetric(vertical: 16),
  height: 120,
  child: Stack(
    alignment: Alignment.bottomCenter,
    children: [
      PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          Image.asset('assets/images/home_promo.png', fit: BoxFit.cover),
          Image.asset('assets/images/home_promo2.png', fit: BoxFit.cover),
          Image.asset('assets/images/home_promo3.png', fit: BoxFit.cover),
          Image.asset('assets/images/home_promo4.jpg', fit: BoxFit.cover),
          Image.asset('assets/images/home_promo.png', fit: BoxFit.cover), // Banner baru 1
          Image.asset('assets/images/home_promo2.png', fit: BoxFit.cover), // Banner baru 2
        ],
      ),
      Positioned(
        bottom: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(6, (index) { // Perbarui jumlah indikator
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              height: 8.0,
              width: _currentPage == index ? 16.0 : 8.0,
              decoration: BoxDecoration(
                color: _currentPage == index ? Colors.red : Colors.grey,
                borderRadius: BorderRadius.circular(4.0),
              ),
            );
          }),
        ),
      ),
    ],
  ),
),
Container(
  margin: EdgeInsets.symmetric(vertical: 16),
  height: 120,
  child: Stack(
    alignment: Alignment.bottomCenter,
    children: [
      PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          Image.asset('assets/images/home_promo.png', fit: BoxFit.cover),
          Image.asset('assets/images/home_promo2.png', fit: BoxFit.cover),
          Image.asset('assets/images/home_promo3.png', fit: BoxFit.cover),
          Image.asset('assets/images/home_promo4.jpg', fit: BoxFit.cover),
          Image.asset('assets/images/home_promo4.jpg', fit: BoxFit.cover), // Banner baru 1
          Image.asset('assets/images/home_promo4.jpg', fit: BoxFit.cover), // Banner baru 2
        ],
      ),
      Positioned(
        bottom: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(6, (index) { // Perbarui jumlah indikator
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              height: 8.0,
              width: _currentPage == index ? 16.0 : 8.0,
              decoration: BoxDecoration(
                color: _currentPage == index ? Colors.red : Colors.grey,
                borderRadius: BorderRadius.circular(4.0),
              ),
            );
          }),
        ),
      ),
    ],
  ),
),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat ikon menu (TopUp, CashOut, dll.)
  Widget _buildMenuIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.red),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  // Fungsi untuk membuat ikon layanan (Pulsa, Listrik, dll.)
  Widget _buildServiceIcon(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30, color: Colors.blueAccent),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
