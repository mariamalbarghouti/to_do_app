import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do/presentation/core/colors.dart';

/// App Theme
/// includes all the app theme
class AppTheme extends StatelessWidget {
  const AppTheme(this.navigator);
  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return Theme(
      //? to make the theme on the top of the app
      child: navigator,
      data: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          background: const Color(pagesBackgroundColor),
          // error: const Color(fuchsiaColor),
          primary: const Color(accentColor),
          // onBackground: const Color(accentColor),
          // secondary:  const Color(accentColor),
          // surface: const Color(accentColor),
        ),
        // Bottom sheet theme
        bottomSheetTheme: theme.bottomSheetTheme.copyWith(
          backgroundColor: Colors.transparent,
          // bottomSheetTheme: BottomSheetThemeData(backgroundColor: )
          elevation: 4,
        ),
        // appBar theme
        appBarTheme: theme.appBarTheme.copyWith(
          color: const Color(pagesBackgroundColor),
          // appBar title style

          titleTextStyle: TextStyle(
            fontSize: Localizations.localeOf(context).languageCode == 'ar'
                ? 20.sp
                : 25.sp,

            color: const Color(blackColor),
            fontWeight: FontWeight.w800,
            // fontSizeDelta:
            fontFamily: //'patrick',
                Localizations.localeOf(context).languageCode == 'ar'
                    ? 'elmasri'
                    : 'patrick',
          ),
        ),

        // TabBarTheme
        tabBarTheme: theme.tabBarTheme.copyWith(
           
          labelPadding: EdgeInsets.all(1.w),
          
          // Selected label color:
          // also radio
          unselectedLabelColor: const Color(blackColor),
          // Label color
          labelColor: const Color(pagesBackgroundColor),
          // Indicator size
          indicatorSize: TabBarIndicatorSize.tab,
          // Label style
          labelStyle: TextStyle(
            fontFamily: Localizations.localeOf(context).languageCode == 'ar'
                ? 'elmasri'
                : 'patrick',
            color: const Color(whiteColor),
            fontSize: 16.sp,
            fontWeight: FontWeight.w900,
          ),
          // Unselected label style
          unselectedLabelStyle: TextStyle(
            fontFamily: Localizations.localeOf(context).languageCode == 'ar'
                ? 'kufi'
                : 'flower',
            color: const Color(blackColor),
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
          ),
          // Indicator shape
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(1.h),
            color: const Color(accentColor),
          ),
        ),
        // Icon theme
        iconTheme: theme.iconTheme.copyWith(
          color: const Color(fadedGreyColor),
          size: 30.sp,
        ),
        // popupMenuTheme
        popupMenuTheme: theme.popupMenuTheme.copyWith(
          color: const Color(pagesBackgroundColor),
          elevation: 3,

          textStyle: TextStyle(
            color: const Color(accentColor),
            fontFamily: Localizations.localeOf(context).languageCode == 'ar'
                ? 'elmasri'
                : 'patrick',
            fontSize: 15.sp,
            // leadingDistribution:TextLeadingDistribution. ,

            fontWeight: FontWeight.w700,
          ),
        ),

        // Text them
        textTheme: theme.textTheme.copyWith(
          /// bottom sheet title
          headline1: TextStyle(
            fontFamily: Localizations.localeOf(context).languageCode == 'ar'
                ? 'elmasri'
                : 'patrick',
            fontSize: Localizations.localeOf(context).languageCode == 'ar'
                ? 16.sp
                : 20.sp,
            fontWeight: FontWeight.w100,
            color: const Color(blackColor),
          ),

          /// note body
          bodyText1: TextStyle(
            fontSize: 12.sp,
            fontFamily: Localizations.localeOf(context).languageCode == 'ar'
                ? 'elmasri'
                : 'flower',
            decoration: TextDecoration.lineThrough,
            decorationThickness: 2.sp,
            //TODO
            // decorationColor:const Color(fadedGreyLineThoughColr),
            fontWeight: FontWeight.w800,
            color: const Color(fadedGreyLineThoughColor),
          ),
          // done note body
          bodyText2: TextStyle(
            fontSize: 13.sp,
            fontFamily: Localizations.localeOf(context).languageCode == 'ar'
                ? 'elmasri'
                : 'flower',
            fontWeight: FontWeight.w900,
            color: const Color(fadedGreyColor),
          ),
        ),
      ),
    );
  }
}
