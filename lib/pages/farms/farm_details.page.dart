import 'package:easy_farm/controllers/app_controller.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:easy_farm/models/Cultures.dart';
import 'package:easy_farm/models/Farm.dart';
import 'package:flutter/material.dart';

class FarmDetails extends StatelessWidget {
  final ApplicationController appController = getIt<ApplicationController>();
  @override
  Widget build(BuildContext context) {
    Farms farm = appController.currentFarm;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("${farm.attributes.name}"),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: [
            Row(
              children: [
                Text(
                  "Id: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.id}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Name: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.name}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Area: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.area}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Owner: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.owner}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Has Perenial: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.hasPerenial}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Default: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.idDefault}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Latitude: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.latitude}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Longitude: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.longitude}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Productive Area: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.productiveArea}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Farm Group Id: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${farm.attributes.farmGroupId}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Cultures: ",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Expanded(
                  child: Text(
                    "${_buildCultures(farm.attributes.cultures)}",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildCultures(List<Cultures> l) {
    String culturesList = "";
    l.forEach((e) {
      if (e != l.last) {
        culturesList += "${e.name}, ";
      } else {
        culturesList += "${e.name}";
      }
    });
    return culturesList;
  }
}
