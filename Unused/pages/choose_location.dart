// import 'package:flutter/material.dart';
// import '../services/world_time.dart';

// class ChooseLocation extends StatefulWidget {
//   const ChooseLocation({Key? key}) : super(key: key);

//   @override
//   _ChooseLocationState createState() => _ChooseLocationState();
// }


// class _ChooseLocationState extends State<ChooseLocation> {
//   List<WorldTime> locations = [
//     WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
//     WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
//     WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
//     WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
//     WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
//     WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
//     WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
//     WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
//   ];

//   void updateTime(index) async {
//     WorldTime instance = locations[index];
//     await instance.getTime();
//     //naviogate to homescreen :)
//     // ignore: use_build_context_synchronously
//     Navigator.pop(context, {
//       'location': instance.location,
//       'flag': instance.flag,
//       'time': instance.time,
//       'isDaytime': instance.isDaytime
//     });


//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: const Text('Choose a location'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: ListView.builder(
//         itemCount: locations.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
//             child: Card(
//               child: ListTile(
//                 onTap: () {
//                   updateTime(index);
//                 },
//                 title: Text(locations[index].location),
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage('assets/${locations[index].flag}'),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
