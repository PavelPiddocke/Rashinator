import 'package:hive/hive.dart';
import 'package:rashinator/src/home_page/models/disease_model.dart';

class Boxes {
  static Box<Disease> getDiseases() => Hive.box<Disease>('skin-disease');
}

class HiveService {

  final box = Boxes.getDiseases();

  // Store disease
  Future addDisease(Disease disease) async {
    await box.add(disease);
  }
  
}
