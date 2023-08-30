import 'package:flutter/material.dart';

class DeliveredOrders extends StatefulWidget {
  const DeliveredOrders({Key? key}) : super(key: key);

  @override
  State<DeliveredOrders> createState() => _DeliveredOrdersState();
}

class _DeliveredOrdersState extends State<DeliveredOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/onlineShop_bn_screen');
              }),

          //الليدينج فيه كبسة السهم ليرجعني للصفحة السابقة
          title: const Text(
            'الطلبات المسلمة',
            style: TextStyle(
                fontFamily: 'Tajawal',
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
          child: Table(border: TableBorder.all(color: Colors.grey.shade700), children: [
            buildRow(['الاسم', 'رقم الطلب', 'تاريخ الطلب'], isHeader: true),
            buildRow(['أسيل ', '01', '22-3-2022']),
            buildRow(['يارا ', '02', '24-3-2022']),
            buildRow(['مثنى ', '03', '22-3-2022']),
          ]),
        ));
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
          children: cells.map((cell) {
      final stylee = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        );

        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
              child: Text(
            cell,
            style: stylee,
          )),
        );
      }).toList());
}
