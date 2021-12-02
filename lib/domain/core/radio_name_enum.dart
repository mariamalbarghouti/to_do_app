import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// for index of radio and scheduling bar
enum RadioNameEnum { today, tomorrow, someDay }

extension RadioNameEnumX on RadioNameEnum {
  /// for converting index of RadioNameEnum
  /// into localization name value
  String indexToString({required context}) {
    switch (index) {
      // RadioNameEnum.tomorrow
      case 1:
          return AppLocalizations.of(context)!.homeTomorrowTapTitle;
      // RadioNameEnum.someDay
      case 2:
        return AppLocalizations.of(context)!.homeSomeDayTapTitle;
      // RadioNameEnum.today
      default:
        return AppLocalizations.of(context)!.homeTodayTapTitle;
    }
  }

  /// for retrieving the next two scheduling days
  /// according to where i am scheduling the current data
  List<String> convertIndexToListOFNextMoveToTaskString({
    required context,
    required int index,
  }) {
    switch (index) {
      // RadioNameEnum.tomorrow
      case 1:
        return [
          AppLocalizations.of(context)!.moveToTodayTasks,
          AppLocalizations.of(context)!.moveToSomeDayTasks
        ];
      // RadioNameEnum.someDay
      case 2:
        return [
          AppLocalizations.of(context)!.moveToTodayTasks,
          AppLocalizations.of(context)!.moveTomorrowTasks
        ];
      // RadioNameEnum.today
      default:
        return [
          AppLocalizations.of(context)!.moveTomorrowTasks,
          AppLocalizations.of(context)!.moveToSomeDayTasks
        ];
    }
  }

  /// for retrieving the next two scheduling days
  /// according to where i am scheduling the current data
  List<int> mapIndexToListOFNextMoveToTaskDayIdex({
    required context,
    required int index,
  }) {
    switch (index) {
      // RadioNameEnum.tomorrow
      case 1:
        // return [today, someDay]
        return [0, 2];
      // RadioNameEnum.someDay
      case 2:
        // return[today,tomorrow]
        return [0, 1];
      // RadioNameEnum.today
      default:
        // return [tomorrow, someDay]
        return [1, 2];
    }
  }

  /// TOConvert index to RadioNameEnum
  static RadioNameEnum indexToEnum({required context, required index}) {
    switch (index) {
      // RadioNameEnum.tomorrow
      case 1:
        return RadioNameEnum.tomorrow;
      // RadioNameEnum.someDay
      case 2:
        return RadioNameEnum.someDay;
      // RadioNameEnum.today
      default:
        return RadioNameEnum.today;
    }
  }
}
