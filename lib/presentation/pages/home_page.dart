import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/bloc/weather_bloc.dart';
import 'package:weather_app/presentation/widgets/sun-data/sun_data_row.dart';

import '../widgets/background/blur_background.dart';
import '../widgets/main-data/date_time_text.dart';
import '../widgets/topbar/greeting_text.dart';
import '../widgets/topbar/location_text.dart';
import '../widgets/temperature-data/temperature_data_row.dart';
import '../widgets/main-data/temperature_text.dart';
import '../widgets/weather-image/weather_image.dart';
import '../widgets/main-data/weather_type_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherSuccess) {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: Stack(
                  children: [
                    const BlurBackground(),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          LocationText(state.weather.areaName!),
                          const GreetingText(),
                          WeatherImage(state.weather.weatherConditionCode!),
                          TemperatureText(
                            state.weather.temperature!.celsius!
                                .round()
                                .toString(),
                          ),
                          WeatherTypeText(state.weather.weatherMain!),
                          DateTimeText(state.weather.date!),
                          const SizedBox(
                            height: 32,
                          ),
                          SunDataRow(
                            state.weather.sunrise!,
                            state.weather.sunset!,
                          ),
                          Divider(
                            color: Colors.white.withOpacity(0.75),
                          ),
                          TemperatureDataRow(
                            state.weather.tempMax!,
                            state.weather.tempMin!,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
