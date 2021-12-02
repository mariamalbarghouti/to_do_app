import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do/application/display_notes_cubit/display_note_inside_pages_cubit/display_note_inside_pages_cubit.dart';
import 'package:to_do/application/note_form_bottom_sheet_cubit/note_form_cubit.dart';
import 'package:to_do/domain/core/radio_name_enum.dart';
import 'package:to_do/domain/note/note.dart';
import 'package:to_do/presentation/core/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//TODO-->
//todo: create loading bar in the initial state
//todo: also for pagination
//Display Notes in all places
class DisplayNotesPages extends StatefulWidget {
  const DisplayNotesPages();
  @override
  _DisplayNotesPagesState createState() => _DisplayNotesPagesState();
}

class _DisplayNotesPagesState extends State<DisplayNotesPages> {
  //{required this.controller}
  // final TabController controller;

  @override
  Widget build(BuildContext context) {
    //TODO: Selector instead of builder
    return BlocBuilder<DisplayNoteInsidePagesCubit,
        DisplayNoteInsidePagesState>(
      builder: (context, state) {
        return Column(
          children: [
            // count out of
            // finished notes
            Container(
              margin: EdgeInsets.only(bottom: 1.h, right: 1.w),
              child: Align(
                alignment: Alignment.bottomRight,
                child:
                    //TODO
                    //todo: loading before null
                    Text(
                  state.getCountDoneNoteOutOfAllNotes,
                  style: const TextStyle(
                    color: Color(accentColor),
                    fontFamily: 'flower',
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            // List of note
            Expanded(
              child: ReorderableListView(
                // padding: const EdgeInsets.symmetric(horizontal: 40),
                children: List.generate(
                  state.notes.length,
                  (index) => Column(
                    key: Key("$index"),
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: const Color(whiteColor),
                            fillColor: MaterialStateProperty.resolveWith(
                                (states) => getColor(states)),
                            value: BlocProvider.of<DisplayNoteInsidePagesCubit>(
                                    context)
                                .state
                                .notes[index]
                                .isDone,
                            shape: const CircleBorder(),
                            //TODO: toggle with animation
                            onChanged: (bool? value) async => context
                                .read<DisplayNoteInsidePagesCubit>()
                                .updateCheckBoxValue(
                                  value: value!,
                                  id: state.notes[index].id!,
                                ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => context
                                  .read<DisplayNoteInsidePagesCubit>()
                                  .retrieveClickedOrSwapped(
                                      index: state.indexOfTap),
                              child: Text(
                                //TODO: fold failure instead of l
                                state.notes[index].content.value
                                    .fold((l) => l.msg, (r) => r),
                                textAlign: TextAlign.justify,
                                style: state.notes[index].isDone
                                    ? Theme.of(context).textTheme.bodyText1
                                    : Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          ),
                          // theme of the text style of the dropper
                          Theme(
                            data: Theme.of(context).copyWith(
                              popupMenuTheme:
                                  PopupMenuTheme.of(context).copyWith(
                                textStyle: PopupMenuTheme.of(context)
                                    .textStyle!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                    ),
                              ),
                            ),
                            // the actor menu for [delete,move,update]
                            child: PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  // update
                                  child: Center(
                                    child: Text(
                                        AppLocalizations.of(context)!.update),
                                  ),
                                  onTap: () {
                                    // transfer the data
                                    // open the bottom sheet
                                    BlocProvider.of<NoteFormCubit>(context)
                                        .updateNoteMenuClicked(
                                            note: state.notes[index]);
                                  },
                                ),
                                // move to
                                PopupMenuItem(
                                  child: Center(
                                    child: Text(
                                      state.indexOfTap
                                          .convertIndexToListOFNextMoveToTaskString(
                                        context: context,
                                        index: state.indexOfTap.index,
                                      )[0],
                                    ),
                                  ),
                                  onTap: () => context
                                      .read<DisplayNoteInsidePagesCubit>()
                                      .updateScheduledDateFromDropMenuClicked(
                                        id: state.notes[index].id!,
                                        scheduledDayIndex: state.indexOfTap
                                            .mapIndexToListOFNextMoveToTaskDayIdex(
                                                context: context,
                                                index:
                                                    state.indexOfTap.index)[0],
                                      ),
                                ),
                                // move to
                                PopupMenuItem(
                                  child: Center(
                                    child: Text(
                                      state.indexOfTap
                                          .convertIndexToListOFNextMoveToTaskString(
                                        context: context,
                                        index: state.indexOfTap.index,
                                      )[1],
                                    ),
                                  ),
                                  onTap: () => context
                                      .read<DisplayNoteInsidePagesCubit>()
                                      .updateScheduledDateFromDropMenuClicked(
                                        id: state.notes[index].id!,
                                        scheduledDayIndex: state.indexOfTap
                                            .mapIndexToListOFNextMoveToTaskDayIdex(
                                                context: context,
                                                index:
                                                    state.indexOfTap.index)[1],
                                      ),
                                ),
                                // delete
                                PopupMenuItem(
                                  child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.delete,
                                    ),
                                  ),
                                  onTap: () => context
                                      .read<DisplayNoteInsidePagesCubit>()
                                      .deleteFromDropMenuClicked(
                                          id: state.notes[index].id!),
                                ),
                              ],
                              icon: const Icon(
                                Icons.more_vert,
                                color: Color(accentColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Divider(
                        color:const Color(fadedGreyDividerColor),
                        thickness: 0.1.h,
                        height: 0.0,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                    ],
                  ),
                ),
                onReorder: (int oldIndex, int newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final Note item = state.notes.removeAt(oldIndex);
                    state.notes.insert(newIndex, item);
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }

  /// according to the state
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = {
      MaterialState.selected,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color(accentColor);
    }
    return const Color(fadedGreyColor);
  }
}
