import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/environment_choices_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.yellow.shade700,
            const  Color(0xffffcc33),
          ]),
        ),
        child:
            const Text(
              'Bee Delivery APP',
              style: TextStyle(
                  color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Aref Ruqaa'),
            ),

        )



    );
  }
}
