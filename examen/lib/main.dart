import 'package:examen/feature/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/home/presentation/view/carga_view.dart';
import 'feature/home/presentation/view/errror_view.dart';
import 'feature/home/presentation/view/inicial_view.dart';
import 'feature/home/presentation/view/succes_view.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadSuccess){
                return Succes();
              }else if (state is HomeLoadInProgress){
                return Carga();
              }else if (state is HomeLoadFailure){
                return Errror();
              }
              return Inicial();
          },
        )),
    );
  }
}
