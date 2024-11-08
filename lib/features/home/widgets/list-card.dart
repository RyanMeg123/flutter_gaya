import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gaya_2/models/tab_model.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ListCard extends StatefulWidget {
  final List<Item> CardList;
  const ListCard({super.key, required this.CardList});
  @override
  State<StatefulWidget> createState() {
    return _ListCardState();
  }
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 28, right: 28),
      child: Column(
        children: [
          const SizedBox(height: 30),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1),
              itemCount: widget.CardList.length,
              itemBuilder: (context, index) {
                final item = widget.CardList[index];
                return SizedBox(
                  height: 144,
                  child: Card(
                    color: const Color.fromRGBO(43, 57, 185, 1),
                    child: Stack(children: [
                      Positioned(
                        bottom: 10,
                        right: 0,
                        child: Opacity(
                          opacity: 1, // 设置水印透明度
                          child: Image.asset(
                            'assets/images/home/Vector1.png',
                            // width: 80, // 设置水印图片大小
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(item.iconUrl ?? ''),
                            const SizedBox(
                              height: 19,
                            ),
                            Text(
                              item.typeName,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            AutoSizeText(
                              item.shortName,
                              maxLines: 1,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${item.collectionNumber} Collections',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
