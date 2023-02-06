part of 'localization_cubit.dart';

abstract class LocalState {
  final Locale locale;
  LocalState(this.locale);
}

class SelectedLocal extends LocalState {
  SelectedLocal(super.locale);
}
