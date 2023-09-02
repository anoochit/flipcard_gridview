import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlipItem extends StatelessWidget {
  FlipItem({super.key, required this.frontWidget, this.backWidget});

  final Widget frontWidget;
  final Widget? backWidget;

  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    if (backWidget == null) {
      return frontWidget;
    } else {
      return FlipCard(
        key: cardKey,
        side: CardSide.FRONT,
        flipOnTouch: false,
        front: Stack(
          children: [
            frontWidget,
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () => cardKey.currentState!.toggleCard(),
                icon: Icon(
                  Icons.info,
                  color: Colors.grey.shade600,
                ),
              ),
            )
          ],
        ),
        back: Stack(
          children: [
            backWidget!,
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () => cardKey.currentState!.toggleCard(),
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
