import 'package:hotelp/models/hotel.dart';

import 'package:flutter/material.dart';

final $utils = Utils();

class Utils {
  late final primary = Colors.blueGrey;

  final hotels = <Hotel>[
    Hotel(
        name: 'Hotel Pop',
        address: 'Kp. Baru, Kec. Buleleng, Kab. Buleleng, Bali',
        price: 200.000,
        star: 4.4,
        description:
            'POP Hotel menyediakan akomodasi modern dan menyenangkan dengan Wi-Fi gratis. Memiliki sebuah kolam renang outdoor dan menyediakan akses mudah ke kawasan wisata populer seperti Pantai Lovina, terletak 10 menit berjalan kaki.',
        more: {
          'rooms': '20',
          'mq': '90',
          'location': 'Singaraja, Bali',
          'url': 'assets/home/Hotel_pop.jpg',
          'details': ['assets/details/pop_1.jpg', 'assets/details/pop_2.jpg'],
        }),
    Hotel(
        name: 'Hotel Sunari',
        address:
            'Jl. Raya Desa Kalibukbuk, Anturan, Kec. Buleleng, Singaraja Bali',
        price: 250.000,
        star: 4.5,
        description:
            'Hotel Sunari Terletak Di Pesisir Pantai Lovina, New Sunari Lovina Beach Resort menawarkan kolam renang luar ruangan dan kamar-kamar serta vila-vila yang luas. Fasilitas yang ditawarkan meliputi pusat bisnis, restoran, dan bar.',
        more: {
          'rooms': '30',
          'mq': '90',
          'location': 'Singaraja, Bali',
          'url': 'assets/home/Hotel_sunari.jpg',
          'details': [
            'assets/details/sunari_1.jpg',
            'assets/details/sunari_2.jpg'
          ],
        }),
    Hotel(
        name: 'Hotel Aneka',
        address: 'Jl. Raya Kalibukbuk, Lovina Beach, Singaraja Bali',
        price: 300.000,
        star: 4.8,
        description:
            'Aneka Lovina Villas & Spa terletak di sepanjang Pantai Lovina yang berpasir hitam di Bali. Hotel ini memiliki kolam renang indoor, 2 restoran dan 2 bar.',
        more: {
          'rooms': '40',
          'mq': '150',
          'location': 'Singaraja, Bali',
          'url': 'assets/home/Hotel_aneka.jpg',
          'details': [
            'assets/details/aneka_1.jpg',
            'assets/details/aneka_2.jpg'
          ],
        })
  ];
}
