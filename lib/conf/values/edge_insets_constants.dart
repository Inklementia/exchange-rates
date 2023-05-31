// Flutter imports:
import 'package:flutter/material.dart';

abstract class MyEdgeInsets {
  //
  static const zero = EdgeInsets.zero;

  //
  // All
  //
  static const all1 = EdgeInsets.all(1);
  static const all2 = EdgeInsets.all(2);
  static const all4 = EdgeInsets.all(4);
  static const all6 = EdgeInsets.all(6);
  static const all8 = EdgeInsets.all(8);
  static const all11 = EdgeInsets.all(11);

  static const all12 = EdgeInsets.all(12);
  static const all15 = EdgeInsets.all(15);
  static const all16 = EdgeInsets.all(16);
  static const all18 = EdgeInsets.all(18);
  static const all20 = EdgeInsets.all(20);
  static const all24 = EdgeInsets.all(24);
  static const all30 = EdgeInsets.all(30);
  static const all32 = EdgeInsets.all(32);

  //
  // Symmetric
  //
  static const v2 = EdgeInsets.symmetric(vertical: 2);
  static const v4 = EdgeInsets.symmetric(vertical: 4);
  static const v6 = EdgeInsets.symmetric(vertical: 6);
  static const v8 = EdgeInsets.symmetric(vertical: 8);
  static const v10 = EdgeInsets.symmetric(vertical: 10);
  static const v12 = EdgeInsets.symmetric(vertical: 12);
  static const v14 = EdgeInsets.symmetric(vertical: 14);
  static const v16 = EdgeInsets.symmetric(vertical: 16);
  static const v24 = EdgeInsets.symmetric(vertical: 24);

  static const h2 = EdgeInsets.symmetric(horizontal: 2);
  static const h4 = EdgeInsets.symmetric(horizontal: 4);
  static const h6 = EdgeInsets.symmetric(horizontal: 6);
  static const h10 = EdgeInsets.symmetric(horizontal: 10);
  static const h12 = EdgeInsets.symmetric(horizontal: 12);
  static const h16 = EdgeInsets.symmetric(horizontal: 16);
  static const h20 = EdgeInsets.symmetric(horizontal: 20);
  static const h24 = EdgeInsets.symmetric(horizontal: 24);
  static const h32 = EdgeInsets.symmetric(horizontal: 32);
  static const h36 = EdgeInsets.symmetric(horizontal: 36);
  static const h60 = EdgeInsets.symmetric(horizontal: 60);
  static const h72 = EdgeInsets.symmetric(horizontal: 72);

  //
  // Only
  //
  static const left4 = EdgeInsets.only(left: 4);
  static const left10 = EdgeInsets.only(left: 10);
  static const left16 = EdgeInsets.only(left: 16);
  static const left20 = EdgeInsets.only(left: 20);
  static const left24 = EdgeInsets.only(left: 24);
  static const left36 = EdgeInsets.only(left: 36);

  static const right4 = EdgeInsets.only(right: 4);
  static const right6 = EdgeInsets.only(right: 6);
  static const right8 = EdgeInsets.only(right: 8);
  static const right10 = EdgeInsets.only(right: 10);
  static const right12 = EdgeInsets.only(right: 12);
  static const right16 = EdgeInsets.only(right: 16);
  static const right20 = EdgeInsets.only(right: 20);

  static const right10top20 = EdgeInsets.only(right: 10, top: 20);
  static const right20top20 = EdgeInsets.only(right: 20, top: 20);

  static const top2 = EdgeInsets.only(top: 2);
  static const top4 = EdgeInsets.only(top: 4);
  static const top5 = EdgeInsets.only(top: 5);
  static const top6 = EdgeInsets.only(top: 6);
  static const top8 = EdgeInsets.only(top: 8);
  static const top10 = EdgeInsets.only(top: 10);
  static const top12 = EdgeInsets.only(top: 12);
  static const top16 = EdgeInsets.only(top: 16);
  static const top20 = EdgeInsets.only(top: 20);
  static const top24 = EdgeInsets.only(top: 24);
  static const top40 = EdgeInsets.only(top: 40);
  static const top60 = EdgeInsets.only(top: 60);

  static const bottom2 = EdgeInsets.only(bottom: 2);
  static const bottom4 = EdgeInsets.only(bottom: 4);
  static const bottom8 = EdgeInsets.only(bottom: 8);
  static const bottom10 = EdgeInsets.only(bottom: 10);
  static const bottom12 = EdgeInsets.only(bottom: 12);
  static const bottom16 = EdgeInsets.only(bottom: 16);
  static const bottom20 = EdgeInsets.only(bottom: 20);
  static const bottom24 = EdgeInsets.only(bottom: 24);
  static const bottom26 = EdgeInsets.only(bottom: 26);
  static const bottom28 = EdgeInsets.only(bottom: 28);
  static const bottom30 = EdgeInsets.only(bottom: 30);
  static const bottom32 = EdgeInsets.only(bottom: 32);
  static const bottom48 = EdgeInsets.only(bottom: 48);
  static const bottom64 = EdgeInsets.only(bottom: 64);
  static const bottom140 = EdgeInsets.only(bottom: 140);

  static const top10bottom20 = EdgeInsets.only(top: 10, bottom: 20);

  //
  // h2v
  //

  static const h2v4 = EdgeInsets.symmetric(
    horizontal: 2,
    vertical: 4,
  );

  //
  // h4v
  //

  static const h4v2 = EdgeInsets.symmetric(
    horizontal: 4,
    vertical: 2,
  );

  //
  // h8v
  //
  static const h8v4 = EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 4,
  );

  static const h8v16 = EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 16,
  );

  static const h8v24 = EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 24,
  );

  //
  // h10v
  //

  static const h10v12 = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 12,
  );

  //
  // h12v
  //
  static const h12v4 = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 4,
  );
  static const h12v8 = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 8,
  );
  static const h12v10 = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 10,
  );
  static const h12v16 = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 16,
  );

  ///
  ///h14v
  ///

  static const h14v10 = EdgeInsets.symmetric(
    horizontal: 14,
    vertical: 10,
  );

  //
  // h16v
  //
  static const h16v8 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 8,
  );
  static const h16v12 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  );
  static const h16v14 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 14,
  );
  static const h22v16 = EdgeInsets.symmetric(
    horizontal: 22,
    vertical: 16,
  );

  static const h16v20 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 20,
  );
  static const h16v24 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 24,
  );

  static const h40v12 = EdgeInsets.symmetric(
    horizontal: 40,
    vertical: 12,
  );

  //
  // h20v
  //
  static const h20v12 = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 12,
  );

  static const h20v15 = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 15,
  );

  static const h20v16 = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 16,
  );
  static const h20v24 = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 24,
  );

  //
  // h24v
  //
  static const h24v16 = EdgeInsets.symmetric(
    horizontal: 24,
    vertical: 16,
  );

  //
  // h32v
  //
  static const h32v8 = EdgeInsets.symmetric(
    horizontal: 32,
    vertical: 8,
  );

  static const h32v12 = EdgeInsets.symmetric(
    horizontal: 32,
    vertical: 12,
  );

  static const h32v14 = EdgeInsets.symmetric(
    horizontal: 32,
    vertical: 14,
  );

  static const h32v16 = EdgeInsets.symmetric(
    horizontal: 32,
    vertical: 16,
  );

  //
  // v30h
  //
  static const v30h26 = EdgeInsets.symmetric(
    horizontal: 26,
    vertical: 30,
  );

  //
  // Custom
  //

  static const v5h2 = EdgeInsets.symmetric(vertical: 5, horizontal: 2);

  static const v4h6 = EdgeInsets.symmetric(vertical: 4, horizontal: 6);

  static const v6h8 = EdgeInsets.symmetric(vertical: 6, horizontal: 8);

  static const v3h2 = EdgeInsets.symmetric(vertical: 3, horizontal: 2);

  static const v13h16 = EdgeInsets.symmetric(vertical: 13, horizontal: 16);

  static const h16t16 = EdgeInsets.only(left: 16, right: 16, top: 16);

  static const l16r30v10 =
      EdgeInsets.only(left: 16, right: 30, top: 10, bottom: 10);

  static const b0other30 = EdgeInsets.only(left: 30, right: 30, top: 30);

  static const b0other20 = EdgeInsets.only(left: 20, right: 20, top: 20);

  static const b0other16 = EdgeInsets.only(left: 16, right: 16, top: 16);

  static const h20t20 = EdgeInsets.only(left: 20, right: 20, top: 20);

  static const bottom64all4 = EdgeInsets.fromLTRB(4, 4, 4, 64);

  static const h40 = EdgeInsets.symmetric(horizontal: 40);

  //
  static const left76right16 = EdgeInsets.only(left: 76, right: 16);

  static const all16top8 =
      EdgeInsets.only(top: 8, left: 16, bottom: 16, right: 16);

  static const top5bottom7h18 =
      EdgeInsets.only(top: 4, right: 16, bottom: 7, left: 18);
}
