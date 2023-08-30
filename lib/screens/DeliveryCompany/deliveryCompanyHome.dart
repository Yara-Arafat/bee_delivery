import 'package:flutter/material.dart';

class DeliveryCompanyHome extends StatefulWidget {
  const DeliveryCompanyHome({Key? key}) : super(key: key);

  @override
  State<DeliveryCompanyHome> createState() => _DeliveryCompanyHomeState();
}

class _DeliveryCompanyHomeState extends State<DeliveryCompanyHome> {
  @override
  Widget build(BuildContext context) {
    final List<String> bnLabels = [
      'الطلبات الواردة',
      'إضافة موظف ',
      'الطلبات الراجعة',
      'الطلبات المسلمة',
      'الموظفين'
    ];
    const List<Icon> bnIcons = [
      Icon(Icons.move_to_inbox),
      Icon(Icons.add),

      Icon(Icons.keyboard_return),Icon(Icons.send_to_mobile),
      Icon(Icons.person)
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
                height: 370,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            childAspectRatio: 5 / 10),
                    itemBuilder: (context, index) {
                      return ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0)),
                        ),
                        onPressed: () {},
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
                //padding: const EdgeInsets.only( left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19)),
                width: 388,
                height: 200,
                //child: Image.asset('images/testPoster.JPG'),
              ),
            ],
          )),
    );
  }
}
