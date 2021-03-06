import 'package:audioplayers/audioplayers.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

import 'text_field_at_bottom.dart';

class ChatView extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = const Duration();
  Duration position = const Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final Color dialogColor = Theme.of(context).colorScheme.onPrimary;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Чат'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  BubbleNormalAudio(
                    color: const Color(0xFFE8E8EE),
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
                    text: 'пузырь нормальный с хвостом',
                    isSender: false,
                    // color: Color(0xFF1B97F3),
                    color: dialogColor,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  BubbleNormal(
                    text: 'пузырь нормальный с хвостом',
                    color: dialogColor,
                    sent: true,
                  ),
                  DateChip(
                    date: DateTime(now.year, now.month, now.day - 2),
                  ),
                  BubbleNormal(
                    text: 'пузырь обычный без хвоста',
                    isSender: false,
                    color: dialogColor,
                    tail: false,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  BubbleNormal(
                    text: 'пузырь обычный без хвоста',
                    color: const Color(0xFFE8E8EE),
                    tail: false,
                    sent: true,
                    seen: true,
                    delivered: true,
                  ),
                  BubbleSpecialOne(
                    text: 'пузырь специальный с хвостом',
                    isSender: false,
                    color: dialogColor,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  DateChip(
                    date: DateTime(now.year, now.month, now.day - 1),
                  ),
                  const BubbleSpecialOne(
                    text: 'пузырь специальный с хвостом',
                    color: Color(0xFFE8E8EE),
                    seen: true,
                  ),
                  BubbleSpecialOne(
                    text: 'пузырь специальный без хвоста',
                    isSender: false,
                    tail: false,
                    color: dialogColor,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const BubbleSpecialOne(
                    text: 'пузырь специальный без хвоста',
                    tail: false,
                    color: Color(0xFFE8E8EE),
                    sent: true,
                  ),
                  BubbleSpecialTwo(
                    text: 'жгут специальный пузырьковый с хвостом',
                    isSender: false,
                    color: dialogColor,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  DateChip(
                    date: now,
                  ),
                  const BubbleSpecialTwo(
                    text: 'жгут специальный пузырьковый с хвостом',
                    color: Color(0xFFE8E8EE),
                    sent: true,
                  ),
                  BubbleSpecialTwo(
                    text: 'пузырчатая специальная пакля без хвоста',
                    isSender: false,
                    tail: false,
                    color: dialogColor,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const BubbleSpecialTwo(
                    text: 'пузырчатая специальная пакля без хвоста',
                    tail: false,
                    color: Color(0xFFE8E8EE),
                    delivered: true,
                  ),
                  BubbleSpecialThree(
                    text: 'пузырь специальная тройка без хвоста',
                    color: dialogColor,
                    tail: false,
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  BubbleSpecialThree(
                    text: 'пузырь специальный три с хвостом',
                    color: dialogColor,
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const BubbleSpecialThree(
                    text: 'пузырь специальная тройка без хвоста',
                    color: Color(0xFFE8E8EE),
                    tail: false,
                    isSender: false,
                  ),
                  const BubbleSpecialThree(
                    text: 'пузырь специальный три с хвостом',
                    color: Color(0xFFE8E8EE),
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
      audioPlayer.seek(Duration(seconds: value.toInt()));
    }
  }

  void _playAudio() async {
    const String url =
        'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3';
    if (isPause) {
      await audioPlayer.resume();
      {
        isPlaying = true;
        isPause = false;
      }
    } else if (isPlaying) {
      await audioPlayer.pause();
      {
        isPlaying = false;
        isPause = true;
      }
    } else {
      {
        isLoading = true;
      }
      await audioPlayer.play(url);
      {
        isPlaying = false;
      }
    }

    audioPlayer.onDurationChanged.listen((Duration d) {
      {
        duration = d;
        isLoading = false;
      }
    });
    audioPlayer.onAudioPositionChanged.listen((Duration p) {
      {
        position = p;
      }
    });
    audioPlayer.onPlayerCompletion.listen((event) {
      {
        isPlaying = true;
        duration = const Duration();
        position = const Duration();
      }
    });
  }
}
