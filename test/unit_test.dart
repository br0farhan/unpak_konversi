import 'package:flutter_test/flutter_test.dart';
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
    var result = await BaseServices.timeSeries();

    print(result.rates.first.toJson());
  });
}
