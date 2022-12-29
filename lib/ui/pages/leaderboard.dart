import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/game/game_bloc.dart';
import 'package:project/ui/pages/game.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            ' ZWYCIĘZCA : ${context.read<GameBloc>().state.winner!}',
            style: TextStyle(color: Colors.white),
          ),
          TextButton.icon(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => GamePage()))),
              icon: Icon(Icons.replay),
              label: Text('Graj ponownie'))
        ],
      )),
    );
  }
}
