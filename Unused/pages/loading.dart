// import 'package:flutter/material.dart';
// import '../services/world_time.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';


// class Loading extends StatefulWidget {
//   const Loading({super.key}); // Correct the constructor

//   @override
//   State<Loading> createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {

//   void setupWorldTime() async{
//     WorldTime instance = WorldTime(location: 'London', flag: 'germany.png', url: 'Europe/London');
//     await instance.getTime();
//     // ignore: use_build_context_synchronously
//     Navigator.pushReplacementNamed(context, '/home', arguments: {
//       'location': instance.location,
//       'flag': instance.flag,
//       'time': instance.time,
//       'isDaytime': instance.isDaytime
//     });


//   }
//   @override
//   void initState() {
//     super.initState();
//     setupWorldTime();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: SpinKitCircle(
//   color: Colors.white,
//   size: 80.0,
// )
//       )

//     );
//   }
// }
// //