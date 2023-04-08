import 'package:flutter/material.dart';
import 'package:hotelp/views/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/bg.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        )),
        child: Material(
          color: Colors.transparent,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SELAMAT DATANG",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "DI APLIKASI BOKING HOTEL IMPIANMU",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Aplikasi Boking Hotel merupakan platform yang membantu dan memudahkan orang-orang untuk mencari dan memesan kamar hotel, penyewaan tempat menginap, dan memesanan tempat untuk menggelar acara.",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 15,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                    },
                    child: Ink(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
