import 'package:flutter/material.dart';
import 'package:mualim/core/dI/di.dart';
import 'package:mualim/features/init/presentation/feature.dart';
import 'package:mualim/mualimapp.dart';
import 'package:talker_flutter/talker_flutter.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    _runMualimApp();
  } catch (e, st) {
    if (getIt.isRegistered<Talker>()) {
      getIt<Talker>().critical(e, st);
    } else {
      debugPrint('CRITICAL ERROR DURING INITIALIZATION: $e');
      debugPrint(st.toString());
    }
    _runMualimApp();
  }
}

void _runMualimApp() {
  runApp(MualimApp());
}
