import 'package:deshi_mart/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = ResponsivePage.isDesktop(context);
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 10,
          ),
          if (!isDesktop)
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)),
          if (isDesktop) const Spacer(),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search text ...",
                filled: true,
                fillColor: Theme.of(context).colorScheme.onPrimary,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 60),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
          ),
          const SizedBox(width: 60),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .colorScheme
                  .primaryContainer
                  .withOpacity(.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  child: Text(
                    "N",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Salim Shaikh",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
