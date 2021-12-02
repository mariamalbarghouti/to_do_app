import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do/application/home_cubit/home_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:to_do/presentation/core/app_bar/bottom_app_bar_tap.dart';

class NoteAppBar extends StatelessWidget with PreferredSizeWidget {
  const NoteAppBar({required this.bottomAppBarTap}) ;
  final BottomAppBarTap bottomAppBarTap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // icons color
      iconTheme: Theme.of(context).iconTheme,
      elevation: 0.0,
    
      actions: [
        // brightness icon
        IconButton(
          //TODO
          // todo need 
          onPressed: () {
            
          },
          icon: Icon(
            Icons.light_mode,
            size: Theme.of(context).iconTheme.size,
          ),
        ),
      ],
      // options leading
      leading: PopupMenuButton(
        itemBuilder: (context) => [
          // rateUs item
          PopupMenuItem(
            child: Center(child: Text(AppLocalizations.of(context)!.rateUs)),
            value: 1,
            onTap: () => context.read<HomeCubit>().rateUsItem(),
          ),
          // shareApp item
          PopupMenuItem(
            child: Center(child: Text(AppLocalizations.of(context)!.shareApp)),
            value: 2,
            onTap: () => context.read<HomeCubit>().shareAppItem(),
          ),
        ],
        // options leading icon
        icon: Icon(
          Icons.menu_sharp,
          size: Theme.of(context).iconTheme.size,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      // app title
      // What's up!
      title: Text(
        AppLocalizations.of(context)!.homeAppBarTitle,
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      // Tab Bat
     
      bottom:bottomAppBarTap, 
      //  const BottomAppBarTap(),
    );
  }

  @override
  Size get preferredSize => 
}