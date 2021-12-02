import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do/domain/core/radio_name_enum.dart';
import 'package:to_do/presentation/core/colors.dart';
import 'package:to_do/presentation/homePage/widgets/bottom_sheet_widget/widgets/radio_group.dart';
import 'package:to_do/presentation/homePage/widgets/bottom_sheet_widget/widgets/text_input.dart';
import 'package:to_do/presentation/homePage/widgets/bottom_sheet_widget/widgets/bottom_sheet_title.dart';

// For adding new note
class AddNewNoteBottomSheet extends StatelessWidget {
  const AddNewNoteBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
      // Creating container
      // outer shadow shape
      height: 70.h,
      width: double.infinity,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: const Color(pagesBackgroundColor),
        boxShadow: const [BoxShadow(color: Color(pagesBackgroundColor))],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(6.w),
          topLeft: Radius.circular(6.w),
        ),
      ),
      // Contains all
      // bottom sheet components
      child: Column(
        children: [
          // the bottom sheet title
          const BottomSheetTitle(),
          // bottom sheet body
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: const [
                    // text input
                    TextInput(),
                    // Today Radio
                    RadioGroup(radioId: RadioNameEnum.today),
                    // Tomorrow Radio
                    RadioGroup(radioId: RadioNameEnum.tomorrow),
                    // Some Day Radio
                    RadioGroup(radioId: RadioNameEnum.someDay),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
