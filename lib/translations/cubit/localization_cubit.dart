// ignore_for_file: depend_on_referenced_packages, always_use_package_imports
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../helper/shared_pref.dart';
part 'localization_state.dart';

class LocaleCubit extends Cubit<LocalState> {
  LocaleCubit() : super(SelectedLocal(const Locale('en')));

  Future<void> getSavedLanguage() async {
    final cachedLanguageCode = SharedPrefHelper.getCachedLanguage();
    emit(SelectedLocal(Locale(cachedLanguageCode)));
  }

  Future<void> changeLanguage(String languageCode) async {
    await SharedPrefHelper.cacheLanguage(languageCode);
    await Get.updateLocale(Locale(languageCode));
    emit(SelectedLocal(Locale(languageCode)));
  }
}
