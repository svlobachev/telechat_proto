import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:telechat_proto/widgets/chat/view/text_bar_at_bottom.dart';

class ChatView extends StatelessWidget {
  AudioPlayer audioPlayer = new AudioPlayer();
  Duration duration = new Duration();
  Duration position = new Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;
  final dialogColor = Color(0xff9cc3cc);
  final now = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField at Bottom'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  BubbleNormalAudio(
                    color: Color(0xFFE8E8EE),
                    duration: duration.inSeconds.toDouble(),
                    position: position.inSeconds.toDouble(),
                    isPlaying: isPlaying,
                    isLoading: isLoading,
                    isPause: isPause,
                    onSeekChanged: _changeSeek,
                    onPlayPauseButtonClick: _playAudio,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'bubble normal with tail',
                    isSender: false,
                    // color: Color(0xFF1B97F3),
                    color: dialogColor,
                    tail: true,
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  BubbleNormal(
                    text: 'bubble normal with tail',
                    isSender: true,
                    color: dialogColor,
                    tail: true,
                    sent: true,
                  ),
                  DateChip(
                    date: new DateTime(now.year, now.month, now.day - 2),
                  ),
                  BubbleNormal(
                    text: 'bubble normal without tail',
                    isSender: false,
                    color: dialogColor,
                    tail: false,
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  BubbleNormal(
                    text: 'bubble normal without tail',
                    color: Color(0xFFE8E8EE),
                    tail: false,
                    sent: true,
                    seen: true,
                    delivered: true,
                  ),
                  BubbleSpecialOne(
                    text: 'bubble special one with tail',
                    isSender: false,
                    color: dialogColor,
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  DateChip(
                    date: new DateTime(now.year, now.month, now.day - 1),
                  ),
                  BubbleSpecialOne(
                    text: 'bubble special one with tail',
                    color: Color(0xFFE8E8EE),
                    seen: true,
                  ),
                  BubbleSpecialOne(
                    text: 'bubble special one without tail',
                    isSender: false,
                    tail: false,
                    color: dialogColor,
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  BubbleSpecialOne(
                    text: 'bubble special one without tail',
                    tail: false,
                    color: Color(0xFFE8E8EE),
                    sent: true,
                  ),
                  BubbleSpecialTwo(
                    text: 'bubble special tow with tail',
                    isSender: false,
                    color: dialogColor,
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  DateChip(
                    date: now,
                  ),
                  BubbleSpecialTwo(
                    text: 'bubble special tow with tail',
                    isSender: true,
                    color: Color(0xFFE8E8EE),
                    sent: true,
                  ),
                  BubbleSpecialTwo(
                    text: 'bubble special tow without tail',
                    isSender: false,
                    tail: false,
                    color: dialogColor,
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  BubbleSpecialTwo(
                    text: 'bubble special tow without tail',
                    tail: false,
                    color: Color(0xFFE8E8EE),
                    delivered: true,
                  ),
                  BubbleSpecialThree(
                    text: 'bubble special three without tail',
                    color: dialogColor,
                    tail: false,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  BubbleSpecialThree(
                    text: 'bubble special three with tail',
                    color: dialogColor,
                    tail: true,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  BubbleSpecialThree(
                    text: "bubble special three without tail",
                    color: Color(0xFFE8E8EE),
                    tail: false,
                    isSender: false,
                  ),
                  BubbleSpecialThree(
                    text: "bubble special three with tail",
                    color: Color(0xFFE8E8EE),
                    tail: true,
                    isSender: false,
                  ),
                  // TextBarAtBottom(),
                ],
              ),
            ),
          ),
          TextBarAtBottom(),
        ],
      ),
    );
  }

  void _changeSeek(double value) {
    {
      audioPlayer.seek(new Duration(seconds: value.toInt()));
    }
    ;
  }

  void _playAudio() async {
    final url =
        'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3';
    if (isPause) {
      await audioPlayer.resume();
      {
        isPlaying = true;
        isPause = false;
      }
      ;
    } else if (isPlaying) {
      await audioPlayer.pause();
      {
        isPlaying = false;
        isPause = true;
      }
      ;
    } else {
      {
        isLoading = true;
      }
      ;
      await audioPlayer.play(url);
      {
        isPlaying = false;
      }
      ;
    }

    audioPlayer.onDurationChanged.listen((Duration d) {
      {
        duration = d;
        isLoading = false;
      }
      ;
    });
    audioPlayer.onAudioPositionChanged.listen((Duration p) {
      {
        position = p;
      }
      ;
    });
    audioPlayer.onPlayerCompletion.listen((event) {
      {
        isPlaying = true;
        duration = new Duration();
        position = new Duration();
      }
      ;
    });
  }
}
