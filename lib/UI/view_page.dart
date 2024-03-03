import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ViewPage extends StatefulWidget {
  final String videoURL;

  const ViewPage({Key? key, required this.videoURL}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  late String videoURL;

  // getting the relevant information
  List<Map<String, int>> timeStamps = [
    {
      "start": 0,
      "end": 60,
    },
    {
      "start": 60,
      "end": 120,
    },
    {
      "start": 120,
      "end": 180,
    },
    {
      "start": 180,
      "end": 240,
    },
  ];

  List<YoutubePlayerController> _controllers = [];
  List<Widget> _players = [];

  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    videoURL = widget.videoURL;

    pageController.addListener(() {
      int currentPage = pageController.page!.round();
      // get the current controller from _players
      YoutubePlayerController _controller = _controllers[currentPage];

      // seek to the timestamp
      _controller.addListener(() {
        _controller
            .seekTo(Duration(seconds: timeStamps[currentPage]["start"]!));
      });

      // play the video
      _controller.play();
    });

    // for each timestamp, create a new player and for each play seek to the start time
    for (var i = 0; i < timeStamps.length; i++) {
      final videoID = YoutubePlayer.convertUrlToId(videoURL);
      YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
      _controllers.add(_controller);
    }

    // for each controller in _controllers, create a new player
    for (var i = 0; i < _controllers.length; i++) {
      _players.add(
        FittedBox(
          fit: BoxFit.cover,
          child: YoutubePlayer(
            controller: _controllers[i],
            onReady: () => {
              _controllers[i]
                  .seekTo(Duration(seconds: timeStamps[i]["start"]!)),
              _controllers[i].play(),
            },
            showVideoProgressIndicator: true,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const BackButton(color: Colors.white,),
        backgroundColor: Colors.transparent,
        elevation: 1,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        scrollBehavior: const MaterialScrollBehavior(),
        children: _players,
      ),
    );
  }
}
