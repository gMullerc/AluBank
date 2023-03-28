import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/sections/box_card.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text('Pontos da Conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          BoxCard(
            boxContent: _AccountPointsActivity(),
          ),
        ],
      ),
    );
  }
}

class _AccountPointsActivity extends StatelessWidget {
  const _AccountPointsActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Pontos totais:'),
        ),
        Text(
          '3000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4),
                  child:
                      ColorDot(color: ThemeColors.recentActivity['delivery']),
                ),
                Column(
                  children: [
                    Text('Entrega grátis: 15000pts'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4),
                  child:
                      ColorDot(color: ThemeColors.recentActivity['streaming']),
                ),
                Column(
                  children: [
                    Text('1 mês de streaming: 30000pts'),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
