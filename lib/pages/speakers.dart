import 'package:devfest_lk_2019/bloc/speakers/speakers_bloc.dart';
import 'package:devfest_lk_2019/constants/data.dart';
import 'package:devfest_lk_2019/model/speaker.dart';
import 'package:devfest_lk_2019/widgets/speaker_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpeakersPage extends StatefulWidget {
  @override
  _SpeakersPageState createState() => _SpeakersPageState();
}

class _SpeakersPageState extends State<SpeakersPage> {
  final SpeakersBloc speakersBloc = SpeakersBloc();
  
  @override
  void initState() {
    speakersBloc.add(FetchSpeakerListSpeakersEvent());
    super.initState();
  }

  @override
  void dispose() {
    speakersBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: speakersBloc,
      builder: (BuildContext context, SpeakersState state) {
        if (state is InitialSpeakersState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is NetworkBusySpeakersState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is NetworkErrorSpeakersState) {
          return Text(state.error);
        }
        if (state is FetchedSpeakerListSpeakersState) {
          List<Speaker> speakerList = state.speakerList;

          return ListView.builder(
            itemCount: speakerList.length,
            itemBuilder: (BuildContext context, int index) {
              return SpeakerCard(speaker: speakerList[index],);
            },
          );
        }
        return Container();
      },
    );
  }
}