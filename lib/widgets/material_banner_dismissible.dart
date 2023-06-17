import 'package:flutter/material.dart';

class MaterialBannerDismissible extends StatelessWidget {
  const MaterialBannerDismissible({super.key});

  MaterialBanner _showMaterialBanner(BuildContext context) {
    return MaterialBanner(
      leading: const Icon(Icons.info),
      content: const Text('You may see banner of material 3 design. If so happen make sure to view this widget in full screen'),
      actions: [
        TextButton(
          onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
          child: const Text('Got it'),
        ),
        TextButton(
          onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
          child: const Text('Cancel'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Banner"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..removeCurrentMaterialBanner()
                ..showMaterialBanner(_showMaterialBanner(context));
            },
            child: const Text('Show Banner'),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
