class WeatherModel {
  Location? location;
  Current? current;

  WeatherModel({this.location, this.current});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null ? new Location.fromJson(json['location']) : null;
    current = json['current'] != null ? new Current.fromJson(json['current']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current!.toJson();
    }
    return data;
  }
}

class Location {
  String? name;
  String? region;
  String? country;
  int? localtimeEpoch;
  String? localtime;

  Location({this.name, this.region, this.country, this.localtimeEpoch, this.localtime});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    localtimeEpoch = json['localtime_epoch'];
    localtime = json['localtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['region'] = this.region;
    data['country'] = this.country;
    data['localtime_epoch'] = this.localtimeEpoch;
    data['localtime'] = this.localtime;
    return data;
  }
}

class Current {
  int? lastUpdatedEpoch;
  String? lastUpdated;
  int? tempC;
  int? isDay;
  PngWeather? pngWeather;
  double? windKph;

  Current({this.lastUpdatedEpoch, this.lastUpdated, this.tempC, this.isDay, this.pngWeather, this.windKph});

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    isDay = json['is_day'];
    pngWeather = json['condition'] != null ? new PngWeather.fromJson(json['condition']) : null;
    windKph = json['wind_kph'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['last_updated_epoch'] = this.lastUpdatedEpoch;
    data['last_updated'] = this.lastUpdated;
    data['temp_c'] = this.tempC;
    data['is_day'] = this.isDay;
    if (this.pngWeather != null) {
      data['condition'] = this.pngWeather!.toJson();
    }
    data['wind_kph'] = this.windKph;
    return data;
  }
}

class PngWeather {
  String? text;
  String? icon;
  int? code;

  PngWeather({this.text, this.icon, this.code});

  PngWeather.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['icon'] = this.icon;
    data['code'] = this.code;
    return data;
  }
}
