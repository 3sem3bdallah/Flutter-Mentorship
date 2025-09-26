// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:futter_widget_app/widgets/actions_widget/buttons_widget.dart';
import 'package:futter_widget_app/widgets/actions_widget/fab_widget.dart';
import 'package:futter_widget_app/widgets/actions_widget/icons_button.dart';
import 'package:futter_widget_app/widgets/actions_widget/segmanted_buttons.dart';
import 'package:futter_widget_app/widgets/communication_widget/badges_widget.dart';
import 'package:futter_widget_app/widgets/communication_widget/circular_prog_widget.dart';
import 'package:futter_widget_app/widgets/communication_widget/snak_bar_widgit.dart';
import 'package:futter_widget_app/widgets/containment_widget/alert_dialog_widget.dart';
import 'package:futter_widget_app/widgets/containment_widget/card_widget.dart';
import 'package:futter_widget_app/widgets/containment_widget/list_tiles_widget.dart';
import 'package:futter_widget_app/widgets/navigation/drawer_widget.dart';
import 'package:futter_widget_app/widgets/navigation/nav_bar.dart';
import 'package:futter_widget_app/widgets/selection/check_box_widget.dart';
import 'package:futter_widget_app/widgets/selection/radio_widget.dart';
import 'package:futter_widget_app/widgets/selection/switching_widget.dart';
import 'package:futter_widget_app/widgets/text_input/text_field_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Flutter Widget',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          ButtonsWidget(),
          SegmantedButtons(),
          IconsButton(),
          BadgesWidget(),
          // CircularProgWidget(),
          SizedBox(height: 5),
          Divider(height: 1, thickness: 3),
          SnakBarWidgit(),
          Divider(height: 10, thickness: 3),
          ListTilesWidget(),
          Divider(height: 10, thickness: 3),
          CardWidget(),
          Divider(height: 10, thickness: 3),
          AlertDialogWidget(),
          Divider(height: 10, thickness: 3),
          CheckBoxWidget(),
          Divider(height: 10, thickness: 3),
          SwitchingWidget(),
          Divider(height: 10, thickness: 3),
          RadioWidget(),
          Divider(height: 10, thickness: 3),
          SizedBox(height: 10),
          TextFieldWidget(),
          SizedBox(height: 10),
        ],
      ),
      floatingActionButton: FabWidget(),
      bottomNavigationBar: NavBar(),
    );
  }
}
