import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';

class InformationChanelPage extends StatelessWidget {
  const InformationChanelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Descripción',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Quiero conocer el mundo y lo comparto en video.',
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              Text(
                'Yo te muestro lo que ninguna revista o programa te diran. La verdad sobre los viajes.',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              Text(
                'Videos nuevos Miércoles 5pm, Viernes 9pm y Domingos 10 am (hora de México).',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Vinculos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListVinculos(title: 'web',img: 'red-mundial',color: Colors.white,iscolor: true),
              ListVinculos(title: 'Facebook',img: 'facebook',color: null,iscolor: true),
              ListVinculos(title: 'Twitter',img: 'gorjeo',color: null,iscolor: true),
              ListVinculos(title: 'Instagram',img: 'instagram',color: null,iscolor: true),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Más información',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListVinculos(title: 'http://www.youtube.com/c/alanxelmundo',img: 'red-mundial',color: Colors.white,iscolor: true),
              ListVinculos(title: 'México',img: 'worldwide',color: Colors.white,iscolor: false),
              ListVinculos(title: 'Se unió el 29 jun 2010',img: 'alert',color: Colors.white,iscolor: false),
              ListVinculos(title: '536,910,194 vistas',img: 'estadisticas',color: Colors.white,iscolor: false),
            ],
          ),
        ),
      ),
    );
  }
}

class ListVinculos extends StatelessWidget {
  String title;
  String img;
  Color? color;
  bool iscolor;

  ListVinculos({required this.title,required this.img,required this.color,required this.iscolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Image.asset(
            'assets/images/$img.png',
            color: color,
            height: 25,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: TextStyle(
              color: iscolor?Colors.blue:Colors.white70,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
