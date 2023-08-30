import 'package:flutter/material.dart';
import 'package:hope/screens/DeliveryCompany/deliveryCompanyHome.dart';
import '../../models/bn_items.dart';

class DeliveryCompanyBnScreen extends StatefulWidget {
  const DeliveryCompanyBnScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryCompanyBnScreen> createState() =>
      _DeliveryCompanyBnScreenState();
}

class _DeliveryCompanyBnScreenState extends State<DeliveryCompanyBnScreen> {
  final int _currentIndex = 0;
  final List<BnItem> _bnItems = <BnItem>[
    BnItem(title: 'الرئيسية', widget: const DeliveryCompanyHome()),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xffffcc33),

        // backgroundColor: Colors.transparent,
        // elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(_bnItems[_currentIndex].title,
            style: const TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade100,
        child: ListView(children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                //color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            accountName: Text('شركة البريد السريع',
                style: TextStyle(
                    fontFamily: 'Tajwal',
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            accountEmail: Text('fastemail@gmail.com',
                style: TextStyle(
                    fontFamily: 'Aref Ruqaa',
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Color(0xffffcc33)),
            title: const Text('الرئيسية'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xffffcc33), size: 10),
            onTap: () {
              Navigator.pop(context);
              Future.delayed(const Duration(milliseconds: 500), () {
                // Navigator.pushNamed(context, '/onlineShop_bn_screen');
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Color(0xffffcc33)),
            title: const Text('تعديل الإعدادات'),
            subtitle: const Text('بروفايلي، معلومات الحساب'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 10, color: Color(0xffffcc33)
            ),
            onTap: () {
              Navigator.pop(context);
              Future.delayed(const Duration(milliseconds: 500), () {
                //TODO Navigator.pushNamed(context, '');
              });
            },
          ),
          Divider(
            indent: 0,
            endIndent: 40,
            color: Colors.grey.shade700,
            thickness: 0.8,
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Color(0xffffcc33)),
            title: const Text('تسجيل الخروج'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamedAndRemoveUntil(
                  context, '/environment_choices_screen', (route) => false);
            },
          ),
        ]),
      ),
      body: _bnItems[_currentIndex].widget,
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.black,
      //   selectedIconTheme: const IconThemeData(color: Colors.black),
      //   unselectedItemColor: Colors.grey.shade400,
      //   unselectedIconTheme: const IconThemeData(color: Colors.grey),
      //   elevation: 0,
      //   backgroundColor: Colors.yellow.shade500,
      //   type: BottomNavigationBarType.fixed,
      //   onTap: (int value) {
      //     setState(() {
      //       _currentIndex = value;
      //     });
      //   },
      //   currentIndex: _currentIndex,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person), label: 'تبديل الحساب'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
      //   ],
      // ),
    );
  }
}
