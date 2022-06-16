import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../models/video_model.dart';
import '../ui/widget/item_list_video_widget.dart';
import 'chanel_page.dart';

class VideoDetailPage extends StatefulWidget {
  String idVideo;
  List<VideoModel> videos = [];
  VideoDetailPage({required this.idVideo, required this.videos});
  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.idVideo,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        hideControls: false,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.35,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressColors: ProgressBarColors(
                backgroundColor: Colors.white.withOpacity(0.1),
                bufferedColor: Colors.white,
                handleColor: Colors.red,
                playedColor: Colors.red,
              ),
              //   videoProgressIndicatorColor: Colors.amber,
              //   progressColors: ProgressColors(
              //     playedColor: Colors.amber,
              //     handleColor: Colors.amberAccent,
              //   ),
              //   onReady () {
              // _controller.addListener(listener);
              // },
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ListTile(
            title: Text(
              'Official JUMP FESTA Trailer | Bleach | Thousand-Year Blood War | VIZ',
              maxLines: 2,
              style: TextStyle(color: Colors.white, fontSize: 14, height: 1.3),
            ),
            subtitle: Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Text(
                    '7 M de vistas - hace 5 min ',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 14,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    'Bleach #VIZ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconDetailVideoWidget(
                              icon: Icons.thumb_up_alt_rounded, text: '234 K'),
                          IconDetailVideoWidget(
                              icon: Icons.thumb_down_alt_outlined,
                              text: 'No me gusta'),
                          IconDetailVideoWidget(
                              icon: Icons.share, text: 'Compartir'),
                          IconDetailVideoWidget(
                              icon: Icons.download_rounded, text: 'Descargar'),
                          IconDetailVideoWidget(
                              icon: Icons.cut, text: 'Recortar'),
                          IconDetailVideoWidget(
                              icon: Icons.library_add_outlined,
                              text: 'Guardar'),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: GestureDetector(
                      onTap: () {
                        _controller.pause();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChanelPage()));
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/11482693/pexels-photo-11482693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vizmedia',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    '234 K suscriptores',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'SUSCRIBIRSE',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white12,
                  ),
                  Container(
                    height: 90,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Comentarios',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '20 K',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_up_outlined,
                                    size: 17,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    size: 17,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height:10 ,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14,
                                  backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Expanded(
                                  child: Text(
                                    'It is a long established fact that a reader will be distracted by the readable content ♥',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 13,
                                        ),
                                  maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14,
                                  backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/11482693/pexels-photo-11482693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Expanded(
                                  child: Text(
                                    'It is a long established fact that a reader will be distracted by the readable content ♥',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 13,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14,
                                  backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/11482693/pexels-photo-11482693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Expanded(
                                  child: Text(
                                    'It is a long established fact that a reader will be distracted by the readable content ♥',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 13,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: widget.videos.map((e) => ItemListVideoWidget(videoModel: e,videos: widget.videos,)).toList(),
                        // ListView.builder(
                        //   physics: const ScrollPhysics(),
                        //   shrinkWrap: true,
                        //   itemCount: widget.videos.length,
                        //   itemBuilder: (BuildContext context, int index) {
                        //     return ItemListVideoWidget(
                        //       videoModel: widget.videos[index],
                        //       videos: widget.videos,
                        //     );
                        //   },
                        // ),
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconDetailVideoWidget extends StatelessWidget {
  IconData icon;
  String text;
  IconDetailVideoWidget({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.white,
              size: 26,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.white60,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
