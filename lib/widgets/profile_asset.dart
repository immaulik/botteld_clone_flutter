import 'package:flutter/material.dart';

class ProfileAsset extends StatelessWidget {
  const ProfileAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts =
        List.generate(10, (index) => {"id": index, "name": "Product $index"})
            .toList();
    return GridView.builder(
      shrinkWrap: false,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              alignment: Alignment.center,
              child: const GridTile(
                child: Center(
                  child: Icon(
                    Icons.web_asset,
                    size: 60,
                  ),
                ),
                header: Text(
                  '2',
                  textAlign: TextAlign.right,
                ),
                footer: Center(
                  child: Text('Item-1'),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
