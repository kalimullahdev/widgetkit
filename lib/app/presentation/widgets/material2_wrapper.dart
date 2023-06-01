import 'package:flutter/material.dart';

class Material2Wrapper extends StatelessWidget {
  const Material2Wrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(useMaterial3: false),
      child: child,
    );
  }
}
