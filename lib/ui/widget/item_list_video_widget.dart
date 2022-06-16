import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/models/channel_model.dart';
import 'package:flutter_codigo5_youapp/pages/video_detail_pages.dart';
import 'package:flutter_codigo5_youapp/services/api_services.dart';

import '../../models/video_model.dart';

class ItemListVideoWidget extends StatelessWidget {
  VideoModel videoModel;
  List<VideoModel> videos = [];
  ItemListVideoWidget({required this.videoModel,required this.videos});

  final APIServices _apiServices = APIServices();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // print(videoModel.snippet.channelId);
    return GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>VideoDetailPage(idVideo: videoModel.id.videoId,videos: videos),) );
        },
      child: Container(

        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  videoModel.snippet.thumbnails.high.url,
                  width: double.infinity,
                  height: height * 0.3,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.7)),
                    child: Text(
                      '23:02',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              leading: FutureBuilder(
                future: _apiServices.getChannel(videoModel.snippet.channelId),
                builder: (BuildContext context, AsyncSnapshot snap) {
                  if (snap.hasData) {
                    ChannelModel channel = snap.data;
                    return Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.white30,
                        backgroundImage: NetworkImage(
                            channel.snippet.thumbnails.thumbnailsDefault.url),
                      ),
                    );
                  }
                  return Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
              title: Text(
                videoModel.snippet.title,
                maxLines: 2,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              subtitle: Text(
                "${videoModel.snippet.channelTitle} · 8.8 M de vistas · hace 5 años",
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
    );
  }
}
