part of 'home_cubit.dart';

//TODO-->
//todo make Init private _Init
//todo and openBottomSheet

@freezed
abstract class HomeState with _$HomeState {
/// TODO use radio state button state
  const factory HomeState({required BottomSheetButtonState bottomSheetState}) = _HomeState;
  // const factory HomeState.openBottomSheet({required BottomSheetButtonState state}) = _OpenBottomSheet;
   factory HomeState.init() => const HomeState(bottomSheetState: BottomSheetButtonState.initState);
  ///TODO delete it 
  // const factory HomeState.openBottomSheetToUpdate() = OpenBottomSheetToUpdate;
}
