import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:to_do/presentation/core/app_bar/app_bar.dart';
import 'package:to_do/presentation/core/app_bar/bottom_app_bar_tap.dart';
import 'package:to_do/presentation/display_notes_page/display_notes_page.dart';
import 'package:to_do/presentation/homePage/widgets/floating_action_button.dart';

/// Home Page
class HomePage extends HookWidget {
  const HomePage();
  @override
  Widget build(BuildContext context) {
    // for snake bar
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    // create useTabController by hook
    // for make him stop listening dynamically
    final _tapController = useTabController(initialLength: 3, initialIndex: 0);
    // make the controller always listenable
    useListenable(_tapController);
    return SafeArea(
      //TODO: see multi screens
      top: false,
      child: Scaffold(
        key: _scaffoldKey,
        // Theme
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        // appBar
        appBar: NoteAppBar(
          bottomAppBarTap: BottomAppBarTap(
            controller: _tapController,
          ),
        ),
        // body
        body: TabBarView(
          controller: _tapController,
          children: const [
            // today tap
            // MyStatefulWidget(),
            DisplayNotesPages(),
            // tomorrow tap
            DisplayNotesPages(),
            // some day tap
            DisplayNotesPages(),
          ],
        ),
        // Open bottom navigator
        // if button clicked
        // or pop it if saved to db
        floatingActionButton: HomeFloatingActionButton(scaffoldKey: _scaffoldKey,)
      ),
    );
  }
}
// _incrementCounter() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   int counter = (prefs.getInt('counter') ?? 0) + 1;
//   print('Pressed $counter times.');
//   await prefs.setInt('counter', counter);
// }
