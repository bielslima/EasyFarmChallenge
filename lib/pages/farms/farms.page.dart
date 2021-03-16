import 'package:auto_route/auto_route.dart';
import 'package:easy_farm/constants/Routes.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:easy_farm/pages/farms/controller/farms.controller.dart';
import 'package:easy_farm/pages/farms/farm_details.page.dart';
import 'package:easy_farm/pages/farms/widgets/app_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FarmsPage extends StatefulWidget {
  @override
  _FarmsPageState createState() => _FarmsPageState();
}

class _FarmsPageState extends State<FarmsPage> {
  FarmsController _controller = getIt<FarmsController>();

  @override
  void initState() {
    super.initState();
    this._controller.listFarms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppBarCustom(),
            Expanded(
              child: Observer(
                builder: (context) {
                  if (this._controller.isLoadingFarms) {
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else {
                    return Container(
                      padding: EdgeInsets.all(8),
                      child: ListView.separated(
                        itemBuilder: (context, index) => ListTile(
                          onTap: () => _actionSelectFarm(index),
                          title: Text(_controller.farms[index].attributes.name),
                          subtitle: Text(
                              "Group Id: ${_controller.farms[index].attributes.farmGroupId}"),
                        ),
                        separatorBuilder: (context, index) => Divider(
                          height: 3,
                        ),
                        itemCount: _controller.farms.length,
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _actionSelectFarm(int farmIndex) {
    _controller.setFarm(_controller.farms[farmIndex]);
    ExtendedNavigator.root.push(AppRoutes.farmDetails);
  }
}
