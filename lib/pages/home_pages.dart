import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
import 'package:flutter_codigo5_youapp/ui/widget/item_filter_widget.dart';
import 'package:flutter_codigo5_youapp/ui/widget/item_list_video_widget.dart';

import '../models/video_model.dart';
import '../services/api_services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final APIServices _apiService = APIServices();
  List<VideoModel> videos = [];
  bool isLoading = true;

  @override
  initState() {
    super.initState();
    // _apiService.getChannel('UCMnHk6_QgQT1KQkbUlxhTYw');
    getData();
  }

  getData() async {
    _apiService.getVideos().then((value) {
      videos = value;
      isLoading = false;
      setState(() {});
    });
    //  videoList = await _apiService.getVideos();
    // videoListAux = videoList;

    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: !isLoading
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.explore_off_outlined),
                          label: Text(
                            'Explorar',
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Color(0xff383838),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10)),
                        ),
                        const SizedBox(
                          height: 32,
                          child: VerticalDivider(
                            color: Colors.white24,
                            thickness: 0.9,
                          ),
                        ),
                        ItemFilterWidget(text: 'Todos', isSelected: true),
                        ItemFilterWidget(text: 'Mixes', isSelected: false),
                        ItemFilterWidget(text: 'Musics', isSelected: false),
                        ItemFilterWidget(
                            text: 'Programacion', isSelected: false),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: videos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemListVideoWidget(
                        videoModel: videos[index],
                        videos: videos,
                      );
                    },
                  ),
                ],
              ),
            )
          : Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
