import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomPage());
  }
}

class HomPage extends StatefulWidget {
  // const HomPage({ Key? key }) : super(key: key);

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  String nama = "ridho";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Layout dan Widget")),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              // pembungkus
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 110,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/2.jpg"))),
                          child: Text("")),
                      SizedBox(width: 12),
                      Container(
                          width: 110,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/1.jpg"))),
                          child: Text("")),
                      SizedBox(width: 12),
                      Container(
                          width: 110,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/3.jpg"))),
                          child: Text("")),
                    ],
                  ),
                  SizedBox(height: 18),
                  Column(
                    children: [
                      Text(nama,
                          style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.w500,
                              fontSize: 24)),
                      SizedBox(height: 24),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(4278190080))),
                        child: TextField(
                          decoration:
                              InputDecoration.collapsed(hintText: "username"),
                        ),
                      ),
                      SizedBox(height: 24),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.purpleAccent,
                              primary: Colors.white),
                          onPressed: () {
                            print(nama);
                            nama = "Ridho";
                            setState(() {});
                          },
                          child: Text("Ubah Nama"))
                    ],
                  ),
                  SizedBox(height: 18),
                  Stack(
                    children: [
                      Container(width: 500, height: 300, color: Colors.green),
                      Container(width: 400, height: 200, color: Colors.red),
                      Container(width: 300, height: 100, color: Colors.amber),
                    ],
                  ),
                  SizedBox(height: 18),
                  Stack(
                    children: [
                      Container(width: 500, height: 300, color: Colors.green),
                      Container(width: 400, height: 200, color: Colors.red),
                      Container(width: 300, height: 100, color: Colors.amber),
                    ],
                  ),
                  SizedBox(height: 18),
                  Stack(
                    children: [
                      Container(width: 500, height: 300, color: Colors.green),
                      Container(width: 400, height: 200, color: Colors.red),
                      Container(width: 300, height: 100, color: Colors.amber),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
