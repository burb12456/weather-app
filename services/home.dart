import 'package:flutter/material.dart';
import 'menu.dart';
import 'World_time.dart';
import 'package:weather/weather.dart';
import 'dart:async';
String continent = '0';
final List<String> asianCities = [
  'Tokyo',
  'Shanghai',
  'Mumbai',
  'Delhi',
  'Beijing',
  'Karachi',
  'Istanbul',
  'Dhaka',
  'Seoul',
  'Lahore',
  'Osaka',
  'Manila',
  'Jakarta',
  'Bangkok',
  'Kolkata',
  'Ho Chi Minh City',
  'Wuhan',
  'Chennai',
  'Tianjin',
  'Bengaluru',
  'Hyderabad',
  'Shenzhen',
  'Suzhou',
  'Kuala Lumpur',
  'Singapore',
  'Ahmedabad',
  'Hong Kong',
  'Hangzhou',
  'Wenzhou',
  'Foshan',
  'New Delhi',
  'Chongqing',
  'Dongguan',
  'Nanjing',
  'Tehran',
  'Shenyang',
  'Shantou',
  'Shijiazhuang',
  'Kunming',
  'Guiyang',
  'Xiamen',
  'Changsha',
  'Dalian',
  'Qingdao',
  'Fuzhou',
  'Shenzhen',
  'Jinan',
  'Nanchang',
  'Ningbo',
  'Taipei',
  'Hefei',
  'Changchun',
  'Wuxi',
  'Tangshan',
  'Zhengzhou',
  'Changzhou',
  'Shenzhen',
  'Zhongshan',
  'Zibo',
  'Zhangzhou',
  'Jiangmen',
  'Nantong',
  'Suzhou',
  'Nanning',
  'Foshan',
  'Langfang',
  'Guiyang',
  'Shijiazhuang',
  'Xiamen',
  'Tianshui',
  'Huai\'an',
  'Quanzhou',
  'Xuzhou',
  'Foshan',
  'Huizhou',
  'Baotou',
  'Yinchuan',
  'Lanzhou',
  'Yingkou',
  'Qinhuangdao',
  'Hengyang',
  'Liuzhou',
  'Zhuzhou',
  'Jining',
  'Wuhu',
  'Jiaxing',
  'Zhenjiang',
  'Nanchong',
  'Anshan',
  'Chifeng',
  'Linyi',
  'Pingdingshan',
  'Xinyang',
  'Shaoxing',
  'Wuhu',
  'Fuzhou',
  'Yangzhou',
  'Huzhou',
  'Shaoxing',
  'Jiangyin',
  'Ningbo',
  'Shaoguan',
  'Yinchuan',
  'Binzhou',
  'Yueyang',
  'Suqian',
  'Jiaozuo',
  'Zaozhuang',
  'Zhangjiakou',
  'Xiangyang',
  'Xianyang',
  'Luzhou',
  'Hengyang',
  'Baoding',
  'Yanan',
  'Shaoyang',
  'Yibin',
  'Fushun',
  'Huainan',
  'Maanshan',
  'Huaihua',
  'Xiangtan',
  'Dongying',
  'Quzhou',
  'Yancheng',
  'Nantong',
  'Huzhou',
  'Zaozhuang',
  'Huainan',
  'Daqing',
  'Bengbu',
  'Huai\'an',
  'Yinchuan',
  'Mianyang',
  'Dandong',
  'Zhaoqing',
  'Anqing',
  'Suzhou',
  'Huaibei',
  'Jinzhong',
  'Sanming',
  'Tongliao',
  'Zhongshan',
  'Chenzhou',
  'Xianyang',
  'Zhuzhou',
  'Jincheng',
  'Chifeng',
  'Xinyang',
  'Lianyungang',
  'Xinxiang',
  'Zunyi',
  'Ningde',
  'Shaoyang',
  'Huangshi',
  'Jian',
  'Xinyu',
  'Zhaoqing',
  'Yiyang',
  'Zhangzhou',
  'Huangshan',
  'Qinhuangdao',
  'Lianyungang',
  'Xuchang',
  'Jingzhou',
  'Xiaogan',
  'Zhanjiang',
  'Xiangtan',
  'Tonghua',
  'Fuyang',
  'Yangjiang',
  'Chaozhou',
  'Nantong',
  'Zhangjiagang',
  'Xingtai',
  'Mianyang',
  'Yulin',
  'Liaocheng',
  'Yingkou',
  'Panjin',
  'Anshan',
  'Jiangmen',
  'Tongliao',
  'Qiqihar',
  'Wuhai',
  'Zhanjiang',
  'Suizhou',
  'Zhoushan',
  'Heze',
  'Huangshan',
  'Nanchong',
  'Jiaxing',
  'Jinjiang',
  'Yingtan',
  'Shangqiu',
  'Changde',
  'Tongling',
  'Zunyi',
  'Wuzhou',
  'Lishui',
  'Zhaotong',
  'Xinyang',
  'Huludao',
  'Panzhihua',
  'Zhoushan',
  'Xiangyang',
  'Chuzhou',
  'Xinyu',
  'Shangrao',
  'Xiaogan',
  'Jingmen',
  'Tieling',
  'Pingxiang',
  'Deyang',
  'Qujing',
  'Yangzhou',
  'Zhaoqing',
  'Yichun',
  'Zunyi',
  'Baoding',
  'Yulin',
  'Zhongwei',
  'Weifang',
  'Huaian',
  'Jining',
  'Laiwu',
  'Puyang',
  'Luohe',
  'Jincheng',
  'Linfen',
  'Mianyang',
  'Tonghua',
  'Yancheng',
  'Yichang',
  'Yiyang',
  'Zhoushan',
  'Xinyu',
  'Jingmen',
  'Huangshi'
];
final List europeanCities = [
  'London',
  'Paris',
  'Madrid',
  'Berlin',
  'Rome',
  'Moscow',
  'Kiev',
  'Vienna',
  'Bucharest',
  'Warsaw',
  'Budapest',
  'Barcelona',
  'Milan',
  'Prague',
  'Sofia',
  'Brussels',
  'Birmingham',
  'Glasgow',
  'Leeds',
  'Liverpool',
  'Manchester',
  'Sheffield',
  'Edinburgh',
  'Bristol',
  'Zagreb',
  'Lisbon',
  'Amsterdam',
  'Athens',
  'Helsinki',
  'Bratislava',
  'Luxembourg City',
  'Tallinn',
  'Dublin',
  'Vilnius',
  'Riga',
  'Ljubljana',
  'Valletta',
  'Reykjavik',
  'Nicosia',
];

class Home extends StatefulWidget {
  final String joe;

  const Home({Key? key, required this.joe}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var a = 0;
  late String time = ''; // Add a variable to hold the time
  late Timer _timer;
  late List<Color> gradientColors; // Add a variable to hold gradient colors
  late String errorMessage = ''; // Add a variable to hold error message

  @override
  void initState() {
    super.initState();
    updateTime(); // Call updateTime method when widget initializes
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      updateTime(); // Update time every minute
    });

    // Set initial gradient colors based on time of day
    final currentTime = DateTime.now().hour;
    gradientColors = _getGradientColors(currentTime);
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  Weather? weather; // Define a variable to hold weather data

  // Method to update the time
  Future<void> updateTime() async {
    print('Updating time...');
    try {
        if (europeanCities.contains(widget.joe)) {
        continent = 'Europe';
        }
                if (asianCities.contains(widget.joe)) {
        continent = 'Asia';
        }
      WorldTime worldTime = WorldTime(location: widget.joe, flag: '', url: '$continent/${widget.joe}');
        



      await worldTime.getTime();
      setState(() {
        time = worldTime.time;
        print('Current time: $time');

        // Update gradient colors based on current time
        final currentTime = DateTime.now().hour;
        gradientColors = _getGradientColors(currentTime);
        print('Gradient colors: $gradientColors');
        errorMessage = ''; // Reset error message on success
      });

      await fetchWeatherData(widget.joe); // Fetch weather data using the chosen country
    } catch (e) {
      setState(() {
        errorMessage = 'Error occurred while updating time: $e';
      });
    }
  }

  Future<void> fetchWeatherData(String location) async {
    try {
      WeatherFactory wf = WeatherFactory('b834725237949ceb58588c4dfa8d7525');
      Weather w = await wf.currentWeatherByCityName(location);
      setState(() {
        weather = w;
        errorMessage = ''; // Reset error message on success
      });
    } catch (e) {
      setState(() {
        errorMessage = 'Error occurred while fetching weather data: $e';
      });
    }
  }

  List<Color> _getGradientColors(int currentTime) {
    if (currentTime >= 18 || currentTime < 6) {
      // Night time
      print('Night time');
      return [Colors.indigo.shade900, Colors.indigo.shade800];
    } else {
      // Day time
      print('Day time');
      return [Colors.blue, Colors.lightBlueAccent];
    }
  }
  Icon _getWeatherIcon() {
  if (weather != null) {
    switch (weather!.weatherMain) {
      case 'Clear':
        return const Icon(
          Icons.wb_sunny,
          size: 150,
          color: Colors.white,
        );
      case 'Clouds':
        return const Icon(
          Icons.cloud,
          size: 150,
          color: Colors.white,
        );
      case 'Rain':
        return const Icon(
          Icons.beach_access,
          size: 150,
          color: Colors.white,
        );
      case 'Mist':
        return const Icon(
          Icons.memory,
          size: 150,
          color: Colors.white,
        );
      case 'Smoke':
        return const Icon(
          Icons.smoking_rooms,
          size: 150,
          color: Colors.white,
        );
      // Add more cases for other weather conditions as needed
      default:
        return const Icon(
          Icons.cloud,
          size: 150,
          color: Colors.white,
        );
    }
  } else {
    return const Icon(
      Icons.cloud,
      size: 150,
      color: Colors.white,
    );
  }
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          widget.joe, // Remove const here
          style: TextStyle(color: Colors.white),
        ),
          backgroundColor: Colors.blue,
        ),
        body: errorMessage.isNotEmpty
            ? Center(
                child: Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: gradientColors,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _getWeatherIcon(), // Use the method to get weather icon dynamically
                        const SizedBox(height: 20),
                        Text(
                          time.isNotEmpty ? time : 'Loading...',
                          style: const TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Rest of your code...

                        const SizedBox(height: 20),
                        if (weather != null) ...[
                          Text(
                            'Temperature: ${weather!.temperature}°C',
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Weather: ${weather!.weatherMain}',
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _navigateToMenuPage(context);
                              a += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Go to Menu Page',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  void _navigateToMenuPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MenuPage()),
    );
  }
}
