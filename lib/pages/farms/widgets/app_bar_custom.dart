import 'package:easy_farm/controllers/app_controller.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  ApplicationController appController = getIt<ApplicationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: MediaQuery.of(context).size.height * .15,
      padding: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Olá, ${appController.userName}",
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "Sair",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            onTap: appController.logout,
          ),
        ],
      ),
    );
  }
}
