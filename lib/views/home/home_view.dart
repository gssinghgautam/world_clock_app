import 'package:flutter/material.dart';import 'package:provider_architecture/provider_architecture.dart';import 'package:world_clock_app/constants/app_colors.dart';import 'package:world_clock_app/viewmodels/bottom_view_model.dart';import 'package:world_clock_app/views/clock/clock_view.dart';import 'package:world_clock_app/views/list/clock_list_view.dart';import 'package:world_clock_app/widgets/app_bar_widget.dart';class HomeView extends StatelessWidget {  @override  Widget build(BuildContext context) {    return ViewModelProvider<BottomViewModel>.withConsumer(      viewModel: BottomViewModel(),      builder: (context, model, child) {        return Scaffold(          backgroundColor: Theme.of(context).backgroundColor,          appBar: AppBarWidget(            topPadding: MediaQuery.of(context).padding.top,            onAddPress: () {              model.navigateTo("/addcity");            },            onEditPress: () {},          ),          body: _buildBody(model.currentIndex),          bottomNavigationBar: BottomAppBar(            color: Colors.transparent,            elevation: 0.0,            child: Container(              height: 100.0,              child: Row(                mainAxisAlignment: MainAxisAlignment.spaceEvenly,                crossAxisAlignment: CrossAxisAlignment.center,                children: <Widget>[                  InkWell(                    onTap: () => model.currentIndex = 0,                    child: Column(                      mainAxisAlignment: MainAxisAlignment.center,                      crossAxisAlignment: CrossAxisAlignment.center,                      children: <Widget>[                        IconTheme(                          data: model.currentIndex == 0                              ? Theme.of(context).primaryIconTheme                              : Theme.of(context).iconTheme,                          child: Icon(Icons.alarm),                        ),                        SizedBox(                          height: 12.0,                        ),                        Text(                          "CLOCK",                          style: model.currentIndex == 0                              ? Theme.of(context).textTheme.body1                              : Theme.of(context).textTheme.body2,                        ),                        SizedBox(                          height: 12.0,                        ),                        Container(                          width: 40,                          height: model.currentIndex == 0 ? 4 : 0,                          decoration: BoxDecoration(                              color: cityTextColor,                              borderRadius: BorderRadius.circular(2.0)),                        )                      ],                    ),                  ),                  SizedBox(                    width: 16.0,                  ),                  InkWell(                    onTap: () => model.currentIndex = 1,                    child: Column(                      mainAxisAlignment: MainAxisAlignment.center,                      crossAxisAlignment: CrossAxisAlignment.center,                      children: <Widget>[                        IconTheme(                          data: model.currentIndex == 1                              ? Theme.of(context).primaryIconTheme                              : Theme.of(context).iconTheme,                          child: Icon(Icons.list),                        ),                        SizedBox(                          height: 12.0,                        ),                        Text(                          "LIST",                          style: model.currentIndex == 1                              ? Theme.of(context).textTheme.body1                              : Theme.of(context).textTheme.body2,                        ),                        SizedBox(                          height: 12.0,                        ),                        Container(                          width: 40,                          height: model.currentIndex == 1 ? 4 : 0,                          decoration: BoxDecoration(                              color: cityTextColor,                              borderRadius: BorderRadius.circular(2.0)),                        )                      ],                    ),                  ),                  SizedBox(                    width: 16.0,                  ),                  InkWell(                    onTap: () => model.navigateTo("/settings"),                    child: Column(                      mainAxisAlignment: MainAxisAlignment.center,                      crossAxisAlignment: CrossAxisAlignment.center,                      children: <Widget>[                        IconTheme(                          data: model.currentIndex == 2                              ? Theme.of(context).primaryIconTheme                              : Theme.of(context).iconTheme,                          child: Icon(Icons.settings),                        ),                        SizedBox(                          height: 12.0,                        ),                        Text(                          "SETTINGS",                          style: model.currentIndex == 2                              ? Theme.of(context).textTheme.body1                              : Theme.of(context).textTheme.body2,                        ),                        SizedBox(                          height: 12.0,                        ),                        Container(                          width: 40,                          height: model.currentIndex == 2 ? 4 : 0,                          decoration: BoxDecoration(                              color: cityTextColor,                              borderRadius: BorderRadius.circular(2.0)),                        )                      ],                    ),                  ),                ],              ),            ),          ),        );      },    );  }  Widget _buildBody(int currentIndex) {    switch (currentIndex) {      case 0:        return ClockView();        break;      case 1:        return ClockListView();        break;      default:        return Container();    }  }}