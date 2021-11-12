import 'package:flutter/material.dart';
import 'package:lelo/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Live Auctions',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semibold,
                  ),
                ),
                Text('For your collections',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontStyle: italic,
                    )),
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            child: Ink(
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: backgroundColor2,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  size: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
      ],
    );
  }
}
