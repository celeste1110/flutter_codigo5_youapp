import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListVideoChanelWidget extends StatelessWidget {
  String imagen;
  ListVideoChanelWidget({required this.imagen});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                imagen,
                width: height * 0.21 ,
                height: height * 0.12,
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
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: ListTile(

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
          ),

        ],
      ),
    );
  }
}
