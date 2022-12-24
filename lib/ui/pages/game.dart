import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/presenter/presenter_cubit.dart';
import 'package:project/game/answers_cubit.dart';
import 'package:project/game/game_event.dart';

import '../../game/game_bloc.dart';
import '../../game/game_state.dart';
import '../../models/answer/answer.dart';
import '../../utils/styles.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late PresenterCubit presenter;
  late GameBloc game;

  @override
  void initState() {
    presenter = context.read<PresenterCubit>();
    game = context.read<GameBloc>();
    game.add(GameStartedEvent());
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _teamField(1, game.color1, game.state.answering == 1),
                _teamField(2, game.color2, game.state.answering == 2)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _teamField(int team, Color color, bool answering) {
    return Expanded(
        child: GestureDetector(
      onTap: () => game.add(TeamAnsweringEvent(team)),
      child: Container(
          color: color,
          child: answering
              ? _answersContainer(game.state.questions.first.answers)
              : Container()),
    ));
  }

  Widget _answersContainer(List<Answer> answers) {
    Map answersmap = answers.asMap();
    return GridView.count(
      crossAxisCount: 2,
      children:
          answers.map((e) => _answerContainer(e, answers.indexOf(e))).toList(),
    );
  }

  Widget _answerContainer(Answer answer, int index) {
    print(answer.text);
    return BlocProvider<AnswerCubit>(
        create: (context) => AnswerCubit(),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Builder(
            builder: ((context) => Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: context.read<AnswerCubit>().state,
                      border: Border.all(width: 8, color: Colors.black)),
                  child: GestureDetector(
                    onTap: () {
                      game.add(TeamAnsweredEvent(answer, context));
                    },
                    child: Center(
                      child: Text(
                        // '${indexToLetter[index]}) ${answer.text}',
                        '${indexToLetter[index]} ',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 70),
                      ),
                    ),
                  ),
                )),
          ),
        ));
  }
}

var indexToLetter = {0: 'A', 1: 'B', 2: 'C', 3: 'D'};
