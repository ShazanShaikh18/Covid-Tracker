import 'package:covid_19/View/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  DetailScreen(
      {required this.image,
      required this.name,
      required this.totalCases,
      required this.totalDeaths,
      required this.todayRecovered,
      required this.active,
      required this.critical,
      required this.totalRecovered,
      required this.test});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                      ),
                      ReUsableRow(
                          title: 'Total Cases',
                          value: widget.totalCases.toString()),
                      ReUsableRow(
                          title: 'Total Recovered',
                          value: widget.totalRecovered.toString()),
                      ReUsableRow(
                          title: 'Total Deaths',
                          value: widget.totalDeaths.toString()),
                      ReUsableRow(
                          title: 'Critical', value: widget.critical.toString()),
                      ReUsableRow(
                          title: 'Today Recovered',
                          value: widget.todayRecovered.toString()),
                      ReUsableRow(
                          title: 'Active Cases',
                          value: widget.active.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
