import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location; // Location name for UI
  late String time = ''; // Initialize with a default value
  String flag; // URL to asset flag icon
  String url; // Location control for API endpoint
  late bool isDaytime; // true or false

WorldTime({
    required String location, // Add required keyword
    required this.flag,
    required this.url,
  }) {
    // ignore: prefer_initializing_formals
    this.location = location; // Assign the location parameter to the location property
    time = ''; // Initialize time with an empty string
  }


  Future<void> getTime() async {
    try {
      // Fetch time data from the API
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));

      // Check if the response is successful
      if (response.statusCode == 200) {
        // Decode JSON response
        Map? data = jsonDecode(response.body);

        // Check if the data is not null and has the necessary properties
        if (data != null && data.containsKey('datetime') && data.containsKey('utc_offset')) {
          String datetime = data['datetime'];
          String offset = data['utc_offset'].substring(1, 3);
          DateTime now = DateTime.parse(datetime);
          now = now.add(Duration(hours: int.parse(offset)));

          // Determine if it's daytime
          isDaytime = now.hour > 6 && now.hour < 15;

          // Format time using DateFormat
          time = DateFormat.jm().format(now);
        } else {
          // Handle case where response data is not as expected
          print('Error: Unexpected response format');
        }
      } else {
        // Handle non-200 status code
        print('Error: Unexpected status code ${response.statusCode}');
      }
    } catch (e) {
      // Handle errors
      print('Error occurred: $e');
      // You can set a default value for time or handle the error in other ways
    }
  }

  // Method to fetch time zone information
  Future<TimeZone> getTimeZone() async {
    try {
      // Fetch time zone data from the API
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      if (response.statusCode == 200) {
        // Decode JSON responsezz
        dynamic data = jsonDecode(response.body);
        String timezone = data['timezone'];
        return TimeZone(timezone);
      } else {
        // Handle non-200 status code
        print('Error: Unexpected status code ${response.statusCode}');
        // Return a default time zone
        return TimeZone('UTC');
      }
    } catch (e) {
      // Handle errors
      print('Error occurred: $e');
      // Return a default time zone
      return TimeZone('UTC');
    }
  }
}

class TimeZone {
  final String name;

  TimeZone(this.name);

  Duration get offset {
    // Logic to parse and return offset from time zone name
    // Example: 'UTC+03:00' -> Duration(hours: 3)
    // You need to implement this parsing logic based on the format of the time zone name
    return const Duration(hours: 0); // Placeholder implementation
  }
}
