import 'package:flutter/material.dart';
//import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});
  
  @override
  State <ImagePage> createState() => _ImageState();
}

class _ImageState extends State<ImagePage> { 
  XFile? image;
   //final picker = ImagePicker();
   
   
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 248, 255, 1),
                  borderRadius: BorderRadius.circular(50)),
              child: const Icon(Icons.android,
                  size: 24, color: Color.fromRGBO(0, 112, 240, 1)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Canal de imagen",
                    style: TextStyle(
                        color: Color.fromRGBO(32, 35, 37, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
                Row(
                  children: [
                    Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(125, 222, 134, 1),
                            borderRadius: BorderRadius.circular(50))),
                    const Text(
                      "Siempre activo",
                      style: TextStyle(
                          color: Color.fromRGBO(114, 119, 122, 1),
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
        body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: () async {
                  final ImagePicker _picker = ImagePicker();
                  final img =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    image = img;
                  });
                },
                label: const Text('Galeria'),
                icon: const Icon(Icons.image),
              ),
              ElevatedButton.icon(
                onPressed: () async {
                  final ImagePicker _picker = ImagePicker();
                  final img = await _picker.pickImage(source: ImageSource.camera);
                  setState(() {
                    image = img;
                  });
                },
                label: const Text('Camara'),
                icon: const Icon(Icons.camera_alt_outlined),
              ),
            ],
          ),
          if (image != null)
            Expanded(
              child: Column(
                children: [
                  Expanded(child: Image.file(File(image!.path))),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        image = null;
                      });
                    },
                    label: const Text('Eliminar'),
                    icon: const Icon(Icons.close),
                  )
                ],
              ),
            )
          else
            const SizedBox(),
        ],
      ),
    );
   
    
    
  }}