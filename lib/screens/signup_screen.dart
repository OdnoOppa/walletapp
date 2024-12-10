import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0, // Align image to the top of the screen
            left: -10, // Align image to the left of the screen
            right: 0, // Align image to the right of the screen
            child: Image.asset(
              'assets/images/home_back.png', // Path to your image
              fit: BoxFit
                  .cover, // Ensures the image covers the top area but maintains aspect ratio
            ),
          ),

          Positioned(
            top: 100,
            left: 50,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Тавтай морилно уу!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 50, // Position the form towards the bottom of the screen
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 32, bottom: 60, right: 32, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 12, bottom: 0, right: 12, top: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Бүтэн нэрээ оруулна уу?',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 12, bottom: 0, right: 12, top: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Имэйлээ оруулна уу?',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 12, bottom: 0, right: 12, top: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Нууц үгээ оруулаарай',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 12, bottom: 0, right: 12, top: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Нууц үгээ давтан оруулаарай',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity, // Button stretches to full width
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF3E7C78), // Button background color
                        foregroundColor: Colors.white, // Button text color
                        padding: const EdgeInsets.symmetric(
                            vertical: 16), // Padding inside the button
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(100), // Rounded corners
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/mainnavigation');
                      },
                      child: const Text(
                        'БҮРТГҮҮЛЭХ',
                        style: TextStyle(
                          fontSize: 18, // Custom font size for the text
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Хэрэглэгчийн эрхтэй юу?',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Нэвтрэх',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
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
