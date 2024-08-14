import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eccomerce App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: const Color.fromRGBO(63, 81, 243, 1),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Add Product",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 23, right: 32),
              child: Container(
                height: 190.0,
                width: 366.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color.fromRGBO(243, 243, 243, 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    "assets/my_img.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 22.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "name",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 22.0, 32.0, 0.0),
              child: Container(
                height: 50.0,
                width: 366.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color.fromRGBO(243, 243, 243, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 22.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "category",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 22.0, 32.0, 0.0),
              child: Container(
                height: 50.0,
                width: 366.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color.fromRGBO(243, 243, 243, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 22.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "price",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 22.0, 32.0, 0.0),
              child: Container(
                height: 50.0,
                width: 366.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color.fromRGBO(243, 243, 243, 1),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text("\$"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 22.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "description",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 22.0, 32.0, 0.0),
              child: Container(
                height: 140.0,
                width: 366.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color.fromRGBO(243, 243, 243, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 22.0, 32.0, 0.0),
              child: Container(
                height: 50.0,
                width: 366.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color.fromRGBO(63, 81, 243, 1),
                ),
                child: Center(
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 22.0, 32.0, 33.0),
              child: Container(
                height: 50,
                width: 366.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                child: Center(
                  child: Text(
                    "DELETE",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
