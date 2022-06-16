import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';

import '../ui/widget/list_video_chanel_widget.dart';

class MainChanelPage extends StatelessWidget {
  const MainChanelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Stack(
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/238622/pexels-photo-238622.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    width: double.infinity,
                    height: height * 0.16,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Text(
                      'Videos nuevos lunes y viernes 7pm MEX',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/11482693/pexels-photo-11482693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'alanxelmundo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SUSCRITO',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.notifications_none,
                  color: Colors.white54,
                  size: 25,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '3.16 M de suscriptores . 866 videos',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quiero conocer el mundo y lo comparto en video  ',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Colors.white54,
                  size: 28,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.network(
                        'https://images.pexels.com/photos/340566/pexels-photo-340566.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        width: double.infinity,
                        height: height * 0.3,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7)),
                          child: Text(
                            '25:04',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    leading: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.white30,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/11482693/pexels-photo-11482693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: Text(
                      'Mi playa favorita de México 4K | Baja trip #13 Alan x el mundo',
                      maxLines: 2,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    subtitle: Text(
                      "alanxelmundo · 693K vistas vistas · hace 1 año",
                      maxLines: 2,
                      style: TextStyle(color: Colors.white54, fontSize: 13),
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.only(top: 6),
                      child: Column(
                        children: [
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.white12,
            ),
            Padding(

              padding:const EdgeInsets.only(left: 12, top: 4,bottom: 4, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Videos subidos',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/343391/pexels-photo-343391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/238634/pexels-photo-238634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
                      ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/754172/pexels-photo-754172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
