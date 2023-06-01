import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_cubit.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_state.dart';
import 'package:widgetkit/app/core/constants/app_svgs.dart';
import 'package:widgetkit/app/core/extensions/e_buildcontext.dart';
import 'package:widgetkit/app/core/routing/app_routes_name.dart';
import 'package:widgetkit/app/domain/data_classes/widget_view_data.dart';
import 'package:widgetkit/app/presentation/widgets/material2_wrapper.dart';

class WidgetViewer extends StatefulWidget {
  factory WidgetViewer.material({required WidgetViewerData widgetViewerData}) {
    return WidgetViewer._(
      title: widgetViewerData.title,
      widgetFileName: widgetViewerData.widgetFileName,
      widget: Material2Wrapper(child: widgetViewerData.widget),
      widgetKey: widgetViewerData.widgetKey,
      widgetName: widgetViewerData.widget.toString(),
      onVariationPressed: widgetViewerData.onVariationPressed,
      onExpandPressed: widgetViewerData.onExpandPressed,
      onPlayPressed: widgetViewerData.onPlayPressed,
    );
  }

  factory WidgetViewer.material3({required WidgetViewerData widgetViewerData}) {
    return WidgetViewer._(
      title: widgetViewerData.title,
      widgetFileName: widgetViewerData.widgetFileName,
      widget: widgetViewerData.widget,
      widgetKey: widgetViewerData.widgetKey,
      widgetName: widgetViewerData.widget.toString(),
      onVariationPressed: widgetViewerData.onVariationPressed,
      onExpandPressed: widgetViewerData.onExpandPressed,
      onPlayPressed: widgetViewerData.onPlayPressed,
    );
  }
  const WidgetViewer._({
    required this.widget,
    required this.title,
    required this.widgetFileName,
    required this.widgetKey,
    required this.widgetName,
    this.onVariationPressed,
    this.onPlayPressed,
    this.onExpandPressed,
  });

  final String title;
  final Widget widget;
  final String widgetName;
  final String widgetFileName;
  final String widgetKey;
  final void Function()? onVariationPressed;
  final void Function()? onPlayPressed;
  final void Function()? onExpandPressed;

  @override
  State<WidgetViewer> createState() => _WidgetViewerState();
}

class _WidgetViewerState extends State<WidgetViewer> {
  bool _showUsageDescription = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Card(
        elevation: 0.5,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16, top: 4, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: SizedBox(
                      child: Text(
                        widget.title, // character limit is 30
                        overflow: TextOverflow.ellipsis,
                        style: context.themeData.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      if (widget.onPlayPressed != null)
                        IconButton(
                          onPressed: widget.onPlayPressed,
                          icon: Icon(
                            Icons.play_circle_outline_rounded,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      if (widget.onVariationPressed != null)
                        IconButton(
                          onPressed: widget.onVariationPressed,
                          icon: SvgPicture.asset(
                            AppSvgs.variations,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                              context.themeData.colorScheme.onBackground,
                              BlendMode.srcATop,
                            ),
                          ),
                        ),
                      if (widget.onExpandPressed != null)
                        IconButton(
                          onPressed: widget.onExpandPressed,
                          icon: Icon(
                            Icons.expand_rounded,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      BlocBuilder<FavouriteCubit, FavouriteState>(
                        builder: (context, favouriteState) {
                          final isWidgetFavorited = favouriteState.favourites.contains(widget.widgetKey);
                          return IconButton(
                            onPressed: () async {
                              final favouriteCubit = context.read<FavouriteCubit>();

                              if (isWidgetFavorited) {
                                final currentPageName = ModalRoute.of(context)?.settings.name;
                                final isFavoritePage = currentPageName != null && currentPageName == AppRouteNames.favoriteRoute;

                                if (isFavoritePage) {
                                  final removeFromFavorite = await _removeFromFavoriteDialog(context, widget.title) ?? false;

                                  if (removeFromFavorite) {
                                    favouriteCubit.removeFromFavourite(widget.widgetKey);
                                  }
                                } else {
                                  favouriteCubit.removeFromFavourite(widget.widgetKey);
                                }
                              } else {
                                favouriteCubit.addToFavourite(widget.widgetKey);
                              }
                            },
                            icon: Icon(
                              isWidgetFavorited ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
                              size: 18,
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: 50,
                        height: 34,
                        child: _WidgetViewerTextButton(
                          text: "USE",
                          isActive: _showUsageDescription,
                          onTap: () {
                            setState(() {
                              _showUsageDescription = !_showUsageDescription;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
              if (_showUsageDescription) ...[
                //TODO: improve line heigh, if requried
                RichText(
                  text: TextSpan(
                    style: context.themeData.textTheme.bodySmall?.copyWith(),
                    children: [
                      TextSpan(
                        text: """To use ${widget.title},
  * In widgetkit flutter project 
  * Go to lib > widgets > """,
                      ),
                      TextSpan(
                        text: widget.widgetFileName,
                        style: context.themeData.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(
                        text: " file\n  * And copy ",
                      ),
                      TextSpan(
                        text: widget.widgetName,
                        style: context.themeData.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(
                        text: " widget",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
              ],
              Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(8),
                //   border: Border.all(
                //     color: context.watch<ThemeCubit>().state
                //         ? const Color.fromARGB(6, 255, 255, 255)
                //         : Colors.black12,
                //     style: BorderStyle.solid,
                //   ),
                // ),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 0), //TODO: think give padding 0, 4 or 8
                child: widget.widget,
              ),
              // const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool?> _removeFromFavoriteDialog(
    BuildContext context,
    String widgetName,
  ) {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: Text('You want to remove $widgetName widget from your favourite widgets'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Yes'),
          ),
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
        padding: EdgeInsets.zero,
        splashFactory: isActive ? NoSplash.splashFactory : null,
        foregroundColor: context.themeData.colorScheme.onBackground,
        backgroundColor: isActive ? context.themeData.hoverColor : null,
        textStyle: Theme.of(context).textTheme.titleSmall,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(text),
    );
  }
}
