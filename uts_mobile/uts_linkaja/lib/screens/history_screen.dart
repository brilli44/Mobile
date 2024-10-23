import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), // CustomAppBar without bottom
      body: Column(
        children: [
          // TabBar outside the AppBar
          TabBar(
            controller: _tabController,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.red,
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
            ],
          ),
          
          // TabBarView for the content of each tab
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Pending Transactions Placeholder
                Center(child: Text('No pending transactions')),

                // Done Transactions
                ListView(
                  padding: EdgeInsets.all(8.0),
                  children: [
                    buildTransactionCard("Pay Merchant", "Rp45.400", "Success", "Indomaret_purchase", "15 Sep 2024, 17:32 WIB"),
                    buildTransactionCard("Pay Merchant", "Rp55.000", "Success", "Indomaret_purchase", "15 Sep 2024, 17:28 WIB"),
                    buildTransactionCard("Top Up from Bank", "Rp100.000", "Success", "Top Up from Artajasa", "15 Sep 2024, 17:26 WIB"),
                    buildTransactionCard("Pay QRIS", "Rp21.000", "Success", "SBY - MOG TP S1", "31 Aug 2024, 11:49 WIB"),
                    buildTransactionCard("Pay QRIS", "Rp42.000", "Success", "SBY - MOG TP S1", "31 Aug 2024, 11:45 WIB"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to build transaction card
  Card buildTransactionCard(String title, String amount, String status, String description, String date) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            Text(description),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(status, style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
