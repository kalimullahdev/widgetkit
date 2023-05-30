import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetkit/app/application/favourite_bloc/favourite_cubit.dart';
import 'package:widgetkit/app/application/favourite_bloc/favourite_state.dart';

class WidgetViewer extends StatefulWidget {
  const WidgetViewer({
    super.key,
    required this.widget,
    required this.title,
    required this.usageDescription,
    required this.widgetKey,
    this.onVariationPressed,
  });

  final Widget widget;
  final String title;
  final String usageDescription;
  final String widgetKey;
  final void Function()? onVariationPressed;

  @override
  State<WidgetViewer> createState() => _WidgetViewerState();
}

class _WidgetViewerState extends State<WidgetViewer> {
  bool _showUsageDescription = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  BlocBuilder<FavouriteCubit, FavouriteState>(
                    builder: (context, state) {
                      final isFavorite =
                          state.favourite.contains(widget.widgetKey);
                      return IconButton(
                        onPressed: () {
                          final favouriteCubit = context.read<FavouriteCubit>();
                          if (isFavorite) {
                            favouriteCubit
                                .removeFromFavourite(widget.widgetKey);
                          } else {
                            favouriteCubit.addToFavourite(widget.widgetKey);
                          }
                        },
                        icon: Icon(
                          isFavorite
                              ? Icons.heart_broken
                              : FontAwesomeIcons.heart,
                          size: 16,
                        ),
                      );
                    },
                  ),
                  // const _WidgetViewerTextButton(
                  //   text: 'Play',
                  // ),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 4),
                  //   child: _WidgetViewerTextButton(
                  //     text: 'Variations',
                  //   ),
                  // ),
                  _WidgetViewerTextButton(
                    text: 'Use it',
                    isActive: _showUsageDescription,
                    onTap: () {
                      setState(() {
                        _showUsageDescription = !_showUsageDescription;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
          if (_showUsageDescription) ...[
            Text(
              widget.usageDescription,
              style: const TextStyle(
                fontSize: 12,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
          ],
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.black12,
                style: BorderStyle.solid,
              ),
            ),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: widget.widget,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _WidgetViewerTextButton extends StatelessWidget {
  const _WidgetViewerTextButton({
    required this.text,
    this.onTap,
    this.isActive = false,
  });

  final String text;
  final void Function()? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        splashFactory: isActive ? NoSplash.splashFactory : null,
        foregroundColor: Colors.black87,
        backgroundColor: isActive ? Colors.black12 : null,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(text),
    );
  }
}
