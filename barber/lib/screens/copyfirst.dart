import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          expandedHeight: 100.0,
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Barbearias'),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 250.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Stack(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                            bottomRight: Radius.circular(36)),
                      ))
                    ],
                  ));
            },
            childCount: 4,
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Empresas que pagam menos'),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    ));
  }
}
