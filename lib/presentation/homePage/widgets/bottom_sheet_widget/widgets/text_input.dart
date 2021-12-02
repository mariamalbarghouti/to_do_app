import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do/application/note_form_bottom_sheet_cubit/note_form_cubit.dart';
import 'package:to_do/domain/note/note_value_objects/note_content_value_object.dart';
import 'package:to_do/presentation/core/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//TODO: do f
//todo make the previous data shown
//todo i need to make text error shown on
//todo save button clicked if it is empty
//todo and also i need to make it red once the reopened dialog
//todo open if it is were empty

/// TextInput
class TextInput extends StatelessWidget {
  const TextInput();
  @override
  Widget build(BuildContext context) {
    print("\n build TextInput\n");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: BlocSelector<NoteFormCubit, NoteFormState, NoteContent>(
        selector: (state) {
          print("\n textInput ${state.noteContent.value}\n");
          return state.noteContent;//.getValueOrElse("dflt selector");
        },
        builder: (context, state) {
          return TextFormField(
            cursorColor: const Color(accentColor),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.multiline,
            minLines: 1,
            //TODO make db 150 char
            maxLength: 150,
            autofocus: true,
            maxLines: 5,
            initialValue:BlocProvider.of<NoteFormCubit>(context).state.noteContent.getValueOrElse(""),
            style: Theme.of(context).textTheme.bodyText2,
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context)!.noteTextTips,
            ),
            // input text stores inside the state
            onChanged: (String value) =>
                context.read<NoteFormCubit>().textInputNote(textNote: value),
                
            validator: (String? validator) =>
                BlocProvider.of<NoteFormCubit>(context)
                    .state
                    .noteContent
                    .value
                    .fold(
                      (l) => l.msg,
                      (r) => null,
                    ),
          );
        },
      ),
    );
  }
}
