import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({Key? key}) : super(key: key);

  @override
  State<CameraApp> createState() => CameraAppState();
}

class CameraAppState extends State<CameraApp> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xEBF8FF),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text(
                    'Not sure if something is recyclable?',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff154C8A),fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: const Text(
                    'Not sure if something is recyclable?',
                    style: TextStyle(color: Color(0xff154C8A),fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                if (imageFile != null)
                  Container(
                    width: 338,
                    height: 360,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(image: FileImage(imageFile!)),
                        border: Border.all(width: 8, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12.0)),

                  )
                else
                  Container(
                    width: 338,
                    height: 360,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 5, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: const Text(
                      'Upload your '
                          '            picture here',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff154C8A),fontSize: 32),
                        textAlign: TextAlign.center,
                    ),

                  ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 181, height: 36,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xff2DD15B)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: () => getImage(source: ImageSource.camera),
                    child: const Text(
                      'scan image',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    SizedBox(
                        width: 162, height: 111,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xff0071BF)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                      onPressed: () => getImage(source: ImageSource.camera),
                      child: const Text(
                        'take photo',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    )),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 162, height: 111,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(const Color(0xff0071BF)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            onPressed: () =>
                                getImage(source: ImageSource.gallery),
                            child: const Text(
                              'add from camera roll',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            )))
                  ],
                )
              ],
            )));
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
