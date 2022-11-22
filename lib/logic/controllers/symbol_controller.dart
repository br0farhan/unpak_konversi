import 'package:unpak_konversi/logic/controllers/base_controller.dart';
import 'package:unpak_konversi/logic/models/data/symbol_data.dart';
import 'package:unpak_konversi/logic/services/base_services.dart';

class SymbolController extends BaseController {
  Symbols? symbolsData;

  List<Symbols> symbols = [];
  SymbolController() {
    getSymbols();
    update();
  }

  Future<Symbols?> getSymbols() async {
    var resp = await BaseServices.symbols();
    symbolsData = resp.symbols;
    return resp.symbols;
  }

  Future<double> prediction(
      {required String from,
      required String to,
      int predicateInDays = 1,
      int timeSerieslength = 90}) async {
    predicateInDays += timeSerieslength;
    var result = await BaseServices.timeSeries(
        base: from, symbols: [to], timeSerieslength: timeSerieslength);
    double sigmaX = 0,
        sigmaY = 0,
        sigmaXY = 0,
        sigmaX2 = 0,
        averageX = 0,
        averageY = 0,
        averageY30 = 0;
    var a, b = 0.0;
    for (var i = 0; i < result.rates.length; i++) {
      sigmaX += i;
      sigmaY += result.rates[i].symbols.first.price;
      sigmaXY += i * result.rates[i].symbols.first.price;
      sigmaX2 += i * i;
      averageX = sigmaX / (i + 1);
      averageY = sigmaY / (i + 1);
      if (i == 29) {
        averageY30 = averageY;
      }
    }

    timeSerieslength++;

    b = (timeSerieslength * sigmaXY - sigmaX * sigmaY) /
        (timeSerieslength * sigmaX2 - sigmaX * sigmaX);
    a = (sigmaY - b * sigmaX) / timeSerieslength;

    var im = averageY30 / averageY;

    var Y = a + b * predicateInDays;
    var predictedY = im * Y;

    return predictedY;
  }
}
