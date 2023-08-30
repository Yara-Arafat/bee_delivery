import 'package:flutter/material.dart';

class DeliveryManLoginScreen extends StatefulWidget {
  const DeliveryManLoginScreen({Key? key}) : super(key: key);

  @override
  _DeliveryManLoginScreen createState() => _DeliveryManLoginScreen();
}

class _DeliveryManLoginScreen extends State<DeliveryManLoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  String? _emailError;
  String? _passwordError;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_ios),
          //   //TODO: go to previous page in a correct way
          //   onPressed: () => Navigator.pop(context),
          //   color: Colors.black,
          // ),

          //الليدينج فيه كبسة السهم ليرجعني للصفحة السابقة
          title: const Text(
            'تسجيل الدخول',
            style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black,),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/delivery_user_specify_screen");
              }),
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
            color: Colors.grey.shade100,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(40.0),
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  // بوكس بارتفاع معين ليعطيني مساحه بين العناصر
                  height: 100.0,
                ),
                const SizedBox(
                    //margin:const EdgeInsets.only(top: 0),
                    width: 400,
                    height: 200,
                    child:  Image(
                      image: AssetImage(
                          '/Users/aseelrajab/Desktop/StudioProjects/hope/images/BeeLogo.png'),
                    )),
                const SizedBox(
                  // بوكس بارتفاع معين ليعطيني مساحه بين العناصر
                  height: 50.0,
                ),
                TextField(
                  controller: _emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    errorText: _emailError,
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1)),
                    label: const Text(
                      'رقم الهوية',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Tajawal'),
                    ),
                    prefixIcon:
                        const Icon(Icons.email, color: Color(0xffffcc33)),
                    //suffixIcon: const Icon(Icons.send),
                    counterText: '',
                    helperText: 'مثال : 401236910',
                    helperStyle: const TextStyle(fontFamily: 'Tajawal'),
                    labelStyle: const TextStyle(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                    fillColor: Colors.grey,
                    // TextField Background Color
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                TextField(
                  controller: _passwordTextController,
                  obscureText: true,
                  decoration: InputDecoration(
                      errorText: _passwordError,
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1)),
                      label: const Text(
                        'كلمة المرور',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Tajawal'),
                      ),
                      prefixIcon:
                          const Icon(Icons.lock, color: Color(0xffffcc33)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ))),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register_screen');
                    },
                    child: const Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          //fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  width: double.infinity,
                  decoration: BoxDecoration(

                    color: const Color(0xffffcc33),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(
                    //زر لتاكيد تسجيل الدخول

                    onPressed: () {
                      performLogin();
                    },

                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 18,

                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),

              ]),
            )));
  }

  void performLogin() {
    if (checkData()) {
      _doneLogin();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      controlError();
      return true;
    }
    controlError();
    showSnackBarMessage();
    return false;
  }

  void controlError() {
    setState(() {
      _emailError =
          _emailTextController.text.isEmpty ? 'ادخل اسم المستخدم' : null;

      _passwordError =
          _passwordTextController.text.isEmpty ? 'ادخل كلمة المرور' : null;
    });
  }

  void showSnackBarMessage() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('خطأ في المعلومات المُدخلة'),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
        onVisible: () => print('Visible'),
        //to know that the error showed
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        action: SnackBarAction(
            label: 'تخطي', textColor: Colors.white, onPressed: () {})));
  }

  void _doneLogin() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/deliveryMan_bn_screen');
    });
  }
}
