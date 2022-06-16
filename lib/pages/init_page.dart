import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/pages/home_pages.dart';

import '../ui/general/colors.dart';

class InitPage extends StatefulWidget {
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int currentPage=0;

 List<Widget> _pages= [
   HomePage(),
   Center(child: Text('Page 2'),),
   Center(child: Text('Page 3'),),
   Center(child: Text('Page 4'),),
   Center(child: Text('Page 5'),),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //
        backgroundColor: kBrandPrimaryColor,
        title: Image.asset(
          'assets/images/logo.png',
          width: 120,
        ),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),

          IconButton(
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.notifications_none,
                ),
                Positioned(
                  top: -2,
                  right: -4,
                  child: Container(
                      padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const Text(
                      '+9',
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                )
              ],

            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff241E28),
        selectedFontSize: 12,
        selectedItemColor: Colors.white,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          currentPage=value;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Principal',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Shorts',
            icon: Icon(
              Icons.play_arrow_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              margin: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.add_circle_outline,
                size: 45,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Suscripciones',
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Biblioteca',
            icon: Icon(
              Icons.video_collection_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
