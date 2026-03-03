import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: 'https://static.exercisedb.dev/media/6FMU51h.gif',
      placeholder: (context, url) =>
          CircularProgressIndicator(color: buttonColorEnd),
      errorWidget: (context, url, error) => Icon(Icons.error),
      imageBuilder: (context, imageProvider) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.25,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
              ),
            ),
          ),
        );
      },
    );
  }
}
