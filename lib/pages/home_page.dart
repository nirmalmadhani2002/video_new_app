import 'package:flutter/material.dart';

import '../model/global.dart';



class VideoListScreen extends StatefulWidget {
  const VideoListScreen({Key? key}) : super(key: key);

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Video Player",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(

            children: [
              Container(
                height: 7,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height*0.85,
                color: Colors.white,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: videos
                        .map(
                          (e) => GestureDetector(
                        onTap: () {
                          setState((){

                            videoLink = e.video;
                            categoriesName = e.categories;

                          });
                          Navigator.of(context).pushNamed('video_screen');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 35),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(
                                          1.0,
                                          1.0,
                                        ),
                                        blurRadius: 10.0,
                                        spreadRadius: 5.0,
                                      ), //BoxShadowBoxShadow
                                    ],
                                    borderRadius: BorderRadius.circular(18),
                                    image: DecorationImage(
                                      image: AssetImage(e.img),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  e.categories,
                                  style: const TextStyle(
                                    letterSpacing: 1,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}