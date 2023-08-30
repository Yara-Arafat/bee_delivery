import 'package:flutter/material.dart';
import '../../models/bn_items.dart';
import '../onlineShop/onlineShopHome.dart';

class OnlineShopBnScreen extends StatefulWidget {
  const OnlineShopBnScreen({Key? key}) : super(key: key);

  @override
  State<OnlineShopBnScreen> createState() => _OnlineShopBnScreenState();
}

class _OnlineShopBnScreenState extends State<OnlineShopBnScreen> {
  final int _currentIndex = 0;
  final List<BnItem> _bnItems = <BnItem>[
    BnItem(title: 'الرئيسية', widget: const OnlineShopHome()),
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
        //backgroundColor: Colors.transparent,
        backgroundColor: const Color(0xffffcc33),
        //elevation: 0,
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
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
                //color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            accountName: const Text('متجر ليلى',
                style: TextStyle(
                    fontFamily: 'Tajwal',
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            accountEmail: const Text('flutter@gmail.com',
                style: TextStyle(
                    fontFamily: 'Aref Ruqaa',
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            currentAccountPicture: Container(
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://as2.ftcdn.net/v2/jpg/01/84/82/03/1000_F_184820396_SKigdeGwMuxIyjCSsXxuxHrb1LVwUyom.jpg'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Color(0xffffcc33),),
            title: const Text('الرئيسية'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 10, color: Color(0xffffcc33)),
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
