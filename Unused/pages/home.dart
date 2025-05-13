// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   Map data = {};

//   @override
//   Widget build(BuildContext context) {
//     // Check if arguments are not null before accessing them
//     data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;

//     print(data);

//     String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
//     Color? bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];

//     return Scaffold(
//       backgroundColor: bgColor,
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/$bgImage'), // Use variable bgImage here
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
//             child: Column(
//               children: <Widget>[
//                 TextButton.icon(
//                   onPressed: () async {
//                     dynamic result = await Navigator.pushNamed(context, '/location');
//                     setState(() {
//                       data = {
//                         'time' :result['time'],
//                         'location' :result['location'],
//                         'isDaytime': result['isDaytime'],
//                         'flag': result['flag']
//                       };

//                     });
//                   },
//                   icon: const Icon(
//                     Icons.edit_location,
//                     color: Color.fromARGB(255, 103, 91, 91),
//                   ),
//                   label: const Text(
//                     'Edit Location',
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 135, 129, 129),
//                     ),
//                     ),
//                 ),
//                 const SizedBox(height: 20.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       data['location'],
//                       style: const TextStyle(
//                         fontSize: 28.0,
//                         letterSpacing: 2.0,
//                         color: Colors.white
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(height: 20.0),
//                 Text(
//                   data['time'],
//                   style: const TextStyle(fontSize: 80.0, color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
