import 'package:camera/camera.dart';
import 'package:stroller/widgets/camera_widget.dart';

import 'controller/camera_window_controller.dart';
import 'package:flutter/material.dart';
import 'package:stroller/core/app_export.dart';

class CameraWindowScreen extends GetWidget<CameraWindowController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: FutureBuilder<List<CameraDescription>>(
            future: availableCameras(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              if (snapshot.hasError || !snapshot.hasData) {
                return const Center(
                  child: Text('Error'),
                );
              }
              final cameras = snapshot.data!.first;
              return Camerawidget(
                camera: cameras,
              );
            }),
      ),
    );
  }
}
