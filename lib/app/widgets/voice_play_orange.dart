import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../shared/constant.dart';

class VoicePlayOrange extends StatefulWidget {
  final String audioUrl;
  const VoicePlayOrange({
    required this.audioUrl,
    Key? key,
  }) : super(key: key);

  @override
  State<VoicePlayOrange> createState() => _VoicePlayOrangeState();
}

class _VoicePlayOrangeState extends State<VoicePlayOrange> {
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool audioLoaded = false;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
    _loadAudio();
  }

  Future<void> _loadAudio() async {
    try {
      await player.setSourceUrl(widget.audioUrl); // Mengatur URL audio
      final newDuration =
          await player.getDuration(); // Mendapatkan durasi audio
      setState(() {
        duration = newDuration!;
        audioLoaded = true; // Set audioLoaded menjadi true setelah data diambil
      });
    } catch (e) {
      print('Error loading audio: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 1, 20, 1),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: black),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          InkWell(
              onTap: () async {
                if (isPlaying) {
                  player.pause();
                } else {
                  await player.play(UrlSource(widget.audioUrl));
                }
              },
              child: Transform.scale(
                scale: 1.5,
                child: Icon(
                  isPlaying ? Icons.pause_rounded : Icons.play_arrow_outlined,
                  color: purple,
                ),
              )

              //  Image.asset(
              //   "assets/icons/play.png",
              // ),
              ),
          Expanded(
            child: SliderTheme(
              data: SliderThemeData(
                  activeTrackColor: purplelight,
                  inactiveTrackColor: grey,
                  trackHeight: 2.5,
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 5,
                  )),
              child: Slider(
                thumbColor: purplelight,
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) {
                  final position = Duration(seconds: value.toInt());
                  player.seek(position);
                  player.resume();
                },
              ),
            ),
          ),
          Text(
            formatTime((duration - position).inSeconds),
            style: regular_paragraf,
          ),
        ],
      ),
    );
  }
}
