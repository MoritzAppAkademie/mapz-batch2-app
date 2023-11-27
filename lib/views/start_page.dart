import 'package:flutter/material.dart';
import 'package:mapz/widgets.dart';
import 'package:mapz/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(distanceM),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "Statistics",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 50,
                        child: Image(image: AssetImage("assets/logo.png"))),
                  ],
                )
              ],
            ),

            const SizedBox(height: distanceM),
            // Status Boxen
            Row(
              children: [
                statusBox(context, "123", "Commits", Icons.stacked_bar_chart),
                const SizedBox(width: distanceS),
                statusBox(context, "455", "Lines Code", Icons.code),
              ],
            ),
            const SizedBox(height: distanceM),

            const SizedBox(
                height: 150,
                child: Image(
                    image: CachedNetworkImageProvider(
                        'https://via.placeholder.com/350x150'))),
            const SizedBox(height: distanceL),
            const Text(
              "New Activities",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const ListItemBuilder(itemCount: 20),
          ],
        ),
      ),
    );
  }
}
