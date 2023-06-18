import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// This widget is using [url_launcher] package
/// Make sure to add it to your [pubspec.yaml] file
///* Read the documenatation, to do its configuration for different platforms, if required.
/// Here is its documetation [https://pub.dev/packages/url_launcher]

class MaterialCheckboxLink extends StatefulWidget {
  const MaterialCheckboxLink({super.key});

  @override
  State<MaterialCheckboxLink> createState() => _MaterialCheckboxLinkState();
}

class _MaterialCheckboxLinkState extends State<MaterialCheckboxLink> {
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: agreeToTerms,
          onChanged: (value) {
            setState(() {
              agreeToTerms = value ?? false;
            });
          },
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'I agree to the ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: 'terms and conditions',
                style: const TextStyle(
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    await launchUrl(Uri.parse("https://www.google.com/"));
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
