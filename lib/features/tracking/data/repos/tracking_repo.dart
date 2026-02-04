import 'package:dartz/dartz.dart';
import 'package:fitness_app/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class TrackingRepo {
  Future<Either<String, void>> addWeight(String weight);
  Either<String, List<String>> getWeight();
}

class TrackingRepoImpl extends TrackingRepo {
  var box = Hive.box<String>(weightBox);
  @override
  Future<Either<String, void>> addWeight(String weight) async {
    try {
      await box.add(weight);
      return right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Either<String, List<String>> getWeight() {
    try {
      List<String> weights = box.values.toList();
      return right(weights);
    } catch (e) {
      return left(e.toString());
    }
  }
}
