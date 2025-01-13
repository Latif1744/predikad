import 'package:flutter/material.dart';

// Widget untuk icon menu
class MenuIconWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool hasNotification;

  const MenuIconWidget({
    required this.title,
    required this.imageUrl,
    this.hasNotification = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBE6),
        border: Border.all(width: 1, color: const Color(0xFFE0CECE)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Icon image
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Title text
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 70), // Memberi ruang antara ikon dan teks
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          // Notification dot if needed
          if (hasNotification)
            Positioned(
              right: -5,
              top: -5,
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF0707),
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
