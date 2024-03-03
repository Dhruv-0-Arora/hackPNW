import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
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
      body: PageView(
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
          ),
        ],
      ),
      //   body: (
      // crossAxisAlignment: CrossAxisAlignment.center,
      // children: [
      //   YoutubePlayer(Column
      //     controller: _controller,
      //     showVideoProgressIndicator: true,
      //   )
      // ],
    );
  }
}
