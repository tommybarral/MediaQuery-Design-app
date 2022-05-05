import 'package:flutter/material.dart';
import '../constants.dart';

class ContentSecondScreen extends StatelessWidget {

  final Widget mobileBody;
  final Widget desktopApp;

  const ContentSecondScreen({Key? key, required this.mobileBody, required this.desktopApp}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: currentWidth < 600 ? Colors.deepPurple[300] : Colors.green[300],
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < mobileWidth) {
            return const MobileApp();
          } else {
            return DesktopApp();
          }
        },
      ),
    );
  }
}

class MobileApp extends StatelessWidget {
  const MobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(title: const Text('MOBILE INTERFACE'), centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  //height: MediaQuery.of(context).size.height * 0.4,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.deepPurple[400],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class DesktopApp extends StatelessWidget {
  const DesktopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(title: const Text('DESKTOP INTERFACE'), centerTitle: true,),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    color: Colors.deepPurple[400],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            color: Colors.deepPurple[400],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              color: Colors.deepPurple[300],
            ),
          ),
        ],
      ),
    );
  }
}

