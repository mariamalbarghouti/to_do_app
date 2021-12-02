import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do/application/display_notes_cubit/display_note_inside_pages_cubit/display_note_inside_pages_cubit.dart';
import 'package:to_do/application/home_cubit/home_cubit.dart';
import 'package:to_do/application/note_form_bottom_sheet_cubit/note_form_cubit.dart';
import 'package:to_do/domain/core/radio_name_enum.dart';
import 'package:to_do/injection.dart';
import 'package:to_do/presentation/core/app_theme.dart';
import 'package:to_do/presentation/homePage/home_page.dart';
// TODO: delete the banner bar 
class AppWidget extends StatelessWidget {
  const AppWidget();
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          // locale: DevicePreview.locale(context), // Add the locale here
          // builder: DevicePreview.appBuilder, // Add the builder here
          title: 'To Do',
          debugShowCheckedModeBanner: false,
          home: MultiBlocProvider(
            //NoteFormCubit
            providers: [
              // for home entities
              BlocProvider<HomeCubit>(
                // lazy: false,
                create: (context) => HomeCubit(),
              ),
              // for  note bottom sheet entities
              // to be deleted or updated note   
              BlocProvider<NoteFormCubit>(
                // lazy: false,
                create: (context) => getIt<NoteFormCubit>(),
              ),
              // Day Entities
              BlocProvider<DisplayNoteInsidePagesCubit>(
              // for make data initialized                                  
              // at the beginning of the application
                lazy: false,
                create: (context) => getIt<DisplayNoteInsidePagesCubit>()
                  ..retrieveClickedOrSwapped(index: RadioNameEnum.today)
              ),
            ],
            child: const  HomePage(),
          ),
          // app theme
          //  I have created a builder before appTheme
          //  just because i need to make localization
          //  to be on the to of the app
          builder: (BuildContext context, Widget? navigator) =>
              AppTheme(navigator!),

          localizationsDelegates: const [
            // Generated code of my language
            // contains a constructor
            // for which language to be used
            AppLocalizations.delegate,
            // provides localized strings
            // and other values for the Material Components library
            GlobalMaterialLocalizations.delegate,
            // defines the default text direction,
            // either left-to-right or right-to-left, for the widgets library.
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('ar', ''),
          ],
        );
      },
    );
  }
}
