import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:stroller/apis/recognition_api.dart';
import 'package:stroller/apis/translation_api.dart';

class Camerawidget extends StatefulWidget {
  final CameraDescription camera;
  const Camerawidget({Key? key, required this.camera}) : super(key: key);

  @override
  State<Camerawidget> createState() => _CamerawidgetState();
}

class _CamerawidgetState extends State<Camerawidget> {
  late CameraController cameraController;
  late Future<void> initCameraFn;
  String? shownText;

  @override
  void initState() {
    super.initState();
    cameraController = CameraController(widget.camera, ResolutionPreset.max);
    initCameraFn = cameraController
        .initialize()
        .then((value) => cameraController.setFlashMode(FlashMode.off));
  }

  @override
  void dispose() {
    super.dispose();
    cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        FutureBuilder(
          future: initCameraFn,
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }

            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: CameraPreview(cameraController),
            );
          }),
        ),
        Positioned(
          bottom: 50,
          child: FloatingActionButton(
            onPressed: () async {
              final image = await cameraController.takePicture();
              final recognizedText = await RecognitionApi.recognizeText(
                InputImage.fromFile(
                  File(image.path),
                ),
              );
              if (recognizedText == null) return;
              final translatedText =
                  await TranslationApi.translateText(recognizedText);
              setState(() {
                shownText = translatedText;
              });
            },
            child: const Icon(Icons.translate),
          ),
        ),
        if (shownText != null)
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.black45,
              child: Text(shownText!,
                  style: const TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
      ],
    );
  }
}
