import 'package:clone_tele/custom_font.dart';
import 'package:clone_tele/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF212D3B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome To Clone Tele',
              style: mainText.copyWith(fontSize: 24),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 2 * 30,
              child: ElevatedButton(
                child: Text(
                  'Masuk',
                  style: mainText.copyWith(
                    color: Color(0XFF212D3B),
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Color(0XFF212D3B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
