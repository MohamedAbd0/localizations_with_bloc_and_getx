// ignore_for_file: avoid_classes_with_only_static_members, always_use_package_imports

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../translations/cubit/localization_cubit.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()..getSavedLanguage()),
  ];
}
