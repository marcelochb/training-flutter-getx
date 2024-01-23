import 'package:pocket_getx/app/data/models/mtg_model.dart';
import 'package:pocket_getx/app/data/providers/mtg_provider.dart';

class MtgRepository {
  final MtgProvider mtgProvider;

  MtgRepository({required this.mtgProvider});

  Future<List<Mtg>> getAllPaginated({int initialPage = 1}) {
    return mtgProvider.getAllPaginated(initialPage: initialPage);
  }

  Future<Mtg> getById({required String id}) {
    return mtgProvider.getById(id: id);
  }
}
