import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:to_do/application/display_notes_cubit/display_note_inside_pages_cubit/display_note_inside_pages_cubit.dart';
import 'package:to_do/domain/core/radio_name_enum.dart';

/// to give bottom appBar tap
/// a horizontal tabs [today,tomorrow,someDay]
class BottomAppBarTap extends StatelessWidget with PreferredSizeWidget {
  const BottomAppBarTap({required this.controller});
  final TabController controller;
  @override
  Widget build(BuildContext context) {
    // for retrieving the data
    // while the the user swap the pages
    TabController tabController() {
      // controller.index;
      // typedef MyEventHandler=
      context.read<DisplayNoteInsidePagesCubit>().retrieveClickedOrSwapped(
          index: RadioNameEnumX.indexToEnum(
              context: context, index: controller.index));
      return controller;
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      child: TabBar(
        controller: tabController(),
        onTap: (int index) {
          context.read<DisplayNoteInsidePagesCubit>().retrieveClickedOrSwapped(
                index: RadioNameEnumX.indexToEnum(
                  context: context,
                  index: index,
                ),
              );
        },
        tabs: [
          // Today tab
          Tab(
            child: Text(
              AppLocalizations.of(context)!.homeTodayTapTitle,
            ),
          ),
          // Tomorrow tab
          Tab(
            child: Text(
              AppLocalizations.of(context)!.homeTomorrowTapTitle,
            ),
          ),
          // SomeDay tab
          Tab(
            child: Text(
              AppLocalizations.of(context)!.homeSomeDayTapTitle,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(12.h);
}
