import 'package:flutter/material.dart';
import 'package:namer_app/page2.dart';
import 'package:namer_app/page4.dart';

import 'page3.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ecommerce App",
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/home': (context) => HomePage(),
        '/addUpdate': (context) => AddUpdatePage(),
        '/search': (context) => SearchPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "July 14, 2023",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5.0),
                Text(
                  "hello, Yohannes!",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color.fromARGB(255, 174, 170, 170),
                  width: 2.0,
                )),
            margin: EdgeInsets.only(right: 16.0),
            child: Center(
              child: Icon(
                Icons.notifications,
                color: const Color.fromARGB(160, 0, 0, 0),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                child: Row(
                  children: [
                    Text(
                      "Available Products",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/search');
                      },
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color.fromARGB(255, 174, 170, 170),
                            width: 2.0,
                          ),
                        ),
                        margin: EdgeInsets.only(right: 16.0),
                        child: Center(
                          child: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 174, 170, 170),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Details_Page()),
                  );
                },
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.0),
                        ),
                        child: Image.network(
                          'https://s3-alpha-sig.figma.com/img/810f/e39e/1af164dc20b628e79e23852d3bdcca01?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YrdTLQdgPbJd0qWa3u2fJ8s2ZLe-34Fa3pr4AnVVWLI5AzEEh9nbSht8YABty7KCgKZLZaSCsEtIqZQvlc4-A5bDrMQ0zqgUhLZL9BfogbUoq4f5Yb-hkb6nODamzeSwjM5SvP7b-kVsCmYiPrVwcpySp3res2tSMenzXBDlBeDdCgHeMYNc2H630dYMXsUyCcuTlp9netlk6F6oPpQlIvhSyA1PM6-8twe-kLaYGeAWdgbL7VwQqRhyJvACY9iWYr9MKd4JVGFbWToaI4cwB0Rw0slqxaoRYeViXvkDiCe7Hdr9ldvDwh-kR~Qzhcu~iiYHwmrDKAvUSBQMwEEQgQ__',
                          fit: BoxFit.cover,
                          width: 366.0,
                          height: 160.0,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        height: 80.0,
                        width: 366.0,
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Derby Leather Shoes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$120",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Men's Shoes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 12.0,
                                      ),
                                      SizedBox(width: 4.0),
                                      Text(
                                        "(4.0)",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Details_Page()),
                  );
                },
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.0),
                        ),
                        child: Image.network(
                          'https://s3-alpha-sig.figma.com/img/810f/e39e/1af164dc20b628e79e23852d3bdcca01?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YrdTLQdgPbJd0qWa3u2fJ8s2ZLe-34Fa3pr4AnVVWLI5AzEEh9nbSht8YABty7KCgKZLZaSCsEtIqZQvlc4-A5bDrMQ0zqgUhLZL9BfogbUoq4f5Yb-hkb6nODamzeSwjM5SvP7b-kVsCmYiPrVwcpySp3res2tSMenzXBDlBeDdCgHeMYNc2H630dYMXsUyCcuTlp9netlk6F6oPpQlIvhSyA1PM6-8twe-kLaYGeAWdgbL7VwQqRhyJvACY9iWYr9MKd4JVGFbWToaI4cwB0Rw0slqxaoRYeViXvkDiCe7Hdr9ldvDwh-kR~Qzhcu~iiYHwmrDKAvUSBQMwEEQgQ__',
                          fit: BoxFit.cover,
                          width: 366.0,
                          height: 160.0,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        height: 80.0,
                        width: 366.0,
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Derby Leather Shoes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$120",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Men's Shoes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 12.0,
                                      ),
                                      SizedBox(width: 4.0),
                                      Text(
                                        "(4.0)",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Details_Page()),
                  );
                },
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.0),
                        ),
                        child: Image.network(
                          'https://s3-alpha-sig.figma.com/img/810f/e39e/1af164dc20b628e79e23852d3bdcca01?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YrdTLQdgPbJd0qWa3u2fJ8s2ZLe-34Fa3pr4AnVVWLI5AzEEh9nbSht8YABty7KCgKZLZaSCsEtIqZQvlc4-A5bDrMQ0zqgUhLZL9BfogbUoq4f5Yb-hkb6nODamzeSwjM5SvP7b-kVsCmYiPrVwcpySp3res2tSMenzXBDlBeDdCgHeMYNc2H630dYMXsUyCcuTlp9netlk6F6oPpQlIvhSyA1PM6-8twe-kLaYGeAWdgbL7VwQqRhyJvACY9iWYr9MKd4JVGFbWToaI4cwB0Rw0slqxaoRYeViXvkDiCe7Hdr9ldvDwh-kR~Qzhcu~iiYHwmrDKAvUSBQMwEEQgQ__',
                          fit: BoxFit.cover,
                          width: 366.0,
                          height: 160.0,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        height: 80.0,
                        width: 366.0,
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Derby Leather Shoes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$120",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Men's Shoes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 12.0,
                                      ),
                                      SizedBox(width: 4.0),
                                      Text(
                                        "(4.0)",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddUpdatePage()),
          );
        },
        backgroundColor: const Color.fromRGBO(63, 81, 243, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 36.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
