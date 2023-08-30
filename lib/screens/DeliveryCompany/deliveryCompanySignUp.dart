import 'package:flutter/material.dart';

import '../../models/city.dart';
import '../../models/preNumber.dart';

class DeliveryCompanySignUp extends StatefulWidget {
  const DeliveryCompanySignUp({Key? key}) : super(key: key);

  @override
  State<DeliveryCompanySignUp> createState() => _OnlineShopSignUpState();
}

class _OnlineShopSignUpState extends State<DeliveryCompanySignUp> {
  final List<City> _city = <City>[
    City(id: 1, name: 'طولكرم'),
    City(id: 2, name: 'الخليل'),
    City(id: 3, name: 'نابلس'),
    City(id: 4, name: 'أريحا'),
    City(id: 5, name: 'بيت لحم'),
    City(id: 6, name: 'القدس'),
  ];

  final List<PreNum> _pre = <PreNum>[
    PreNum(id: 1, num: '+970'),
    PreNum(id: 2, num: '+972'),
  ];
  int? _selectedCity;
  int? _selectedNum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            //TODO: go to previous page in a correct way
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
          ),

          //الليدينج فيه كبسة السهم ليرجعني للصفحة السابقة
          title: const Text(
            'التسجيل',
            style: TextStyle(
                fontFamily: 'Tajwal',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          //عنوان الاب بار
          centerTitle: true,
          // سنترنا العنوان
          backgroundColor: const Color(0xffffcc33),

          // لون خلفيه الاب بار
          //shadowColor: Colors.black,
          // لحتى يتواجد ظل اسود تحت الاب بار
          elevation: 0, // درجة الظل
        ),
        body: Container(
          padding: const EdgeInsets.all(40.0),
          color: Colors.grey.shade100,
          alignment: Alignment.center,
          height: double.infinity,
          child: ListView(shrinkWrap: true, children: [
            const TextField(
              decoration: InputDecoration(
                label: Text(
                  'اسم الشركة',
                  style: TextStyle(color: Colors.black, fontFamily: 'Tajawal'),
                ),
                prefixIcon: Icon(
                  Icons.text_format,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text(
                  'البريد الإلكتروني ',
                  style: TextStyle(color: Colors.black, fontFamily: 'Tajawal'),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
                textDirection: TextDirection.ltr,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone,
                  ),
                  label: Text(
                    "الهاتف الأرضي",
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'Tajawal'),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 200,
                  child: TextField(
                      textDirection: TextDirection.ltr,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone,
                        ),
                        label: Text(
                          "الهاتف المحمول",
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Tajawal'),
                        ),
                      )),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  child: Container(
                    height: 80,
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 100,
                      height: 80,
                      child: DropdownButton<int>(
                        value: _selectedNum,
                        items: _pre.map(
                          (e) {
                            return DropdownMenuItem(
                                child: Text(e.num), value: e.id);
                          },
                        ).toList(),
                        isExpanded: true,
                        onTap: () {},
                        onChanged: (int? value) {
                          if (value != null) {
                            setState(() {
                              _selectedNum = value;
                            });
                          }
                        },
                        elevation: 4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DropdownButton<int>(
                icon: const Icon(
                  Icons.location_city,
                ),
                hint: const Text('المدينة'),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Tajawal'),
                value: _selectedCity,
                items: _city.map(
                  (e) {
                    return DropdownMenuItem(child: Text(e.name), value: e.id);
                  },
                ).toList(),
                isExpanded: true,
                onTap: () {},
                onChanged: (int? value) {
                  if (value != null) {
                    setState(() {
                      _selectedCity = value;
                    });
                  }
                },
                elevation: 4,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
              ),
              label: Text(
                "ادخل كلمة المرور",
                style: TextStyle(color: Colors.black, fontFamily: 'Tajawal'),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
              ),
              label: Text(
                "تأكيد كلمة المرور",
                style: TextStyle(color: Colors.black, fontFamily: 'Tajawal'),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              counterText: '',
              icon: Icon(
                Icons.description,
              ),
              suffixIcon: Icon(Icons.send),
              label: Text(
                "الوصف",
                style: TextStyle(color: Colors.black, fontFamily: 'Tajawal'),
              ),
            )),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 40.0,
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.black, width: 1),
                color: const Color(0xffffcc33),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
              ),
              //margin : const EdgeInsets.only(left: 50),
              child: MaterialButton(
                //زر لتاكيد تسجيل الدخول

                onPressed: () {},

                child: const Text(
                  ' إنشاء حساب',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
        ));
  }
}
