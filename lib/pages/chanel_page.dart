import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/pages/video_canel_page.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';

import 'information_chanel_page.dart';
import 'main_chanel_page.dart';

class ChanelPage extends StatefulWidget {
  @override
  State<ChanelPage> createState() => _ChanelPageState();
}

class _ChanelPageState extends State<ChanelPage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBrandPrimaryColor,
        title: Text('T3chFest'),
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 2.7,
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                'PAGINA PRINCIPAL',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Tab(
              child: Text(
                'VIDEOS',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Tab(
              child: Text(
                'LISTA DE REPRODUCCION',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Tab(
              child: Text(
                'COMUNIDAD',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Tab(
              child: Text(
                'CANALES',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Tab(
              child: Text(
                'MAS INFORMACION',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MainChanelPage(),
          VideoChanelPage(),
          Center(
            child: Text(
              'Lista de reproduccion',
            ),
          ),
          Center(
            child: Text(
              'Comunidad',
            ),
          ),
          Center(
            child: Text(
              'Canales',
            ),
          ),
          InformationChanelPage(),
        ],
      ),
    );
  }
}
