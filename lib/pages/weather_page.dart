import "package:flut_01/models/weather_model.dart";
import "package:flut_01/services/weather_service.dart";
import "package:flutter/material.dart";
import "package:lottie/lottie.dart";

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WheatherPageState();
}

class _WheatherPageState extends State<WeatherPage> {
//api key
  final _weatherService = WeatherService('83b84a8be7c78a3a20d48c29ef0222f7');
  Weather? _weather;

//fetch weather
  _fetchWeather() async {
    String cityName = await _weatherService.getCurrentCity();
    //String cityName = "Madrid";
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

//weather animations

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_weather?.cityName ?? "Loading city...", style: Theme.of(context).textTheme.displayMedium),
            Lottie.asset(getWeatherAnimation(_weather?.mainCondition)),
            Text('${_weather?.temperature.round()}  Cels' ?? "no weather info"),
            Text(_weather?.mainCondition ?? "")
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _fetchWeather();
  }

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return 'assets/sunny.json';
    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/cloud.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'assets/rain.json';
      case 'thunderstorm':
        return 'assets/thunder.json';
      case 'sunny':
        return 'assets/sunny.json';
      default:
        return 'assets/sunny.json';
    }
  }
}
