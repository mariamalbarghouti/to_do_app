import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do/presentation/core/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
/// contains [Inner shadow,upper line,the title]
class BottomSheetTitle extends StatelessWidget {
  const BottomSheetTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Inner shadow
    return Container(
      height: 10.h,
      decoration: BoxDecoration(
        color: const Color(pagesBackgroundColor),
        boxShadow: [
          BoxShadow(
            color: const Color(shadowColor),
            spreadRadius: 0.3.w,
            blurRadius: 2.w,
          ),
        ],
      ),
      // contains the title
      child: Column(
        children: [
          // upper line
          Container(
            width: 15.w,
            height: 1.5.w,
            margin: EdgeInsets.only(top: 2.h),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
              color: Color(greyColor),
            ),
          ),
          // bottom sheet title
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w),
              child: Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Text(
                  AppLocalizations.of(context)!.addNewNote,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
