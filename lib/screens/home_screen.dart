import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: const Text('MediaQuery Design app'), centerTitle: true,);


    return Scaffold(
      appBar: appBar,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: MediaQuery.of(context).size.width < 490 ? FloatingActionButtonLocation.endFloat : FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top) * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.9),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(child: Text('Section 01', style: TextStyle(fontSize: 20),),),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top) * 0.7,
              color: Colors.green,
              child: const Center(child: Text('Section 02', style: TextStyle(fontSize: 20),),),
            ),
          ],
        ),
      ), 
    );
  }
}
