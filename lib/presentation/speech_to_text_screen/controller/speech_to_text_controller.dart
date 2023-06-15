import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:stroller/core/app_export.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
// ignore: unused_import
import 'package:stroller/presentation/speech_to_text_screen/models/speech_to_text_model.dart';
import 'package:stroller/presentation/speech_to_text_screen/speech_to_text_screen.dart';

class SpeechToTextController extends GetxController {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';
  // ignore: unused_field
  double _confidence = 1.0;

  final Map<String, HighlightedWord> _highlights = {
    'flutter': HighlightedWord(
      onTap: () => print('flutter'),
      textStyle: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
    'voice': HighlightedWord(
      onTap: () => print('voice'),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
    'subscribe': HighlightedWord(
      onTap: () => print('subscribe'),
      textStyle: const TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
      ),
    ),
    'like': HighlightedWord(
      onTap: () => print('like'),
      textStyle: const TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
      ),
    ),
    'comment': HighlightedWord(
      onTap: () => print('comment'),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
  };

  void initialize() {
    _speech = stt.SpeechToText();
  }

  void listen(
    Function(String) onStatus,
    Function(String) onResult,
    Function(String) onError,
  ) async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: onStatus,
      );
      if (available) {
        _isListening = true;
        _speech.listen(
          onResult: (val) {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
            onResult(_text);
          },
        );
      }
    } else {
      _isListening = false;
      _speech.stop();
    }
  }

  SpeechToTextScreen getSpeechScreen(Function onPressed) {
    return SpeechToTextScreen(
      text: _text,
      highlights: _highlights,
      onPressed: onPressed,
    );
  }
}
