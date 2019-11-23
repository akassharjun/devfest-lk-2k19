import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_lk_2019/bloc/moments/moments_bloc.dart';
import 'package:devfest_lk_2019/model/moment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:io';

class MomentsPage extends StatefulWidget {
  @override
  _MomentsPageState createState() => _MomentsPageState();
}

class _MomentsPageState extends State<MomentsPage> {
  final MomentsBloc momentsBloc = MomentsBloc();

  bool isOffline = false;

  bool checkInternetConnection()  {
    try {
      final result = InternetAddress.lookup('google.com').then((value){
        if (value.isNotEmpty && value[0].rawAddress.isNotEmpty) {
          return true;
        }
      });
    } on SocketException catch (_) {
      return false;
    }
  }

  @override
  void initState()  {
    bool isConnected = checkInternetConnection();
    print(isConnected);
    momentsBloc.add(FetchMomentListMomentsEvent());

    super.initState();
  }

  void connectionChanged(dynamic hasConnection) {
    setState(() {
      isOffline = !hasConnection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: momentsBloc,
      builder: (BuildContext context, MomentsState state) {
        if (state is InitialMomentsState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is NetworkBusyMomentsState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is NetworkErrorMomentsState) {
          return Text(state.error);
        }
        if (state is MomentListFetchedMomentsState) {
          List<Moment> momentList = state.momentList;

          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
            child: new StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: momentList.length,
              itemBuilder: (BuildContext context, int index) {
                return CachedNetworkImage(
                  imageUrl: momentList[index].imageUrl,
                  placeholder: (context, url) => Container(
                      height: 65,
                      width: 65,
                      child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  imageBuilder: (context, imageProvider) => Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 2 : 1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          );
        }
        return Container();
      },
    );
  }

  @override
  void dispose() {
    momentsBloc.close();
    super.dispose();
  }
}
