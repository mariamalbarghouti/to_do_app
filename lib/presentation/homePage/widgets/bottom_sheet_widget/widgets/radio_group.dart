import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:to_do/application/note_form_bottom_sheet_cubit/note_form_cubit.dart';
import 'package:to_do/domain/core/radio_name_enum.dart';

/// RadioTileGroup contains [today,tomorrow,someDay]
class RadioGroup extends StatelessWidget {
  const RadioGroup({required this.radioId});
  final RadioNameEnum radioId;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        radioId.indexToString(context: context),
        style: Theme.of(context).tabBarTheme.unselectedLabelStyle,
      ),
      // contentPadding: const EdgeInsets.all(0),
      autofocus: true,
      leading: BlocSelector<NoteFormCubit, NoteFormState, int>(
        selector: (state) => state.scheduleDayRadioIndex,
        builder: (context, state) {
          return Radio<int>(
            value: radioId.index,
            //get group value
            groupValue: state,
            // tell bloc i click you
            onChanged: (value) =>
                context.read<NoteFormCubit>().radioGroupValue(value: value!),
          );
        },
      ),
    );
  }
}
