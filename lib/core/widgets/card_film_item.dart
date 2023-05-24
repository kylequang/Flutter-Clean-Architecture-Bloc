import 'package:flutter/material.dart';
import '../constants/end_point.dart';

class CartFilmItem extends StatelessWidget {
  final String titleFilm;
  final String? pathImage;
  final VoidCallback onPressed;
  const CartFilmItem(
      {super.key,
      required this.titleFilm,
      required this.pathImage,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: pathImage != ""
                    ? DecorationImage(
                        image: NetworkImage(
                            "${APIConstants.baseUrlImage}$pathImage"),
                        fit: BoxFit.cover,
                      )
                    : const DecorationImage(
                        image:
                            AssetImage("assets/images/default_path_image.png"),
                        fit: BoxFit.cover,
                      ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.orange,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SizedBox(
                width: 150,
                child: Text(
                  titleFilm,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
