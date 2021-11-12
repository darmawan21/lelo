import 'package:flutter/material.dart';
import 'package:lelo/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icon_notification.png',
                  width: 24,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget searchbar() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 48,
                    width: 263,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor2,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: borderColor,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icon_search.png',
                            color: secondaryTextColor,
                            width: 24,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'Search',
                                hintStyle: secondaryTextStyle,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icon_filter.png',
                  width: 16,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'Fine Art',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                    width: 0.5,
                  ),
                ),
                child: Text(
                  'Jewelry',
                  style: primaryTextStyle.copyWith(
                    color: blackTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                    width: 0.5,
                  ),
                ),
                child: Text(
                  'Vehicles',
                  style: primaryTextStyle.copyWith(
                    color: blackTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                    width: 0.5,
                  ),
                ),
                child: Text(
                  'Real Estate',
                  style: primaryTextStyle.copyWith(
                    color: blackTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                    width: 0.5,
                  ),
                ),
                child: Text(
                  'Fine Art',
                  style: primaryTextStyle.copyWith(
                    color: blackTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                    width: 0.5,
                  ),
                ),
                child: Text(
                  'Fine Art',
                  style: primaryTextStyle.copyWith(
                    color: blackTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        searchbar(),
        categories(),
      ],
    );
  }
}
