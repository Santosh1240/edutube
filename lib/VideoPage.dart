import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context).settings.arguments;
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(data)
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Lessons"),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
