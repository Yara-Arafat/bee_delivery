import 'package:flutter/material.dart';

class OnlineShopHome extends StatefulWidget {
  const OnlineShopHome({Key? key}) : super(key: key);

  @override
  State<OnlineShopHome> createState() => _OnlineShopHomeState();
}

class _OnlineShopHomeState extends State<OnlineShopHome> {
  @override
  Widget build(BuildContext context) {
    final List<String> bnLabels = [
      'إضافة طلب ',
      'الطلبات المسلمة',
      'إرسال الطلبات',
      'الطلبات الراجعة',
    ];
    const List<Icon> bnIcons = [
      Icon(Icons.add),
      Icon(Icons.move_to_inbox),
      Icon(Icons.send_to_mobile),
      Icon(Icons.keyboard_return),
    ];

    List<String> path = [
      '/onlineShop_delivered_orders',
    ];
    return Scaffold(
      body: Container(
          color: Colors.grey.shade100,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 80.0),
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.only(top: 40),
                  width: 400,
                  height: 200,
                  child: const Image(
                    image: AssetImage(
                        '/Users/aseelrajab/Desktop/StudioProjects/hope/images/BeeLogo.png'),
                  )),
              SizedBox(
                height: 350,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 70),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 30,
                            childAspectRatio: 5 / 10),
                    itemBuilder: (context, index) {
                      return ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, path[index]);
                        },
                        label: Text(
                          '${bnLabels[index]}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        icon: Icon(
                          bnIcons[index].icon,
                          size: 30,
                          color: const Color(0xffffcc33),
                        ),

                        //label text
                      );
                    }),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19)),
                width: 388,
                height: 200,
                child: Expanded(
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset('images/poster.jpeg'),
                      Image.asset('images/poster2.jpeg'),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
