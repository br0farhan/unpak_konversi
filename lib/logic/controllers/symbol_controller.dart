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
}
