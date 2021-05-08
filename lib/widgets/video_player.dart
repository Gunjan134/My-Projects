import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final int id;
  final String videoURL;
  VideoPlayerScreen(this.id, this.videoURL, {Key key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() =>
      _VideoPlayerScreenState(this.id, this.videoURL);
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  int id;
  String videoURL;
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  _VideoPlayerScreenState(this.id, this.videoURL);

  @override
  void initState() {
    if (id != null) {
      this.videoURL = this.id.toString() + '/video/' + this.videoURL;
      _controller = VideoPlayerController.network(this.videoURL);
    } else {
      _controller = VideoPlayerController.asset(this.videoURL);
    }
    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Video',
            style: const TextStyle(
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0.18,
            ),
          ),
        ),
        body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            } else {
              return const Center(
                child: const CircularProgressIndicator(),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          backgroundColor: Theme.of(context).highlightColor,
          foregroundColor: Colors.white,
          elevation: 3,
          onPressed: () {
            setState(
              () {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              },
            );
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
}
