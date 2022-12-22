import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/db/virtual_db.dart';
import 'package:project/game/game_bloc.dart';
import 'package:project/repositories/questions_repository.dart';

import '../ui/pages/game.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
            create: (context) => QuestionsRepository(VirtualDB()))
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) =>
                    GameBloc(context.read<QuestionsRepository>()))
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const GamePage(),
          )),
    );
  }
}
