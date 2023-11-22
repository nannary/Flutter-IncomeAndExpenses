import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
        debugShowCheckedModeBanner: false,
        title: "รายรับรายจ่ายของนารีรัตน์",
        home: Myhome());
  }
}

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  // สร้างตัวแปรสำหรับเก็บจำนวนเงินรายรับ รายจ่าย ค่าใช้จ่ายอื่น ๆ และเงินคงเหลือ
  double income = 15000.0;
  double expenses = 1000.0;
  double otherExpenses = 2000.0;

  // คำนวณเงินคงเหลือ
  double balance() {
    return income - expenses - otherExpenses;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "รายรับรายจ่ายของนารีรัตน์",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // แสดงรายรับ
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "รายรับ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "$income บาท",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // แสดงรายจ่าย
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "รายจ่าย",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "$expenses บาท",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // แสดงค่าใช้จ่ายอื่น ๆ
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ค่าใช้จ่ายอื่น ๆ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "$otherExpenses บาท",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // แสดงเงินคงเหลือ
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "คงเหลือ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "${balance()} บาท",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // แสดงเงินคงเหลือ
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/milo.jpg', // เปลี่ยนเป็น path ที่ถูกต้อง
                      width: 200, // ปรับขนาดตามต้องการ
                      height: 200,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
