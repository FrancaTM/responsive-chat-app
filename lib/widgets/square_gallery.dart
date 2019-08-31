import 'package:flutter/material.dart';

import 'package:responsive_chat_app/widgets/avatar_image_view.dart';

class SquareGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return AvatarImageView(
          name: '$index',
          photoUrl: '',
        );
      },
    );
  }
}
