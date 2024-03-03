import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final videoURL = 'https://www.youtube.com/watch?v=Dcp02c9LLEw';

  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    _controller.seekTo(const Duration(seconds: 120));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        )
      ],
    ));
  }
}
