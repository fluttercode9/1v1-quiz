import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/presenter/presenter_cubit.dart';
import 'package:project/ui/pages/game.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {},
                  child: TextButton(
                    onPressed: () {
                      context.read<PresenterCubit>().stop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => GamePage()));
                    },
                    child: Text(
                      'GRAJ',
                      style: TextStyle(fontSize: 80, color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
