import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class Online_Video extends StatefulWidget {

  @override
  _Run_VideoState createState() => _Run_VideoState();
}

class _Run_VideoState extends State<Online_Video> {
bool vid_state=true;
  VideoPlayerController _vc;
  String link="https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _vc=VideoPlayerController.network(link)..initialize().then((value) {
     _vc.play();
     _vc.setLooping(true);
     setState(() {
       vid_state=false;
     });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
