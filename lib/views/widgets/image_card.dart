import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;
  final String text;
  final double height;
  final double width;

  const ImageCard({@required this.image, this.text, this.height, this.width})
      : assert(image != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width:
              width != null ? width : MediaQuery.of(context).size.width / 2.3,
          height: height != null ? height : 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/$image.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                // colorFilter: ColorFilter.mode(
                //     Colors.black.withOpacity(0.2), BlendMode.darken),
              ),
              borderRadius: BorderRadius.circular(10)),
          child: (text != null)
              ? Stack(
                  children: [
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          text,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                )
              : Container(),
        ),
      ),
    );
  }
}
