import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class EditProfileImageInput extends StatefulWidget {
  // const EditProfileImageInput({Key? key}) : super(key: key);

  File initImage;
  EditProfileImageInput(this.initImage);

  @override
  State<EditProfileImageInput> createState() => _EditProfileImageInputState();
}

class _EditProfileImageInputState extends State<EditProfileImageInput> {
  File? _storedImage;

  _choosePicture(ImageSource src) async {
    final imageFile = await ImagePicker().pickImage(
      source: src,
      maxWidth: 600,
    );
    final croppedImage = await ImageCropper().cropImage(
      sourcePath: imageFile!.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      androidUiSettings: AndroidUiSettings(
        backgroundColor: Theme.of(context).backgroundColor,
        toolbarColor: Theme.of(context).primaryColor,
        toolbarWidgetColor: Colors.white,
      ),
    );
    setState(() {
      _storedImage = croppedImage;
    });
  }

  @override
  void initState() {
    _storedImage = widget.initImage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: <Widget>[
        ClipOval(
          child: Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: Image.file(
              _storedImage!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          child: Row(
            children: <Widget>[
              Container(
                height: 45,
                width: 55,
                decoration: const BoxDecoration(
                  color: Color(0XFFF95C05),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(Icons.camera_alt),
                  iconSize: 30,
                  onPressed: () {
                    _choosePicture(ImageSource.camera);
                  },
                ),
              ),
              Container(
                width: 2,
                height: 45,
                color: Colors.white,
              ),
              Container(
                height: 45,
                width: 55,
                decoration: const BoxDecoration(
                  color: Color(0XFFF95C05),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(Icons.image),
                  iconSize: 30,
                  onPressed: () {
                    _choosePicture(ImageSource.gallery);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
