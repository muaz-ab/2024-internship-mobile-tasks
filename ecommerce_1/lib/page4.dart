import 'package:flutter/material.dart';
import 'package:namer_app/page1.dart';

void main() {
  runApp(SearchPage());
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ecommerce App",
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/home': (context) => const HomePage(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
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
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
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
                  "Search Product",
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
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 338.0),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 32.0, top: 23.0, right: 32.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1)),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  "Leather",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: const Color.fromRGBO(63, 81, 243, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 7.0),
                      Container(
                        height: 48.0,
                        width: 48.0,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(63, 81, 243, 1),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    children: [
                      Card(
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
                                width: double.infinity,
                                height: 160.0,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              height: 80.0,
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
                                          "120",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20.0,
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
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Card(
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
                                width: double.infinity,
                                height: 160.0,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              height: 80.0,
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
                                          "120",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20.0,
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
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Card(
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
                                width: double.infinity,
                                height: 160.0,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              height: 80.0,
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
                                          "120",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20.0,
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
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 338.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, -3),
                  ),
                ],
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 50.0,
                      width: 366.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6.0),
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Price',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: const Color.fromRGBO(63, 81, 243, 1),
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Colors.white,
                        overlayColor: Colors.white.withOpacity(0.3),
                        trackHeight: 4.0,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 24.0),
                      ),
                      child: RangeSlider(
                        values: RangeValues(50, 300),
                        min: 0,
                        max: 500,
                        onChanged: (RangeValues values) {},
                      ),
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        backgroundColor: const Color.fromRGBO(63, 81, 243, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Apply Filters',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
