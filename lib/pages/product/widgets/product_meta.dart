import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ProductMeta extends StatelessWidget {
  const ProductMeta({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 218, 218, 218)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.info),
                    Text("Product Meta"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Text(
                  "Product Images",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                DottedBorder(
                  radius: const Radius.circular(10),
                  color: Colors.grey,
                  strokeWidth: 1,
                  dashPattern: const [5, 7],
                  child: SizedBox(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.cloud_upload_outlined),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Click here to upload images.",
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
