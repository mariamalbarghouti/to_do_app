import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do/application/display_notes_cubit/display_note_inside_pages_cubit/display_note_inside_pages_cubit.dart';
import 'package:to_do/application/note_form_bottom_sheet_cubit/note_form_cubit.dart';
import 'package:to_do/domain/core/bottom_sheet_state_enum.dart';
import 'package:to_do/presentation/core/colors.dart';
import 'package:to_do/presentation/homePage/widgets/bottom_sheet_widget/add_new_note_bottom_sheet.dart';

/// Home Floating Action Button
class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NoteFormCubit, NoteFormState>(
          listener: (context, state) {
            // if the bottom sheet button state is openToUpdate or openToCreateNewNote
            // just open it
            if (state.bottomState == BottomSheetButtonState.openToUpdate ||
                state.bottomState ==
                    BottomSheetButtonState.openToCreateNewNote) {
              scaffoldKey.currentState!
                  .showBottomSheet((context) => const AddNewNoteBottomSheet())
                  .closed
                  .then(
                    // make it not open for the
                    // next time
                    // so close it "init state"
                    (_) async => context
                        .read<NoteFormCubit>()
                        .openOrCloseBottomSheet(
                            openOrCloseButton:
                                BottomSheetButtonState.initState),
                  );
            }
            // if the data is saved or updated 
            // auto-close the bottom sheet 
            if (state.validToBeSavedToDB) {
              Navigator.pop(context);
            }
          },
          // double face button
          builder: (context, state) {
            // chape of the button
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 11.h,
              width: 10.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(1.w)),
                color: const Color(accentColor),
              ),
              // contains button function && icon
              child: InkResponse(
                highlightColor: const Color(greyColor),
                splashColor: const Color(greyColor),
                onTap: () async {
                  // if the state of home is initial
                  // open the bottom sheet
                  if (state.bottomState == BottomSheetButtonState.initState) {
                    context.read<NoteFormCubit>().openOrCloseBottomSheet(
                          openOrCloseButton:
                              BottomSheetButtonState.openToCreateNewNote,
                        );
                    // for save the not or update it
                  } else if (state.isUpdateState || !state.isUpdateState) {
                    // save or delete
                    context.read<NoteFormCubit>().saveOrUpdate();
                    // update the data
                    context.read<DisplayNoteInsidePagesCubit>().retrieveClickedOrSwapped(index: context.read<DisplayNoteInsidePagesCubit>().state.indexOfTap);
                  }
                },
                  // if the button clicked to create or is updating TextInput
                  // or radioButton the button's icon will be save else add
                child: Icon(
                  (state.bottomState == BottomSheetButtonState.isEditing ||
                          state.bottomState ==
                              BottomSheetButtonState.openToCreateNewNote)
                      ? Icons.save
                      : Icons.add,
                  color: const Color(whiteColor),
                  size: 9.h,
                ),
              ),
            );
          },
        );
  }
}