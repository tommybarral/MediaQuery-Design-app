import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  ContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  var appBar = AppBar(title: const Text('Content screen'), centerTitle: true,);

    return Scaffold(
      appBar: appBar,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                height: constraints.maxHeight * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(child: Text('Section 03', style: TextStyle(fontSize: 20),),),
              ),
              Container(
                height: constraints.maxHeight * 0.7,
                color: Colors.green,
                child: const Center(child: Text('Section 04', style: TextStyle(fontSize: 20),),),
              ),
            ],
          );
        },
      ),
    );
  }
}
