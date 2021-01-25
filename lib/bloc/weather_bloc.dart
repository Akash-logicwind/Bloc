import 'dart:async';
import 'dart:math';
import 'package:Bloc/model/weather.dart';
import 'package:equatable/equatable.dart';

import './bloc.dart';
import 'package:bloc/bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  @override
  // TODO: implement initialState
  WeatherState get initialState => WeatherInitial();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    // TODO: implement mapEventToState
    if (event is GetWeather) {
      print("Get Weather with city : " + event.cityName);
      yield WeatherLoading();
      final weather = await _fetchWeatherFromFakeApi(event.cityName);
      yield WeatherLoaded(weather);
    }
  }

  Future<Weather> _fetchWeatherFromFakeApi(String cityName) {
    return Future.delayed(Duration(seconds: 1), () {
      return Weather(
        cityName: cityName,
        temperature: 20 + Random().nextInt(15) + Random().nextDouble(),
      );
    });
  }
}
