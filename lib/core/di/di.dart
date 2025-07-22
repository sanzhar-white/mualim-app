import 'package:get_it/get_it.dart';
import 'package:mualim/core/services/crashlytics.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

final getIt = GetIt.instance;

void initDependencies() {
  getIt.registerSingleton<FirebaseCrashlytics>(FirebaseCrashlytics.instance);
  getIt.registerLazySingleton<Talker>(
    () => TalkerFlutter.init(observer: CrashlyticsObserver()),
  );
}
