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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0.0, 0.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: const Color.fromRGBO(63, 81, 243, 1),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 430.0,
                height: 286.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/810f/e39e/1af164dc20b628e79e23852d3bdcca01?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YrdTLQdgPbJd0qWa3u2fJ8s2ZLe-34Fa3pr4AnVVWLI5AzEEh9nbSht8YABty7KCgKZLZaSCsEtIqZQvlc4-A5bDrMQ0zqgUhLZL9BfogbUoq4f5Yb-hkb6nODamzeSwjM5SvP7b-kVsCmYiPrVwcpySp3res2tSMenzXBDlBeDdCgHeMYNc2H630dYMXsUyCcuTlp9netlk6F6oPpQlIvhSyA1PM6-8twe-kLaYGeAWdgbL7VwQqRhyJvACY9iWYr9MKd4JVGFbWToaI4cwB0Rw0slqxaoRYeViXvkDiCe7Hdr9ldvDwh-kR~Qzhcu~iiYHwmrDKAvUSBQMwEEQgQ__',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      "Men's Shoe",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 24.0,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          "(4.0)",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      "Derby Leather",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: Text("120"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      "Size:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Container(
                  height: 100.0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            color: Colors.white,
                            child: SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: Center(
                                child:
                                    Text('39', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            color: Colors.white,
                            child: SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: Center(
                                child:
                                    Text('40', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            color: const Color.fromRGBO(63, 81, 243, 1),
                            child: SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: Center(
                                child: Text('41',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            color: Colors.white,
                            child: SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: Center(
                                child:
                                    Text('42', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            color: Colors.white,
                            child: SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: Center(
                                child:
                                    Text('43', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            color: Colors.white,
                            child: SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: Center(
                                child:
                                    Text('44', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            color: Colors.white,
                            child: SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: Center(
                                child:
                                    Text('45', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                    "A derby leather shoe is a classic and versatile footwear option characterized by its open lacing system, where the shoelace eyelets are sewn on top of the vamp (the upper part of the shoe). This design feature provides a more relaxed and casual look compared to the closed lacing system of oxford shoes. Derby shoes are typically made of high-quality leather, known for its durability and elegance, making them suitable for both formal and casual occasions. With their timeless style and comfortable fit, derby leather shoes are a staple in any well-rounded wardrobe."),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 32.0, top: 61.0, bottom: 61.0, right: 32),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 152,
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
                    Spacer(),
                    Container(
                      height: 50,
                      width: 152,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(63, 81, 243, 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "UPDATE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
