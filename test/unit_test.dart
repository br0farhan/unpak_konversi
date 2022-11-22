import 'package:flutter_test/flutter_test.dart';
import 'package:unpak_konversi/logic/controllers/symbol_controller.dart';
import 'package:unpak_konversi/logic/services/base_services.dart';

void main() {
  test("symbols", () async {
    var resp = await BaseServices.symbols();
    print(resp.symbols?.afn ?? "-");
  });

  test("date calc", () {
    var a = DateTime.now().subtract(const Duration(days: 60));

    print(a);
  });

  test("time series", () async {
    var result = await BaseServices.timeSeries(base: "eur");

    for (var element in result.rates) {
      print(element.toJson());
    }
  });

  test("prediction", () async {
    var predicted = await SymbolController()
        .prediction(from: "usd", to: "idr", predicateInDays: 2);

    print(predicted.toStringAsFixed(0));
  });
}
