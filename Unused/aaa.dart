import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int LV = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[400],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {setState(() {LV += 1;});}, backgroundColor: Colors.grey[850], child: const Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/yooy.png'),
                radius: 40.0,
              ),
            ), 
            Divider(height: 60.0, color: Colors.grey[800]),// Added comma here
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey[100], letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text(
                'My guy',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 30.0),
            Text(
              'Current LV',
              style: TextStyle(color: Colors.grey[100], letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text('$LV',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 30.0),
            Row(children: <Widget>[
              Icon(Icons.email, color: Colors.grey[400]),
              const SizedBox(width: 10.0),
              Text('joe@joe.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}