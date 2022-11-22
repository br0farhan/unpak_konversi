import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:unpak_konversi/logic/models/data/symbol_data.dart';
import 'package:unpak_konversi/logic/models/data/time_series_data.dart';

class BaseServices {
  static String baseUrl = "https://api.apilayer.com/exchangerates_data";
  static Future<SymbolsData> symbols() async {
    var url = "$baseUrl/symbols";
    var headers = {
      'apikey': 'fEFN7n4VIkZ1jRjGbIcK4Nn4X4aQV8GX',
    };
    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    if (response.statusCode == 200) {
      return SymbolsData.fromJson(jsonDecode(response.body));
      // return  (jsonDecode(response.body) as List).map((e) => RiwayatResp.fromJson(e)).toList();
    } else {
      throw Exception("Gagal Ambil symbols");
    }
  }

  static Future<TimeSeriesData> timeSeries({
    required String base,
    List<String> symbols = const ["idr"],
    int timeSerieslength = 90,
  }) async {
    DateTime endDate = DateTime.now();
    DateTime startDate =
        DateTime.now().subtract(Duration(days: timeSerieslength));

    var url = Uri.parse("$baseUrl/timeseries");
    url = url.replace(queryParameters: {
      "start_date": DateFormat("yyyy-MM-dd").format(startDate),
      "end_date": DateFormat("yyyy-MM-dd").format(endDate),
      "base": base.toUpperCase(),
      "symbols": symbols.join(",").toUpperCase()
    });

    var headers = {
      'apikey': 'fEFN7n4VIkZ1jRjGbIcK4Nn4X4aQV8GX',
    };
    var response = await http.get(
      url,
      headers: headers,
    );
    if (response.statusCode == 200) {
      return TimeSeriesData.fromJson(jsonDecode(response.body));
      // return  (jsonDecode(response.body) as List).map((e) => RiwayatResp.fromJson(e)).toList();
    } else {
      throw Exception("Gagal Ambil symbols");
    }
  }
}
