import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_cubit.dart';
import 'package:widgetkit/app/application/favourite_cubit/favourite_state.dart';
import 'package:widgetkit/app/application/theme_cubit/theme_cubit.dart';
import 'package:widgetkit/app/core/constants/app_colors.dart';
import 'package:widgetkit/app/core/constants/app_svgs.dart';
import 'package:widgetkit/app/core/extensions/e_buildcontext.dart';
import 'package:widgetkit/app/core/routing/app_routes_name.dart';
import 'package:widgetkit/app/core/routing/nav.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer.dart';
import 'package:widgetkit/app/domain/data_classes/widget_viewer_with_variation.dart';
import 'package:widgetkit/app/presentation/data/widget_keys.dart';
import 'package:widgetkit/app/presentation/dialogs/remove_from_favorite.dart';
import 'package:widgetkit/app/presentation/pages/full_screen_viewer/material2_full_screen_viewer.dart';
import 'package:widgetkit/app/presentation/widgets/material2_wrapper.dart';

class WidgetViewer extends StatefulWidget {
  factory WidgetViewer.material({
    required WidgetViewerDataClass widgetViewerDataClass,
  }) {
    return WidgetViewer._(
      title: widgetViewerDataClass.title,
      widgetFileName: widgetViewerDataClass.widgetFileName,
      widget: Material2Wrapper(child: widgetViewerDataClass.widget),
      widgetKey: widgetViewerDataClass.widgetKey,
      widgetName: widgetViewerDataClass.widgetName ?? widgetViewerDataClass.widget.toString(),
      widgetVariationPage: (widgetViewerDataClass is WidgetViewerWithVariationDataClass) ? widgetViewerDataClass.variationPage : null,
      expandWidgetPage: widgetViewerDataClass.expandWidgetPage,
      playWidgetPage: widgetViewerDataClass.playWidgetPage,
      assetPath: widgetViewerDataClass.assetPath,
      isScaffoldWidget: widgetViewerDataClass.isScaffoldWidget ?? false,
    );
  }

  factory WidgetViewer.material3({required WidgetViewerDataClass widgetViewerDataClass}) {
    return WidgetViewer._(
      title: widgetViewerDataClass.title,
      widgetFileName: widgetViewerDataClass.widgetFileName,
      widget: widgetViewerDataClass.widget,
      widgetKey: widgetViewerDataClass.widgetKey,
      widgetName: widgetViewerDataClass.widgetName ?? widgetViewerDataClass.widget.toString(),
      expandWidgetPage: widgetViewerDataClass.expandWidgetPage,
      playWidgetPage: widgetViewerDataClass.playWidgetPage,
      assetPath: widgetViewerDataClass.assetPath,
      isScaffoldWidget: widgetViewerDataClass.isScaffoldWidget ?? false,
    );
  }
  const WidgetViewer._({
    required this.widget,
    required this.title,
    required this.widgetFileName,
    required this.widgetKey,
    required this.widgetName,
    required this.isScaffoldWidget,
    this.widgetVariationPage,
    this.expandWidgetPage,
    this.playWidgetPage,
    this.assetPath,
  });

  final String title;
  final Widget widget;
  final String widgetName;
  final String widgetFileName;
  final String widgetKey;
  final Widget? widgetVariationPage;
  final Widget? expandWidgetPage;
  final Widget? playWidgetPage;
  final String? assetPath;
  final bool isScaffoldWidget;

  @override
  State<WidgetViewer> createState() => _WidgetViewerState();
}

class _WidgetViewerState extends State<WidgetViewer> {
  bool _showUsageDescription = false;

  @override
  Widget build(BuildContext context) {
    final String? widgetDesignSystem = widget.widgetKey.contains(WidgetKeys.material)
        ? "Material"
        : widget.widgetKey.contains(WidgetKeys.cupertino)
            ? "Cupertino"
            : null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Card(
        elevation: 0.6,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0, top: 4, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title, // character limit is 30
                      overflow: TextOverflow.ellipsis,
                      style: context.themeData.textTheme.titleMedium,
                    ),
                    (widgetDesignSystem == null)
                        ? const _VerticleDivider()
                        : Row(
                            children: [
                              const _VerticleDivider(),
                              const SizedBox(width: 8),
                              Text(
                                widgetDesignSystem,
                                style: context.themeData.textTheme.bodySmall,
                              ),
                            ],
                          )
                  ],
                ),
              ),
              BlocBuilder<ThemeCubit, bool>(
                builder: (context, isDarkTheme) {
                  return Container(
                    decoration: BoxDecoration(
                      color: widget.isScaffoldWidget
                          ? null
                          : isDarkTheme
                              ? AppColors.material2ScaffoldDark
                              : AppColors.material2ScaffoldLight,
                      border: Border.all(color: isDarkTheme ? Colors.white10 : Colors.black12),
                    ),
                    margin: widget.isScaffoldWidget ? const EdgeInsets.only(top: 6, bottom: 4) : EdgeInsets.zero,
                    padding: widget.isScaffoldWidget ? EdgeInsets.zero : const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
                    child: widget.assetPath != null
                        ? Image.asset(widget.assetPath!)
                        : Center(
                            child: SizedBox(
                              height: widget.isScaffoldWidget ? context.screenSize.height * .68 : null,
                              child: widget.widget,
                            ),
                          ),
                  );
                },
              ),
              //TODO: todo for below commented code
              // const _Divider(),
              // widget.assetPath != null
              //     ? Image.asset(widget.assetPath!)
              //     : Padding(
              //         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
              //         child: Center(
              //           child: SizedBox(
              //             height: widget.isScaffoldWidget ? context.screenSize.height * .68 : null,
              //             child: widget.widget,
              //           ),
              //         ),
              //       ),
              // const _Divider(),
              if (_showUsageDescription)
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 2),
                  child: RichText(
                    text: TextSpan(
                      style: context.themeData.textTheme.bodySmall?.copyWith(),
                      children: [
                        TextSpan(
                          text: """ To use ${widget.title},
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
                          text: " file\n   * And copy ",
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
                ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
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
                              final removeFromFavorite = await removeFromFavoriteDialog(context, widget.title) ?? false;

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
                  IconButton(
                    onPressed: _viewOnNextScreen,
                    icon: Icon(
                      Icons.expand_rounded,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  if (widget.widgetVariationPage != null)
                    IconButton(
                      onPressed: () => Nav.push(context, widget.widgetVariationPage!),
                      icon: SvgPicture.asset(
                        AppSvgs.variations,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                          context.themeData.colorScheme.onBackground,
                          BlendMode.srcATop,
                        ),
                      ),
                    ),
                  // if (widget.playWidgetPage != null)
                  //   IconButton(
                  //     onPressed: () => Nav.push(context, widget.playWidgetPage!),
                  //     icon: Icon(
                  //       Icons.play_circle_outline_rounded,
                  //       color: Theme.of(context).colorScheme.onBackground,
                  //     ),
                  //   ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _viewOnNextScreen() {
    Nav.push(
      context,
      widget.expandWidgetPage ?? Material2FullScreenViewerPage(widget: widget.widget),
    );
  }
}

class _VerticleDivider extends StatelessWidget {
  const _VerticleDivider();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: VerticalDivider(
        color: context.themeData.dividerColor.withOpacity(.2),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, isDarkTheme) {
        return Divider(
          color: context.themeData.dividerColor.withOpacity(isDarkTheme ? .09 : 0.15),
        );
      },
    );
  }
}

class _WidgetViewerTextButton extends StatelessWidget {
  const _WidgetViewerTextButton({
    required this.text,
    this.onTap,
    required this.isActive,
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
//
//
