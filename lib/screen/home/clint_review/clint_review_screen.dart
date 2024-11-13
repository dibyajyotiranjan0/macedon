import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:macedon/static/color.dart';

import '../../coupon/coupon_screen.dart';

Widget clintReview(BuildContext context) {
  return Column(
    children: [
      Align(
        alignment: Alignment.center,
        child: Text(
          "Our Clint Review",
          style: TextStyle(
              color: Colo.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      SizedBox(
        height: 200,
        width: double.maxFinite,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, ind) {
              return SizedBox(
                width: 200,
                child: Card(
                  color: Colo.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        // selected: true,
                        // selectedTileColor: Colors.black,
                        leading: ClipRRect(
                          child: CachedNetworkImage(
                            width: 30,
                            height: 30,
                            imageUrl:
                                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                          ),
                        ),
                        title: Text(
                          "Debashis",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        subtitle: SizedBox(
                          height: 30,
                          // width: 100,
                          child: ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Icon(
                                  Icons.star,
                                  size: 12,
                                );
                              }),
                        ),
                        titleAlignment: ListTileTitleAlignment.titleHeight,
                      ),
                      Padding(
                        // color: Colors.black,
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'War House',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(height: 4.0),
                            // ListTile(
                            //   contentPadding: EdgeInsets.zero,
                            //   titleTextStyle: TextStyle(
                            //       color: Colors.black,
                            //       fontSize: 12,
                            //       fontWeight: FontWeight.bold),
                            //   minLeadingWidth: 10,
                            //   horizontalTitleGap: 5,
                            //   leading: Icon(
                            //     Icons.location_on,
                            //     // size: 16.0,
                            //     // color: Colors.grey[700],
                            //   ),
                            //   // SizedBox(width: 4.0),
                            //   title: Text('Bhubaneswar, Nayapalli'),
                            //   // ],
                            // ),
                            ReadMoreText(
                              text:
                                  " and typeset standard dummy text ever book. It has survived text ever book. It has survived nnot only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset ",
                              trimLines:
                                  2, // Number of lines to show before overflow
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    ],
  );
}

class ReadMoreText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ReadMoreText({
    required this.text,
    this.trimLines = 2,
  });

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool isReadMore = true;

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = TextStyle(color: Colo.black, fontSize: 16);
    final linkTextStyle = TextStyle(color: Colo.blue, fontSize: 16);

    return LayoutBuilder(
      builder: (context, constraints) {
        final span = TextSpan(
          text: widget.text,
          style: defaultTextStyle,
        );

        final tp = TextPainter(
          text: span,
          maxLines: widget.trimLines,
          textDirection: TextDirection.ltr,
        );

        tp.layout(maxWidth: constraints.maxWidth);

        if (tp.didExceedMaxLines) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              isReadMore
                  ? RichText(
                      text: TextSpan(
                        style: defaultTextStyle,
                        children: [
                          TextSpan(
                            text: widget.text.substring(
                                    0,
                                    tp
                                        .getPositionForOffset(Offset(
                                            tp.size.width, tp.size.height))
                                        .offset) +
                                '... ',
                          ),
                          TextSpan(
                            text: 'Read more',
                            style: linkTextStyle,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CouponScreen()));
                                // setState(() {
                                //   isReadMore = !isReadMore;
                                // });
                              },
                          ),
                        ],
                      ),
                    )
                  : RichText(
                      text: TextSpan(
                        style: defaultTextStyle,
                        children: [
                          TextSpan(
                            text: widget.text,
                          ),
                          TextSpan(
                            text: ' Show less',
                            style: linkTextStyle,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                setState(() {
                                  isReadMore = !isReadMore;
                                });
                              },
                          ),
                        ],
                      ),
                    ),
            ],
          );
        } else {
          return Text(widget.text, style: defaultTextStyle);
        }
      },
    );
  }
}
