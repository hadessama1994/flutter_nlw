import 'package:flutter/material.dart';
import 'package:nlw5/controller/home_controller.dart';
import 'package:nlw5/views/app_bar/app_bar_widget.dart';
import 'package:nlw5/views/level_buttons/level_button_container.dart';
import 'package:nlw5/views/quiz_cards/quiz_cards_container.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user!),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                LevelButtonContainer(),
                SizedBox(
                  height: 24,
                ),
                QuizCardContainer(controller: controller)
              ],
            )),
      );
    }
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
