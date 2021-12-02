import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share/share.dart';
import 'package:to_do/domain/core/bottom_sheet_state_enum.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

// HomePage Entities
// lightness, menu or addNote button
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.init());
  // share app item
  Future<void> shareAppItem() async =>
      //TODO
      //! change like into dynamic link
      await Share.share('check out my website https://example.com');

  /// rate us item
  Future<void> rateUsItem() async {
    //TODO
    //! change url into app id
    //! handle this exception to failure somehow
    //! convert to failure
    await canLaunch("url")
        ? await launch("url")
        : throw 'Could not launch "url"';
  }
//   void bottomSheetButtonClicked({required BottomSheetButtonState buttonState}){
// return emit(state.copyWith(bottomSheetState: buttonState));
//   }
  // add new note button
  // void openBottomSheet({required BottomSheetButtonState isOpenBottomSheet}) {

}