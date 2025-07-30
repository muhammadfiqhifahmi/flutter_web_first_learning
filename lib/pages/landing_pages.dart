import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Color(0XFF4D4D4D),
                fontWeight: index == selectedIndex ? FontWeight.w500 : FontWeight.w200,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex ? Color(0xffFE998D) : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'Background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('logo.png', width: 107.54, height: 16.71),
                    Row(
                      children: [
                        navItem(
                          title: 'Home',
                          index: 0
                        ),
                        SizedBox(width: 30),
                        navItem(
                          title: 'Features',
                          index: 1
                        ),
                        SizedBox(width: 30),
                        navItem(
                          title: 'Commodity',
                          index: 2
                        ),
                        SizedBox(width: 30),
                        navItem(
                          title: 'Blog',
                          index: 3
                        ),
                        SizedBox(width: 30),
                        navItem(
                          title: 'Pricing',
                          index: 4
                        ),
                      ],
                    ),
                    Image.asset(
                      'Button_register.png',
                      width: 133.25,
                      height: 36.49,
                    ),
                  ],
                ),
                SizedBox(height: 75),
                Image.asset('Illustration.png', height: 283, width: 272),
                SizedBox(height: 85),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('Button.png', width: 100),
                    SizedBox(width: 10),
                    Text(
                      'Belum Punya Akun? Silakan Daftar Dengan Mengklik Tombol Disamping.',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
