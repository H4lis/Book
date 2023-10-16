import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({
    super.key,
    required this.flickManager,
  });

  final FlickManager flickManager;

  @override
  Widget build(BuildContext context) {
    
    return AspectRatio(aspectRatio: 16/9, child: FlickVideoPlayer(flickManager: flickManager, ),);
  }
}
