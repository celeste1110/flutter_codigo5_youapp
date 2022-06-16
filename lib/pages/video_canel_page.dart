
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';

import '../ui/widget/list_video_chanel_widget.dart';

class VideoChanelPage extends StatelessWidget {
  const VideoChanelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: SingleChildScrollView(

        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/343391/pexels-photo-343391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/238634/pexels-photo-238634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/754172/pexels-photo-754172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/343391/pexels-photo-343391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/238634/pexels-photo-238634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/754172/pexels-photo-754172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/343391/pexels-photo-343391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/238634/pexels-photo-238634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
            ListVideoChanelWidget(imagen: 'https://images.pexels.com/photos/754172/pexels-photo-754172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
          ],
        ),
      ),

    );
  }
}
