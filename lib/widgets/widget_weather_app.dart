import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_bloc/blocs/weather/bloc/weather_bloc.dart';
import 'package:weather_app_with_bloc/widgets/widget_end_update.dart';
import 'package:weather_app_with_bloc/widgets/widget_location.dart';
import 'package:weather_app_with_bloc/widgets/widget_max_and_min_heat.dart';
import 'package:weather_app_with_bloc/widgets/widget_select_city.dart';
import 'package:weather_app_with_bloc/widgets/widget_weather_app_image.dart';

class WeatherAppWidget extends StatelessWidget {
  String? selectCity = '';

  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
              onPressed: () async {
                selectCity =
                    await Navigator.push(context, MaterialPageRoute(builder: (context) => const WidgetSelectCity()));

                if (selectCity != null) {
                  weatherBloc.add(FetchWeatherEvent(selectCity!.toLowerCase()));
                  print('eklendiiiiiiiiiiiiii');
                }
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          bloc: WeatherBloc(),
          builder: (context, state) {
            print(state.toString());
            if (state is WeatherInitialState) {
              return const Center(
                child: Text('Şehir Seçiniz'),
              );
            }
            if (state is WeatherLoadingState) {
              print('Loadingggggg');
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is WeatherLoadedState) {
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: WidgetLocation(selectCity: selectCity ?? '')),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: WidgetEndUpdate()),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: WidgetWeatherAppImage()),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: WidgetMaxAndMinHeat()),
                  ),
                ],
              );
            } else {
              return const Center(
                child: Text('Hata oluştu'),
              );
            }
          },
        ),
      ),
    );
  }
}
