import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hope/screens/DeliveryCompany/deliveryCompanyHome.dart';
import 'package:hope/screens/DeliveryCompany/deliveryCompanyLogin.dart';
import 'package:hope/screens/DeliveryCompany/deliveryCompanySignUp.dart';
import 'package:hope/screens/DeliveryCompany/deliveryManHome.dart';
import 'package:hope/screens/DeliveryCompany/deliveryManLogin.dart';
import 'package:hope/screens/DeliveryCompany/delivery_user_specify.dart';
import 'package:hope/screens/basic/environmentChoices.dart';
import 'package:hope/screens/basic/launch_screens.dart';
import 'package:hope/screens/drawer/deliveryCompany_bn_screen.dart';
import 'package:hope/screens/drawer/deliveryMan_bn_screen.dart';
import 'package:hope/screens/drawer/onlineShop_bn_screen.dart';
import 'package:hope/screens/onlineShop/OnlinesignUp.dart';
import 'package:hope/screens/onlineShop/onlineShopHome.dart';
import 'package:hope/tables/delivered_orders.dart';
import 'screens/onlineShop/onlineLogin.dart';

void main() {
  runApp(const BeeDelivery());
}

class BeeDelivery extends StatelessWidget {
  const BeeDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('ar'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/online_login_screen': (context) => const OnlineLoginScreen(),
        '/onlineShop_home': (context) => const OnlineShopHome(),
        '/environment_choices_screen': (context) =>
            const EnvironmentChoicesScreen(),
        '/deliveryCompany_login_screen': (context) =>
            const DeliveryCompanyLoginScreen(),
        '/deliveryMan_login_screen': (context) =>
            const DeliveryManLoginScreen(),
        '/delivery_user_specify_screen': (context) =>
            const DeliveryUserSpecifyScreen(),
        '/onlineShop_bn_screen': (context) => const OnlineShopBnScreen(),
        '/onlineShop_signup': (context) => const OnlineShopSignUp(),
        '/deliveryCompany_bn_screen': (context) =>
            const DeliveryCompanyBnScreen(),
        '/deliveryMan_bn_screen': (context) => const DeliveryManBnScreen(),
        '/deliveryMan_home': (context) => const DeliveryManHome(),
        '/deliveryCompany_signUp': (context) => const DeliveryCompanySignUp(),
        '/deliveryCompany_home': (context) => const DeliveryCompanyHome(),
        '/onlineShop_delivered_orders': (context) => const DeliveredOrders(),
      },
    );
  }
}
