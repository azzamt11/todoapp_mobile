import 'dart:math';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:todoapp_mobile/feature/data/models/project.dart';
import 'package:todoapp_mobile/feature/data/services/project_service.dart';

import 'package:todoapp_mobile/feature/presentation/pages/home_page.dart';
import 'package:todoapp_mobile/feature/presentation/widgets/text_widget.dart';


class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  ProjectService get service => GetIt.I<ProjectService>();

  late Response<List<Project>> _apiResponse;
  double targetOpacity= 0;

  bool isLoading= false;

  @override
  void initState() {
    initiate();
    super.initState();
  }

  _fetchProjects() async {

    setState(() {
      isLoading = true;
    });

    _apiResponse = await service.getProjectList();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: getBody(size),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget getBody(var size) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(0, 0, 0, 0.5), Color.fromRGBO(255, 255, 255, 1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.4, 0.7],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: logoWidget(size)
          ),
          appName()
        ],
      )
    );
  }

  Widget logoWidget(var size) {
    return TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: targetOpacity),
        duration: const Duration(milliseconds: 1700),
        builder:(BuildContext context, double opacity, Widget? child) {
        return Opacity(
            opacity: opacity,
            child: Container(
            height: 180,
            width: 180,
            margin: const EdgeInsets.only(bottom: 35),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo.png")
                )
            ),
            )
        );
        },
    );
  }

  Widget appName() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetOpacity),
          duration: const Duration(milliseconds: 1700),
          builder:(BuildContext context, double opacity, Widget? child) {
            return Opacity(
              opacity: opacity,
              child: const SizedBox(
                height: 50,
                child: Column(
                  children: [
                    TextWidget(text: "Todo Mobile", type: 1),
                    TextWidget(text: "Version 1.0.0", type: 1)
                  ],
                )
              ),
            );
          },
        )
      )
    );
  }

  void animateLogo(String param) {
    switch(param) {
      case "in" : {
        setState(() {
          targetOpacity= 1;
        });
        break;
      }
      case "out" : {
        setState(() {
          targetOpacity= 0;
        });
        break;
      }
    }
  }

  Future<void> initiate() async{
    await Future.delayed(const Duration(seconds: 1));
    animateLogo("in");

    //get project data
  
    animateLogo("out");
    Future.delayed(const Duration(seconds: 2));

    // ignore: use_build_context_synchronously
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context)=> HomePage()
      )
    );
  }
}