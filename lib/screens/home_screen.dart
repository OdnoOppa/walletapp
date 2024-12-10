import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: -10,
            right: 0,
            child: Image.asset(
              'assets/images/other_back.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 160,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(16), // Inner padding
              decoration: BoxDecoration(
                color: const Color(0xFF3E7C78), // Background color
                borderRadius: BorderRadius.circular(16), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    offset: const Offset(0, 4), // Shadow position
                    blurRadius: 8, // Shadow blur radius
                  ),
                ],
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min, // Wrap content height
                children: [
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Нийт үлдэгдэл ^",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "...",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ 2,548.00',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min, // Wrap content height
                        children: [
                          Text(
                            'Орлого',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '\$ 2,548.00',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min, // Wrap content height
                        children: [
                          Text(
                            'Зарлага',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '\$ 284.00',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            height: 480,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 32,
                bottom: 60,
                right: 32,
                top: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Гүйлгээний Түүх',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Бүгдийг харах',
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/logo1.png',
                            height: 72,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            children: <Widget>[
                              Text(
                                'UpWork',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Өнөөдөр',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Text(
                        '+ \$ 2,548.00',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/logo2.png',
                            height: 72,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            children: <Widget>[
                              Text(
                                'UpWork',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Өнөөдөр',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Text(
                        '+ \$ 2,548.00',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/logo3.png',
                            height: 72,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            children: <Widget>[
                              Text(
                                'UpWork',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Өнөөдөр',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Text(
                        '+ \$ 2,548.00',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/logo4.png',
                            height: 72,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            children: <Widget>[
                              Text(
                                'UpWork',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Өнөөдөр',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Text(
                        '+ \$ 2,548.00',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
