import 'package:flutter/material.dart';

class AirtelServices extends StatefulWidget {
  const AirtelServices({super.key});

  @override
  State<AirtelServices> createState() => _AirtelServicesState();
}

class _AirtelServicesState extends State<AirtelServices> {

  _appBar() {
    return Container(
      height: 200,
      width: 420,
      decoration: const BoxDecoration(
        color: Colors.red, // This will be the background color of the app bar
        gradient: LinearGradient(
          colors: [Colors.greenAccent, Colors.redAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.greenAccent,
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "CHRISPINE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'ubuntu',
            ),
          ),
          Text(
            "990770515 - PREPAID",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
              fontFamily: 'ubuntu',
            ),
          ),
        ],
      ),
    );
  }

  _serviceListTile(String title, IconData icon, {void Function()? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap ?? () {},
    );
  }
  _serviceExpansion(String title, IconData icon,) {
    return ExpansionTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      children: [
        _serviceListTile('Airtel Prepaid Services', Icons.phone_android),
        _serviceDivider(),
        _serviceListTile('Airtel Money Services', Icons.account_balance_wallet),
        _serviceDivider(),
        _serviceListTile('Upgrade to eSIM', Icons.sim_card),

      ],

    );
  }

  _serviceDivider() {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Colors.grey,
    );
  }

  _serviceBody() {
    return ListView(
      children: [
        _serviceListTile('Airtel Prepaid Services', Icons.phone_android),
        _serviceDivider(),
        _serviceListTile('Airtel Money Services', Icons.account_balance_wallet),
        _serviceDivider(),
        _serviceListTile('Upgrade to eSIM', Icons.sim_card),
        _serviceDivider(),
        _serviceListTile('Notification Inbox', Icons.mail_outline_outlined),
        _serviceDivider(),
        _serviceListTile('Settings', Icons.settings),
        _serviceDivider(),
        _serviceListTile('Airtel Shops', Icons.store),
        _serviceDivider(),
        _serviceListTile('Help & Support', Icons.local_phone_outlined),
        _serviceDivider(),
        _serviceListTile('Refer & Earn', Icons.share),
        _serviceDivider(),
        _serviceListTile('Terms & Conditions', Icons.file_copy_outlined),
        _serviceDivider(),
        _serviceListTile('About Us', Icons.info_outline),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _appBar(), // Updated AppBar with user info
          Expanded(
            child: _serviceBody(),
          ),
        ],
      ),
    );
  }
}
