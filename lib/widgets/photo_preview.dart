import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:seriese_reminders/helper/files_saver.dart';
import 'package:seriese_reminders/helper/image_picker.dart';
import 'package:seriese_reminders/util/size_config.dart';

class PhotoPreview extends StatefulWidget {
  const PhotoPreview({super.key});

  @override
  State<PhotoPreview> createState() => _PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreview> {
  File? _image;
  double? _imageWidth;
  double? _imageHeight;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: () async {
            File? selectedImage = await Picker.showPickImageDialog(context);
            if (selectedImage != null) {
              final decodedImage =
                  await decodeImageFromList(selectedImage.readAsBytesSync());
              _imageHeight = decodedImage.height.toDouble();
              _imageWidth = decodedImage.width.toDouble();
              print('height $_imageHeight, width $_imageWidth');
            }
            setState(() => _image = selectedImage);
          },
          child: Container(
            constraints: BoxConstraints(
              maxHeight: getPercentScreenHeight(20),
              maxWidth: getPercentScreenWidth(80),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 237, 234, 234),
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: _image == null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                        Icon(Icons.photo_camera_back),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text('Select picture')
                      ])
                : Image.file(_image!),
          ),
        )
      ],
    );
  }
}
