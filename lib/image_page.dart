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
<<<<<<< HEAD
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
=======
    return Scaffold(
        body: Container(
            color: const Color.fromRGBO(254, 254, 254, 1),
            padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("IMAGE IMAGE IMAGE",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(48, 52, 55, 1))),
                SizedBox(
                  height: 16,
                ),
                Text("Resumen",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(64, 68, 70, 1))),
                SizedBox(
                  height: 16,
>>>>>>> 56bb76930862e5edc4cf82f1656fd8acd69fa6cc
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