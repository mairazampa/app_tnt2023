import 'package:app_demo/home_banner_rectangle.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: const Color.fromRGBO(254, 254, 254, 1),
            padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("IMAGE IMAGE IMAGE",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(48, 52, 55, 1))),
                const SizedBox(
                  height: 16,
                ),
                const Text("Resumen",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(64, 68, 70, 1))),
                const SizedBox(
                  height: 16,
                )
              ],
            )));
  }
}
