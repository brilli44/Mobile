import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menyelaraskan ke kanan
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brilliantna Salsabila Arifin',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '+6285755934348824',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/user_avatar.jpg'),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1),

            // Account Settings List
            buildAccountOption(context, "Account Type", "FULL SERVICE"),
            buildAccountOption(context, "Account Settings", ""),
            buildAccountOption(context, "LinkAja Syariah", "Not Active"),
            buildAccountOption(context, "Payment Method", ""),
            buildAccountOption(context, "Email", "brilli.89@gmail.com"),
            buildAccountOption(context, "Security Question", "Set"),
            buildAccountOption(context, "PIN Settings", ""),
            buildAccountOption(context, "Language", "English"),
            buildAccountOption(context, "Terms of Service", ""),
            buildAccountOption(context, "Privacy Policy", ""),
            buildAccountOption(context, "Help Center", ""),
          ],
        ),
      ),
    );
  }

  // Widget for each option row in the account settings
  Widget buildAccountOption(BuildContext context, String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Handle option tap if necessary
      },
    );
  }
}
