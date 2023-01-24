import 'package:flutter/material.dart';
import 'package:hw_7/pages/firstPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: applicationBar(),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'images/front_page.png',
              fit: BoxFit.cover,
              height: 500,
              width: double.infinity,
            ),
            Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Grow any plant',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FirstPage(),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.apple),
                            Text('Continue with Apple'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Text('By continuing, you agree to Greg\'s'),
                  const Text('Terms of Service and privacy Policy'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar applicationBar() {
    return AppBar(
      backgroundColor: const Color(0xffd7e9fd),
      leading: const Icon(Icons.arrow_back_ios_sharp),
      elevation: 0,
    );
  }
}
