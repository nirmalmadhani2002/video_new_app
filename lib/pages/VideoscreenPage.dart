import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../model/global.dart';


class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  initState() {
    super.initState();

    Timer.periodic(const Duration(milliseconds: 100), (timer) { setState((){}); });

    videoPlayerController = VideoPlayerController.asset(
      "assets/video/krishna-flute-music-mobile-status.mp4",
    );


    videoPlayerController.initialize().then((val) {
      setState(() {});
    });

    chewieController =
        ChewieController(videoPlayerController: videoPlayerController);
    (chewieController.isPlaying) ? Timer.periodic(const Duration(milliseconds: 100), (timer) { setState((){}); }) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title:  Text(
          categoriesName!,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 7,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: AspectRatio(
              aspectRatio: videoPlayerController.value.aspectRatio,
              child: Chewie(
                controller: chewieController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}