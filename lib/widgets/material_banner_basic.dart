import 'package:flutter/material.dart';

class MaterialBannerBasic extends StatelessWidget {
  const MaterialBannerBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banner'),
      ),
      body: MaterialBanner(
        content: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lorem nulla, faucibus eget posuere at'),
        leading: const CircleAvatar(child: Icon(Icons.delete)),
        actions: [
          TextButton(
            child: const Text('Agree'),
            onPressed: () {},
          ),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
