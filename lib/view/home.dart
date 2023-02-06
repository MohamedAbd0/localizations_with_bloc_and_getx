import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../translations/cubit/localization_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
        actions: [
          BlocBuilder<LocaleCubit, LocalState>(
            builder: (context, state) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "EN",
                  ),
                  Switch(
                    activeColor: Colors.amber,
                    value: state.locale.languageCode == "ar",
                    onChanged: (value) {
                      if (value) {
                        BlocProvider.of<LocaleCubit>(context)
                            .changeLanguage("ar");
                      } else {
                        BlocProvider.of<LocaleCubit>(context)
                            .changeLanguage("en");
                      }
                    },
                  ),
                  const Text(
                    "AR",
                  ),
                ],
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "name".tr,
          textScaleFactor: 3,
        ),
      ),
    );
  }
}
