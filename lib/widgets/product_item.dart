import 'package:flutter/material.dart';

import 'package:flipcard/models/product.dart';
import 'package:flipcard/widgets/flip_item.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return FlipItem(
      frontWidget: buildFrontItem(
        context: context,
        title: product.title,
        image: product.image,
        price: product.price,
      ),
      backWidget: (product.save == null)
          ? null
          : buildBackItem(
              context: context,
              save: product.save!,
            ),
    );
  }

  Widget buildBackItem({required double save, required BuildContext context}) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Save',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.white),
            ),
            Text(
              '฿$save',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFrontItem(
      {required String title,
      required String image,
      required double price,
      required BuildContext context}) {
    return Card(
      surfaceTintColor: Colors.white,
      child: GridTile(
        footer: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                maxLines: 2,
              ),
              Text('฿${product.price}'),
            ],
          ),
        ),
        child: Image.network(
          product.image,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
