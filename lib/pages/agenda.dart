import 'package:devfest_lk_2019/bloc/agenda/agenda_bloc.dart';
import 'package:devfest_lk_2019/constants/data.dart';
import 'package:devfest_lk_2019/model/session.dart';
import 'package:devfest_lk_2019/widgets/session_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class AgendaPage extends StatefulWidget {
  AgendaPage({Key key}) : super(key: key);

  @override
  _AgendaPageState createState() => _AgendaPageState();
}

class _AgendaPageState extends State<AgendaPage> {
  final AgendaBloc agendaBloc = AgendaBloc();
  List<Session> sessionList = [];

  @override
  void initState() {
    if (sessionList.isEmpty) {
      agendaBloc.add(FetchSessionsEvent());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return BlocBuilder(
      bloc: agendaBloc,
      builder: (BuildContext context, AgendaState state) {
        if (state is InitialAgendaState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is NetworkBusyAgendaState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is NetworkErrorAgendaState) {
          return Text(state.error);
        }
        if (state is SessionsFetchedAgendaState) {
          sessionList = state.sessionList;

          return ListView.builder(
            itemCount: sessionList.length,
            itemBuilder: (BuildContext context, int index) {
              return SessionCard(
                session: sessionList[index],
              );
            },
          );
        }
        return Container();
      },
    );
  }

  @override
  void dispose() {
    agendaBloc.close();
    super.dispose();
  }
}
