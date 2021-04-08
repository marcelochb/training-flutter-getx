import 'package:flutter/cupertino.dart';
import 'package:pocket_getx/app/data/providers/mtg_provider.dart';

class MtgRepository {
  final MtgProvider mtgProvider;

  MtgRepository({@required this.mtgProvider}) : assert(mtgProvider != null);

  getAllPaginated({int initialPage = 1}) {
    return mtgProvider.getAllPaginated(initialPage: initialPage);
  }

  getById({@required String id}) {
    return mtgProvider.getById(id: id);
  }
}
