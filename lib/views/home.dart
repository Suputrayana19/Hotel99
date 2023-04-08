import 'package:hotelp/views/welcome.dart';
import 'package:hotelp/widgets/home/hotel_card.dart';
import 'package:hotelp/widgets/home/search_bar.dart';
import 'package:hotelp/utils/utils.dart';

import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('LogOut'),
              leading: Icon(Icons.logout_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welcome()));
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            children: [
              const SizedBox(height: 20),
              const SearchBar(),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Pilih Hotel Impianmu',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                TextButton(
                  child: Text(
                    'View all',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500,
                        fontSize: 16),
                  ),
                  onPressed: () {},
                )
              ]),
              ListView.separated(
                shrinkWrap: true,
                itemCount: $utils.hotels.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return HotelCard(hotel: $utils.hotels[index]);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
              )
            ]),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            elevation: 0,
            currentIndex: 0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: $utils.primary,
            unselectedItemColor: Colors.black54,
            items: const [
              BottomNavigationBarItem(
                  label: '', icon: HeroIcon(HeroIcons.home)),
              BottomNavigationBarItem(
                  label: '', icon: HeroIcon(HeroIcons.bookmark)),
              BottomNavigationBarItem(
                  label: '', icon: HeroIcon(HeroIcons.adjustmentsVertical)),
              BottomNavigationBarItem(
                  label: '', icon: HeroIcon(HeroIcons.user)),
            ]),
      ),
    );
  }
}
