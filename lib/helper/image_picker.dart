import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class Picker {
  static Future<File?> showPickImageDialog(BuildContext context) async {
    return showDialog<File?>(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () async {
              final navigator = Navigator.of(context);
              var f = await _pickGallaryImage();
              return navigator.pop(f);
              // _pickGallaryImage();
            },
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                'Pick from gallary',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(),
          TextButton(
            onPressed: () async {
              final nav = Navigator.of(context);
              var f = await _takeImage();
              return nav.pop(f);
            },
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                'Take image',
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  static Future<File?> _pickGallaryImage() async {
    if (Platform.isIOS) {
      bool photosPermission = await Permission.photos.isGranted;
      if (!photosPermission) {
        await Permission.photos.request();
        return null;
      }
    }
    final xImage = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 100,
        maxHeight: 600,
        maxWidth: 600);
    if (xImage == null) return null;
    File newImage = File(xImage.path);
    return newImage;
  }

  static Future<File?> _takeImage() async {
    if (Platform.isIOS) {
      bool camPermission = await Permission.camera.isGranted;
      if (!camPermission) {
        await Permission.camera.request();
        return null;
      }
    }
    final xImage = await ImagePicker().pickImage(
        source: ImageSource.camera,
        imageQuality: 100,
        maxHeight: 600,
        maxWidth: 600);
    if (xImage == null) return null;
    File newImage = File(xImage.path);
    return newImage;
  }
}
