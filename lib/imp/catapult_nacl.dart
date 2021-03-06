part of xpx_crypto.ed25519;

// ignore: avoid_classes_with_only_static_members
class CatapultNacl {
  static final Uint8List _0 =
      Uint8List.fromList([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]); //16
  static final Uint8List _9 = Uint8List.fromList([
    9,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ]); //32

  static final Int64List _gf0 =
      Int64List.fromList([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]); //16
  static final Int64List _gf1 =
      Int64List.fromList([1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]); //16
  static final Int64List _121665 = Int64List.fromList(
      [0xDB41, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]); //16

  static final Int64List _D = Int64List.fromList([
    0x78a3,
    0x1359,
    0x4dca,
    0x75eb,
    0xd8ab,
    0x4141,
    0x0a4d,
    0x0070,
    0xe898,
    0x7779,
    0x4079,
    0x8cc7,
    0xfe73,
    0x2b6f,
    0x6cee,
    0x5203
  ]);

  static final Int64List _D2 = Int64List.fromList([
    0xf159,
    0x26b2,
    0x9b94,
    0xebd6,
    0xb156,
    0x8283,
    0x149a,
    0x00e0,
    0xd130,
    0xeef3,
    0x80f2,
    0x198e,
    0xfce7,
    0x56df,
    0xd9dc,
    0x2406
  ]);
  static final Int64List _X = Int64List.fromList([
    0xd51a,
    0x8f25,
    0x2d60,
    0xc956,
    0xa7b2,
    0x9525,
    0xc760,
    0x692c,
    0xdc5c,
    0xfdd6,
    0xe231,
    0xc0a4,
    0x53fe,
    0xcd6e,
    0x36d3,
    0x2169
  ]);
  static final Int64List _Y = Int64List.fromList([
    0x6658,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666,
    0x6666
  ]);
  static final Int64List _I = Int64List.fromList([
    0xa0b0,
    0x4a0e,
    0x1b27,
    0xc4ee,
    0xe478,
    0xad2f,
    0x1806,
    0x2f43,
    0xd7a7,
    0x3dfb,
    0x0099,
    0x2b4d,
    0xdf0b,
    0x4fc1,
    0x2480,
    0x2b83
  ]);

  static int _vn(
      Uint8List x, final int xoff, Uint8List y, final int yoff, int n) {
    int i, d = 0;
    for (i = 0; i < n; i++) {
      d |= (x[i + xoff] ^ y[i + yoff]) & 0xff;
    }
    return (1 & (Int32(d - 1).shiftRightUnsigned(8).toInt())) - 1;
  }

  static int _crypto_verify_16(
      Uint8List x, final int xoff, Uint8List y, final int yoff) {
    return _vn(x, xoff, y, yoff, 16);
  }

  static int crypto_verify_16(Uint8List x, Uint8List y) {
    return _crypto_verify_16(x, 0, y, 0);
  }

  static int _crypto_verify_32(
      Uint8List x, final int xoff, Uint8List y, final int yoff) {
    return _vn(x, xoff, y, yoff, 32);
  }

  static int crypto_verify_32(Uint8List x, Uint8List y) {
    return _crypto_verify_32(x, 0, y, 0);
  }

  static void _core_salsa20(
      Uint8List o, Uint8List p, Uint8List k, Uint8List c) {
    int j0 = c[0] & 0xff |
            (c[1] & 0xff) << 8 |
            (c[2] & 0xff) << 16 |
            (c[3] & 0xff) << 24,
        j1 = k[0] & 0xff |
            (k[1] & 0xff) << 8 |
            (k[2] & 0xff) << 16 |
            (k[3] & 0xff) << 24,
        j2 = k[4] & 0xff |
            (k[5] & 0xff) << 8 |
            (k[6] & 0xff) << 16 |
            (k[7] & 0xff) << 24,
        j3 = k[8] & 0xff |
            (k[9] & 0xff) << 8 |
            (k[10] & 0xff) << 16 |
            (k[11] & 0xff) << 24,
        j4 = k[12] & 0xff |
            (k[13] & 0xff) << 8 |
            (k[14] & 0xff) << 16 |
            (k[15] & 0xff) << 24,
        j5 = c[4] & 0xff |
            (c[5] & 0xff) << 8 |
            (c[6] & 0xff) << 16 |
            (c[7] & 0xff) << 24,
        j6 = p[0] & 0xff |
            (p[1] & 0xff) << 8 |
            (p[2] & 0xff) << 16 |
            (p[3] & 0xff) << 24,
        j7 = p[4] & 0xff |
            (p[5] & 0xff) << 8 |
            (p[6] & 0xff) << 16 |
            (p[7] & 0xff) << 24,
        j8 = p[8] & 0xff |
            (p[9] & 0xff) << 8 |
            (p[10] & 0xff) << 16 |
            (p[11] & 0xff) << 24,
        j9 = p[12] & 0xff |
            (p[13] & 0xff) << 8 |
            (p[14] & 0xff) << 16 |
            (p[15] & 0xff) << 24,
        j10 = c[8] & 0xff |
            (c[9] & 0xff) << 8 |
            (c[10] & 0xff) << 16 |
            (c[11] & 0xff) << 24,
        j11 = k[16] & 0xff |
            (k[17] & 0xff) << 8 |
            (k[18] & 0xff) << 16 |
            (k[19] & 0xff) << 24,
        j12 = k[20] & 0xff |
            (k[21] & 0xff) << 8 |
            (k[22] & 0xff) << 16 |
            (k[23] & 0xff) << 24,
        j13 = k[24] & 0xff |
            (k[25] & 0xff) << 8 |
            (k[26] & 0xff) << 16 |
            (k[27] & 0xff) << 24,
        j14 = k[28] & 0xff |
            (k[29] & 0xff) << 8 |
            (k[30] & 0xff) << 16 |
            (k[31] & 0xff) << 24,
        j15 = c[12] & 0xff |
            (c[13] & 0xff) << 8 |
            (c[14] & 0xff) << 16 |
            (c[15] & 0xff) << 24;

    Int32 x0 = Int32(j0),
        x1 = Int32(j1),
        x2 = Int32(j2),
        x3 = Int32(j3),
        x4 = Int32(j4),
        x5 = Int32(j5),
        x6 = Int32(j6),
        x7 = Int32(j7),
        x8 = Int32(j8),
        x9 = Int32(j9),
        x10 = Int32(j10),
        x11 = Int32(j11),
        x12 = Int32(j12),
        x13 = Int32(j13),
        x14 = Int32(j14),
        x15 = Int32(j15),
        u;

    for (int i = 0; i < 20; i += 2) {
      u = x0 + x12 | 0;
      x4 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x4 + x0 | 0;
      x8 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x8 + x4 | 0;
      x12 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x12 + x8 | 0;
      x0 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x5 + x1 | 0;
      x9 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x9 + x5 | 0;
      x13 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x13 + x9 | 0;
      x1 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x1 + x13 | 0;
      x5 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x10 + x6 | 0;
      x14 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x14 + x10 | 0;
      x2 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x2 + x14 | 0;
      x6 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x6 + x2 | 0;
      x10 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x15 + x11 | 0;
      x3 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x3 + x15 | 0;
      x7 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x7 + x3 | 0;
      x11 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x11 + x7 | 0;
      x15 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x0 + x3 | 0;
      x1 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x1 + x0 | 0;
      x2 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x2 + x1 | 0;
      x3 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x3 + x2 | 0;
      x0 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x5 + x4 | 0;
      x6 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x6 + x5 | 0;
      x7 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x7 + x6 | 0;
      x4 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x4 + x7 | 0;
      x5 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x10 + x9 | 0;
      x11 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x11 + x10 | 0;
      x8 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x8 + x11 | 0;
      x9 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x9 + x8 | 0;
      x10 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x15 + x14 | 0;
      x12 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x12 + x15 | 0;
      x13 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x13 + x12 | 0;
      x14 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x14 + x13 | 0;
      x15 ^= u << 18 | u.shiftRightUnsigned(32 - 18);
    }
    x0 = x0 + j0 | 0;
    x1 = x1 + j1 | 0;
    x2 = x2 + j2 | 0;
    x3 = x3 + j3 | 0;
    x4 = x4 + j4 | 0;
    x5 = x5 + j5 | 0;
    x6 = x6 + j6 | 0;
    x7 = x7 + j7 | 0;
    x8 = x8 + j8 | 0;
    x9 = x9 + j9 | 0;
    x10 = x10 + j10 | 0;
    x11 = x11 + j11 | 0;
    x12 = x12 + j12 | 0;
    x13 = x13 + j13 | 0;
    x14 = x14 + j14 | 0;
    x15 = x15 + j15 | 0;

    o[0] = (x0.shiftRightUnsigned(0) & 0xff).toInt();
    o[1] = (x0.shiftRightUnsigned(8) & 0xff).toInt();
    o[2] = (x0.shiftRightUnsigned(16) & 0xff).toInt();
    o[3] = (x0.shiftRightUnsigned(24) & 0xff).toInt();

    o[4] = (x1.shiftRightUnsigned(0) & 0xff).toInt();
    o[5] = (x1.shiftRightUnsigned(8) & 0xff).toInt();
    o[6] = (x1.shiftRightUnsigned(16) & 0xff).toInt();
    o[7] = (x1.shiftRightUnsigned(24) & 0xff).toInt();

    o[8] = (x2.shiftRightUnsigned(0) & 0xff).toInt();
    o[9] = (x2.shiftRightUnsigned(8) & 0xff).toInt();
    o[10] = (x2.shiftRightUnsigned(16) & 0xff).toInt();
    o[11] = (x2.shiftRightUnsigned(24) & 0xff).toInt();

    o[12] = (x3.shiftRightUnsigned(0) & 0xff).toInt();
    o[13] = (x3.shiftRightUnsigned(8) & 0xff).toInt();
    o[14] = (x3.shiftRightUnsigned(16) & 0xff).toInt();
    o[15] = (x3.shiftRightUnsigned(24) & 0xff).toInt();

    o[16] = (x4.shiftRightUnsigned(0) & 0xff).toInt();
    o[17] = (x4.shiftRightUnsigned(8) & 0xff).toInt();
    o[18] = (x4.shiftRightUnsigned(16) & 0xff).toInt();
    o[19] = (x4.shiftRightUnsigned(24) & 0xff).toInt();

    o[20] = (x5.shiftRightUnsigned(0) & 0xff).toInt();
    o[21] = (x5.shiftRightUnsigned(8) & 0xff).toInt();
    o[22] = (x5.shiftRightUnsigned(16) & 0xff).toInt();
    o[23] = (x5.shiftRightUnsigned(24) & 0xff).toInt();

    o[24] = (x6.shiftRightUnsigned(0) & 0xff).toInt();
    o[25] = (x6.shiftRightUnsigned(8) & 0xff).toInt();
    o[26] = (x6.shiftRightUnsigned(16) & 0xff).toInt();
    o[27] = (x6.shiftRightUnsigned(24) & 0xff).toInt();

    o[28] = (x7.shiftRightUnsigned(0) & 0xff).toInt();
    o[29] = (x7.shiftRightUnsigned(8) & 0xff).toInt();
    o[30] = (x7.shiftRightUnsigned(16) & 0xff).toInt();
    o[31] = (x7.shiftRightUnsigned(24) & 0xff).toInt();

    o[32] = (x8.shiftRightUnsigned(0) & 0xff).toInt();
    o[33] = (x8.shiftRightUnsigned(8) & 0xff).toInt();
    o[34] = (x8.shiftRightUnsigned(16) & 0xff).toInt();
    o[35] = (x8.shiftRightUnsigned(24) & 0xff).toInt();

    o[36] = (x9.shiftRightUnsigned(0) & 0xff).toInt();
    o[37] = (x9.shiftRightUnsigned(8) & 0xff).toInt();
    o[38] = (x9.shiftRightUnsigned(16) & 0xff).toInt();
    o[39] = (x9.shiftRightUnsigned(24) & 0xff).toInt();

    o[40] = (x10.shiftRightUnsigned(0) & 0xff).toInt();
    o[41] = (x10.shiftRightUnsigned(8) & 0xff).toInt();
    o[42] = (x10.shiftRightUnsigned(16) & 0xff).toInt();
    o[43] = (x10.shiftRightUnsigned(24) & 0xff).toInt();

    o[44] = (x11.shiftRightUnsigned(0) & 0xff).toInt();
    o[45] = (x11.shiftRightUnsigned(8) & 0xff).toInt();
    o[46] = (x11.shiftRightUnsigned(16) & 0xff).toInt();
    o[47] = (x11.shiftRightUnsigned(24) & 0xff).toInt();

    o[48] = (x12.shiftRightUnsigned(0) & 0xff).toInt();
    o[49] = (x12.shiftRightUnsigned(8) & 0xff).toInt();
    o[50] = (x12.shiftRightUnsigned(16) & 0xff).toInt();
    o[51] = (x12.shiftRightUnsigned(24) & 0xff).toInt();

    o[52] = (x13.shiftRightUnsigned(0) & 0xff).toInt();
    o[53] = (x13.shiftRightUnsigned(8) & 0xff).toInt();
    o[54] = (x13.shiftRightUnsigned(16) & 0xff).toInt();
    o[55] = (x13.shiftRightUnsigned(24) & 0xff).toInt();

    o[56] = (x14.shiftRightUnsigned(0) & 0xff).toInt();
    o[57] = (x14.shiftRightUnsigned(8) & 0xff).toInt();
    o[58] = (x14.shiftRightUnsigned(16) & 0xff).toInt();
    o[59] = (x14.shiftRightUnsigned(24) & 0xff).toInt();

    o[60] = (x15.shiftRightUnsigned(0) & 0xff).toInt();
    o[61] = (x15.shiftRightUnsigned(8) & 0xff).toInt();
    o[62] = (x15.shiftRightUnsigned(16) & 0xff).toInt();
    o[63] = (x15.shiftRightUnsigned(24) & 0xff).toInt();
  }

  static void _core_hsalsa20(
      Uint8List o, Uint8List p, Uint8List k, Uint8List c) {
    int j0 = c[0] & 0xff |
            (c[1] & 0xff) << 8 |
            (c[2] & 0xff) << 16 |
            (c[3] & 0xff) << 24,
        j1 = k[0] & 0xff |
            (k[1] & 0xff) << 8 |
            (k[2] & 0xff) << 16 |
            (k[3] & 0xff) << 24,
        j2 = k[4] & 0xff |
            (k[5] & 0xff) << 8 |
            (k[6] & 0xff) << 16 |
            (k[7] & 0xff) << 24,
        j3 = k[8] & 0xff |
            (k[9] & 0xff) << 8 |
            (k[10] & 0xff) << 16 |
            (k[11] & 0xff) << 24,
        j4 = k[12] & 0xff |
            (k[13] & 0xff) << 8 |
            (k[14] & 0xff) << 16 |
            (k[15] & 0xff) << 24,
        j5 = c[4] & 0xff |
            (c[5] & 0xff) << 8 |
            (c[6] & 0xff) << 16 |
            (c[7] & 0xff) << 24,
        j6 = p[0] & 0xff |
            (p[1] & 0xff) << 8 |
            (p[2] & 0xff) << 16 |
            (p[3] & 0xff) << 24,
        j7 = p[4] & 0xff |
            (p[5] & 0xff) << 8 |
            (p[6] & 0xff) << 16 |
            (p[7] & 0xff) << 24,
        j8 = p[8] & 0xff |
            (p[9] & 0xff) << 8 |
            (p[10] & 0xff) << 16 |
            (p[11] & 0xff) << 24,
        j9 = p[12] & 0xff |
            (p[13] & 0xff) << 8 |
            (p[14] & 0xff) << 16 |
            (p[15] & 0xff) << 24,
        j10 = c[8] & 0xff |
            (c[9] & 0xff) << 8 |
            (c[10] & 0xff) << 16 |
            (c[11] & 0xff) << 24,
        j11 = k[16] & 0xff |
            (k[17] & 0xff) << 8 |
            (k[18] & 0xff) << 16 |
            (k[19] & 0xff) << 24,
        j12 = k[20] & 0xff |
            (k[21] & 0xff) << 8 |
            (k[22] & 0xff) << 16 |
            (k[23] & 0xff) << 24,
        j13 = k[24] & 0xff |
            (k[25] & 0xff) << 8 |
            (k[26] & 0xff) << 16 |
            (k[27] & 0xff) << 24,
        j14 = k[28] & 0xff |
            (k[29] & 0xff) << 8 |
            (k[30] & 0xff) << 16 |
            (k[31] & 0xff) << 24,
        j15 = c[12] & 0xff |
            (c[13] & 0xff) << 8 |
            (c[14] & 0xff) << 16 |
            (c[15] & 0xff) << 24;

    Int32 x0 = Int32(j0),
        x1 = Int32(j1),
        x2 = Int32(j2),
        x3 = Int32(j3),
        x4 = Int32(j4),
        x5 = Int32(j5),
        x6 = Int32(j6),
        x7 = Int32(j7),
        x8 = Int32(j8),
        x9 = Int32(j9),
        x10 = Int32(j10),
        x11 = Int32(j11),
        x12 = Int32(j12),
        x13 = Int32(j13),
        x14 = Int32(j14),
        x15 = Int32(j15),
        u;

    for (int i = 0; i < 20; i += 2) {
      u = x0 + x12 | 0;
      x4 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x4 + x0 | 0;
      x8 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x8 + x4 | 0;
      x12 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x12 + x8 | 0;
      x0 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x5 + x1 | 0;
      x9 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x9 + x5 | 0;
      x13 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x13 + x9 | 0;
      x1 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x1 + x13 | 0;
      x5 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x10 + x6 | 0;
      x14 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x14 + x10 | 0;
      x2 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x2 + x14 | 0;
      x6 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x6 + x2 | 0;
      x10 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x15 + x11 | 0;
      x3 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x3 + x15 | 0;
      x7 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x7 + x3 | 0;
      x11 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x11 + x7 | 0;
      x15 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x0 + x3 | 0;
      x1 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x1 + x0 | 0;
      x2 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x2 + x1 | 0;
      x3 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x3 + x2 | 0;
      x0 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x5 + x4 | 0;
      x6 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x6 + x5 | 0;
      x7 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x7 + x6 | 0;
      x4 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x4 + x7 | 0;
      x5 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x10 + x9 | 0;
      x11 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x11 + x10 | 0;
      x8 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x8 + x11 | 0;
      x9 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x9 + x8 | 0;
      x10 ^= u << 18 | u.shiftRightUnsigned(32 - 18);

      u = x15 + x14 | 0;
      x12 ^= u << 7 | u.shiftRightUnsigned(32 - 7);
      u = x12 + x15 | 0;
      x13 ^= u << 9 | u.shiftRightUnsigned(32 - 9);
      u = x13 + x12 | 0;
      x14 ^= u << 13 | u.shiftRightUnsigned(32 - 13);
      u = x14 + x13 | 0;
      x15 ^= u << 18 | u.shiftRightUnsigned(32 - 18);
    }

    o[0] = (x0.shiftRightUnsigned(0) & 0xff).toInt();
    o[1] = (x0.shiftRightUnsigned(8) & 0xff).toInt();
    o[2] = (x0.shiftRightUnsigned(16) & 0xff).toInt();
    o[3] = (x0.shiftRightUnsigned(24) & 0xff).toInt();

    o[4] = (x5.shiftRightUnsigned(0) & 0xff).toInt();
    o[5] = (x5.shiftRightUnsigned(8) & 0xff).toInt();
    o[6] = (x5.shiftRightUnsigned(16) & 0xff).toInt();
    o[7] = (x5.shiftRightUnsigned(24) & 0xff).toInt();

    o[8] = (x10.shiftRightUnsigned(0) & 0xff).toInt();
    o[9] = (x10.shiftRightUnsigned(8) & 0xff).toInt();
    o[10] = (x10.shiftRightUnsigned(16) & 0xff).toInt();
    o[11] = (x10.shiftRightUnsigned(24) & 0xff).toInt();

    o[12] = (x15.shiftRightUnsigned(0) & 0xff).toInt();
    o[13] = (x15.shiftRightUnsigned(8) & 0xff).toInt();
    o[14] = (x15.shiftRightUnsigned(16) & 0xff).toInt();
    o[15] = (x15.shiftRightUnsigned(24) & 0xff).toInt();

    o[16] = (x6.shiftRightUnsigned(0) & 0xff).toInt();
    o[17] = (x6.shiftRightUnsigned(8) & 0xff).toInt();
    o[18] = (x6.shiftRightUnsigned(16) & 0xff).toInt();
    o[19] = (x6.shiftRightUnsigned(24) & 0xff).toInt();

    o[20] = (x7.shiftRightUnsigned(0) & 0xff).toInt();
    o[21] = (x7.shiftRightUnsigned(8) & 0xff).toInt();
    o[22] = (x7.shiftRightUnsigned(16) & 0xff).toInt();
    o[23] = (x7.shiftRightUnsigned(24) & 0xff).toInt();

    o[24] = (x8.shiftRightUnsigned(0) & 0xff).toInt();
    o[25] = (x8.shiftRightUnsigned(8) & 0xff).toInt();
    o[26] = (x8.shiftRightUnsigned(16) & 0xff).toInt();
    o[27] = (x8.shiftRightUnsigned(24) & 0xff).toInt();

    o[28] = (x9.shiftRightUnsigned(0) & 0xff).toInt();
    o[29] = (x9.shiftRightUnsigned(8) & 0xff).toInt();
    o[30] = (x9.shiftRightUnsigned(16) & 0xff).toInt();
    o[31] = (x9.shiftRightUnsigned(24) & 0xff).toInt();
  }

  static int crypto_core_salsa20(
      Uint8List out, Uint8List input, Uint8List k, Uint8List c) {
    _core_salsa20(out, input, k, c);
    return 0;
  }

  static int crypto_core_hsalsa20(
      Uint8List out, Uint8List input, Uint8List k, Uint8List c) {
    _core_hsalsa20(out, input, k, c);
    return 0;
  }

  static final Uint8List _sigma = Uint8List.fromList([
    101,
    120,
    112,
    97,
    110,
    100,
    32,
    51,
    50,
    45,
    98,
    121,
    116,
    101,
    32,
    107
  ]);

  static int _crypto_stream_salsa20_xor(Uint8List c, int cpos, Uint8List m,
      int mpos, int b, Uint8List n, Uint8List k) {
    Uint8List z = Uint8List(16), x = Uint8List(64);
    int i;
    Int32 u;
    for (i = 0; i < 16; i++) {
      z[i] = 0;
    }
    for (i = 0; i < 8; i++) {
      z[i] = n[i];
    }
    while (b >= 64) {
      crypto_core_salsa20(x, z, k, _sigma);
      for (i = 0; i < 64; i++)
        c[cpos + i] = ((m[mpos + i] ^ x[i]) & 0xff).toInt();
      u = Int32(1);
      for (i = 8; i < 16; i++) {
        u = u + (z[i] & 0xff) | 0;
        z[i] = (u & 0xff).toInt();
        u = u.shiftRightUnsigned(8);
      }
      b -= 64;
      cpos += 64;
      mpos += 64;
    }
    if (b > 0) {
      crypto_core_salsa20(x, z, k, _sigma);
      for (i = 0; i < b; i++)
        c[cpos + i] = ((m[mpos + i] ^ x[i]) & 0xff).toInt();
    }

    return 0;
  }

  static int crypto_stream_salsa20(
      Uint8List c, int cpos, int b, Uint8List n, Uint8List k) {
    Uint8List z = Uint8List(16), x = Uint8List(64);
    int i;
    Int32 u;
    for (i = 0; i < 16; i++) z[i] = 0;
    for (i = 0; i < 8; i++) z[i] = n[i];
    while (b >= 64) {
      crypto_core_salsa20(x, z, k, _sigma);
      for (i = 0; i < 64; i++) c[cpos + i] = x[i];
      u = Int32(1);
      for (i = 8; i < 16; i++) {
        u = u + (z[i] & 0xff) | 0;
        z[i] = (u & 0xff).toInt();
        u = u.shiftRightUnsigned(8);
      }
      b -= 64;
      cpos += 64;
    }
    if (b > 0) {
      crypto_core_salsa20(x, z, k, _sigma);
      for (i = 0; i < b; i++) c[cpos + i] = x[i];
    }

    return 0;
  }

  static int crypto_stream(
      Uint8List c, int cpos, int d, Uint8List n, Uint8List k) {
    Uint8List s = Uint8List(32);
    crypto_core_hsalsa20(s, n, k, _sigma);
    Uint8List sn = Uint8List(8);
    for (int i = 0; i < 8; i++) sn[i] = n[i + 16];
    return crypto_stream_salsa20(c, cpos, d, sn, s);
  }

  static int crypto_stream_xor(Uint8List c, int cpos, Uint8List m, int mpos,
      int d, Uint8List n, Uint8List k) {
    Uint8List s = Uint8List(32);

    crypto_core_hsalsa20(s, n, k, _sigma);
    Uint8List sn = Uint8List(8);
    for (int i = 0; i < 8; i++) sn[i] = n[i + 16];
    return _crypto_stream_salsa20_xor(c, cpos, m, mpos, d, sn, s);
  }

  static void _set25519(Int64List r, Int64List a) {
    int i;
    for (i = 0; i < 16; i++) r[i] = a[i];
  }

  static void _car25519(Int64List o) {
    int i;
    int v, c = 1;
    for (i = 0; i < 16; i++) {
      v = o[i] + c + 65535;
      c = v >> 16;
      o[i] = v - c * 65536;
    }
    o[0] += c - 1 + 37 * (c - 1);
  }

  static void _sel25519(Int64List p, Int64List q, int b) {
    _sel25519_off(p, 0, q, 0, b);
  }

  static void _sel25519_off(
      Int64List p, final int poff, Int64List q, final int qoff, int b) {
    int t, c = ~(b - 1);
    for (int i = 0; i < 16; i++) {
      t = c & (p[i + poff] ^ q[i + qoff]);
      p[i + poff] ^= t;
      q[i + qoff] ^= t;
    }
  }

  static void _pack25519(Uint8List o, Int64List n, final int noff) {
    int i, j, b;
    Int64List m = Int64List(16), t = Int64List(16);
    for (i = 0; i < 16; i++) t[i] = n[i + noff];
    _car25519(t);
    _car25519(t);
    _car25519(t);
    for (j = 0; j < 2; j++) {
      m[0] = t[0] - 0xffed;
      for (i = 1; i < 15; i++) {
        m[i] = t[i] - 0xffff - ((m[i - 1] >> 16) & 1);
        m[i - 1] &= 0xffff;
      }
      m[15] = t[15] - 0x7fff - ((m[14] >> 16) & 1);
      b = ((m[15] >> 16) & 1);
      m[14] &= 0xffff;
      _sel25519_off(t, 0, m, 0, 1 - b);
    }
    for (i = 0; i < 16; i++) {
      o[2 * i] = (t[i] & 0xff).toInt();
      o[2 * i + 1] = t[i] >> 8;
    }
  }

  static int _neq25519(Int64List a, Int64List b) => _neq25519_off(a, 0, b, 0);

  static int _neq25519_off(
      Int64List a, final int aoff, Int64List b, final int boff) {
    Uint8List c = Uint8List(32), d = Uint8List(32);
    _pack25519(c, a, aoff);
    _pack25519(d, b, boff);
    return _crypto_verify_32(c, 0, d, 0);
  }

  static int _par25519(Int64List a) => _par25519_off(a, 0);

  // ignore: non_constant_identifier_names
  static int _par25519_off(Int64List a, final int aoff) {
    Uint8List d = Uint8List(32);
    _pack25519(d, a, aoff);
    return d[0] & 1;
  }

  static void unpack25519(Int64List o, Uint8List n) {
    int i;
    for (i = 0; i < 16; i++)
      o[i] = (n[2 * i] & 0xff) + (((n[2 * i + 1] << 8) & 0xffff));
    o[15] &= 0x7fff;
  }

  static void _A(Int64List o, Int64List a, Int64List b) {
    _A_off(o, 0, a, 0, b, 0);
  }

  static void _A_off(Int64List o, final int ooff, Int64List a, final int aoff,
      Int64List b, final int boff) {
    int i;
    for (i = 0; i < 16; i++) o[i + ooff] = a[i + aoff] + b[i + boff];
  }

  static void _Z(Int64List o, Int64List a, Int64List b) {
    _Z_off(o, 0, a, 0, b, 0);
  }

  static void _Z_off(Int64List o, final int ooff, Int64List a, final int aoff,
      Int64List b, final int boff) {
    int i;
    for (i = 0; i < 16; i++) o[i + ooff] = a[i + aoff] - b[i + boff];
  }

  static void _M(Int64List o, Int64List a, Int64List b) {
    _M_off(o, 0, a, 0, b, 0);
  }

  static void _M_off(Int64List o, final int ooff, Int64List a, final int aoff,
      Int64List b, final int boff) {
    int v,
        c,
        t0 = 0,
        t1 = 0,
        t2 = 0,
        t3 = 0,
        t4 = 0,
        t5 = 0,
        t6 = 0,
        t7 = 0,
        t8 = 0,
        t9 = 0,
        t10 = 0,
        t11 = 0,
        t12 = 0,
        t13 = 0,
        t14 = 0,
        t15 = 0,
        t16 = 0,
        t17 = 0,
        t18 = 0,
        t19 = 0,
        t20 = 0,
        t21 = 0,
        t22 = 0,
        t23 = 0,
        t24 = 0,
        t25 = 0,
        t26 = 0,
        t27 = 0,
        t28 = 0,
        t29 = 0,
        t30 = 0,
        b0 = b[0 + boff],
        b1 = b[1 + boff],
        b2 = b[2 + boff],
        b3 = b[3 + boff],
        b4 = b[4 + boff],
        b5 = b[5 + boff],
        b6 = b[6 + boff],
        b7 = b[7 + boff],
        b8 = b[8 + boff],
        b9 = b[9 + boff],
        b10 = b[10 + boff],
        b11 = b[11 + boff],
        b12 = b[12 + boff],
        b13 = b[13 + boff],
        b14 = b[14 + boff],
        b15 = b[15 + boff];

    v = a[0 + aoff];
    t0 += v * b0;
    t1 += v * b1;
    t2 += v * b2;
    t3 += v * b3;
    t4 += v * b4;
    t5 += v * b5;
    t6 += v * b6;
    t7 += v * b7;
    t8 += v * b8;
    t9 += v * b9;
    t10 += v * b10;
    t11 += v * b11;
    t12 += v * b12;
    t13 += v * b13;
    t14 += v * b14;
    t15 += v * b15;
    v = a[1 + aoff];
    t1 += v * b0;
    t2 += v * b1;
    t3 += v * b2;
    t4 += v * b3;
    t5 += v * b4;
    t6 += v * b5;
    t7 += v * b6;
    t8 += v * b7;
    t9 += v * b8;
    t10 += v * b9;
    t11 += v * b10;
    t12 += v * b11;
    t13 += v * b12;
    t14 += v * b13;
    t15 += v * b14;
    t16 += v * b15;
    v = a[2 + aoff];
    t2 += v * b0;
    t3 += v * b1;
    t4 += v * b2;
    t5 += v * b3;
    t6 += v * b4;
    t7 += v * b5;
    t8 += v * b6;
    t9 += v * b7;
    t10 += v * b8;
    t11 += v * b9;
    t12 += v * b10;
    t13 += v * b11;
    t14 += v * b12;
    t15 += v * b13;
    t16 += v * b14;
    t17 += v * b15;
    v = a[3 + aoff];
    t3 += v * b0;
    t4 += v * b1;
    t5 += v * b2;
    t6 += v * b3;
    t7 += v * b4;
    t8 += v * b5;
    t9 += v * b6;
    t10 += v * b7;
    t11 += v * b8;
    t12 += v * b9;
    t13 += v * b10;
    t14 += v * b11;
    t15 += v * b12;
    t16 += v * b13;
    t17 += v * b14;
    t18 += v * b15;
    v = a[4 + aoff];
    t4 += v * b0;
    t5 += v * b1;
    t6 += v * b2;
    t7 += v * b3;
    t8 += v * b4;
    t9 += v * b5;
    t10 += v * b6;
    t11 += v * b7;
    t12 += v * b8;
    t13 += v * b9;
    t14 += v * b10;
    t15 += v * b11;
    t16 += v * b12;
    t17 += v * b13;
    t18 += v * b14;
    t19 += v * b15;
    v = a[5 + aoff];
    t5 += v * b0;
    t6 += v * b1;
    t7 += v * b2;
    t8 += v * b3;
    t9 += v * b4;
    t10 += v * b5;
    t11 += v * b6;
    t12 += v * b7;
    t13 += v * b8;
    t14 += v * b9;
    t15 += v * b10;
    t16 += v * b11;
    t17 += v * b12;
    t18 += v * b13;
    t19 += v * b14;
    t20 += v * b15;
    v = a[6 + aoff];
    t6 += v * b0;
    t7 += v * b1;
    t8 += v * b2;
    t9 += v * b3;
    t10 += v * b4;
    t11 += v * b5;
    t12 += v * b6;
    t13 += v * b7;
    t14 += v * b8;
    t15 += v * b9;
    t16 += v * b10;
    t17 += v * b11;
    t18 += v * b12;
    t19 += v * b13;
    t20 += v * b14;
    t21 += v * b15;
    v = a[7 + aoff];
    t7 += v * b0;
    t8 += v * b1;
    t9 += v * b2;
    t10 += v * b3;
    t11 += v * b4;
    t12 += v * b5;
    t13 += v * b6;
    t14 += v * b7;
    t15 += v * b8;
    t16 += v * b9;
    t17 += v * b10;
    t18 += v * b11;
    t19 += v * b12;
    t20 += v * b13;
    t21 += v * b14;
    t22 += v * b15;
    v = a[8 + aoff];
    t8 += v * b0;
    t9 += v * b1;
    t10 += v * b2;
    t11 += v * b3;
    t12 += v * b4;
    t13 += v * b5;
    t14 += v * b6;
    t15 += v * b7;
    t16 += v * b8;
    t17 += v * b9;
    t18 += v * b10;
    t19 += v * b11;
    t20 += v * b12;
    t21 += v * b13;
    t22 += v * b14;
    t23 += v * b15;
    v = a[9 + aoff];
    t9 += v * b0;
    t10 += v * b1;
    t11 += v * b2;
    t12 += v * b3;
    t13 += v * b4;
    t14 += v * b5;
    t15 += v * b6;
    t16 += v * b7;
    t17 += v * b8;
    t18 += v * b9;
    t19 += v * b10;
    t20 += v * b11;
    t21 += v * b12;
    t22 += v * b13;
    t23 += v * b14;
    t24 += v * b15;
    v = a[10 + aoff];
    t10 += v * b0;
    t11 += v * b1;
    t12 += v * b2;
    t13 += v * b3;
    t14 += v * b4;
    t15 += v * b5;
    t16 += v * b6;
    t17 += v * b7;
    t18 += v * b8;
    t19 += v * b9;
    t20 += v * b10;
    t21 += v * b11;
    t22 += v * b12;
    t23 += v * b13;
    t24 += v * b14;
    t25 += v * b15;
    v = a[11 + aoff];
    t11 += v * b0;
    t12 += v * b1;
    t13 += v * b2;
    t14 += v * b3;
    t15 += v * b4;
    t16 += v * b5;
    t17 += v * b6;
    t18 += v * b7;
    t19 += v * b8;
    t20 += v * b9;
    t21 += v * b10;
    t22 += v * b11;
    t23 += v * b12;
    t24 += v * b13;
    t25 += v * b14;
    t26 += v * b15;
    v = a[12 + aoff];
    t12 += v * b0;
    t13 += v * b1;
    t14 += v * b2;
    t15 += v * b3;
    t16 += v * b4;
    t17 += v * b5;
    t18 += v * b6;
    t19 += v * b7;
    t20 += v * b8;
    t21 += v * b9;
    t22 += v * b10;
    t23 += v * b11;
    t24 += v * b12;
    t25 += v * b13;
    t26 += v * b14;
    t27 += v * b15;
    v = a[13 + aoff];
    t13 += v * b0;
    t14 += v * b1;
    t15 += v * b2;
    t16 += v * b3;
    t17 += v * b4;
    t18 += v * b5;
    t19 += v * b6;
    t20 += v * b7;
    t21 += v * b8;
    t22 += v * b9;
    t23 += v * b10;
    t24 += v * b11;
    t25 += v * b12;
    t26 += v * b13;
    t27 += v * b14;
    t28 += v * b15;
    v = a[14 + aoff];
    t14 += v * b0;
    t15 += v * b1;
    t16 += v * b2;
    t17 += v * b3;
    t18 += v * b4;
    t19 += v * b5;
    t20 += v * b6;
    t21 += v * b7;
    t22 += v * b8;
    t23 += v * b9;
    t24 += v * b10;
    t25 += v * b11;
    t26 += v * b12;
    t27 += v * b13;
    t28 += v * b14;
    t29 += v * b15;
    v = a[15 + aoff];
    t15 += v * b0;
    t16 += v * b1;
    t17 += v * b2;
    t18 += v * b3;
    t19 += v * b4;
    t20 += v * b5;
    t21 += v * b6;
    t22 += v * b7;
    t23 += v * b8;
    t24 += v * b9;
    t25 += v * b10;
    t26 += v * b11;
    t27 += v * b12;
    t28 += v * b13;
    t29 += v * b14;
    t30 += v * b15;

    t0 += 38 * t16;
    t1 += 38 * t17;
    t2 += 38 * t18;
    t3 += 38 * t19;
    t4 += 38 * t20;
    t5 += 38 * t21;
    t6 += 38 * t22;
    t7 += 38 * t23;
    t8 += 38 * t24;
    t9 += 38 * t25;
    t10 += 38 * t26;
    t11 += 38 * t27;
    t12 += 38 * t28;
    t13 += 38 * t29;
    t14 += 38 * t30;
// t15 left as is

// first car
    c = 1;
    v = t0 + c + 65535;
    c = v >> 16;
    t0 = v - c * 65536;
    v = t1 + c + 65535;
    c = v >> 16;
    t1 = v - c * 65536;
    v = t2 + c + 65535;
    c = v >> 16;
    t2 = v - c * 65536;
    v = t3 + c + 65535;
    c = v >> 16;
    t3 = v - c * 65536;
    v = t4 + c + 65535;
    c = v >> 16;
    t4 = v - c * 65536;
    v = t5 + c + 65535;
    c = v >> 16;
    t5 = v - c * 65536;
    v = t6 + c + 65535;
    c = v >> 16;
    t6 = v - c * 65536;
    v = t7 + c + 65535;
    c = v >> 16;
    t7 = v - c * 65536;
    v = t8 + c + 65535;
    c = v >> 16;
    t8 = v - c * 65536;
    v = t9 + c + 65535;
    c = v >> 16;
    t9 = v - c * 65536;
    v = t10 + c + 65535;
    c = v >> 16;
    t10 = v - c * 65536;
    v = t11 + c + 65535;
    c = v >> 16;
    t11 = v - c * 65536;
    v = t12 + c + 65535;
    c = v >> 16;
    t12 = v - c * 65536;
    v = t13 + c + 65535;
    c = v >> 16;
    t13 = v - c * 65536;
    v = t14 + c + 65535;
    c = v >> 16;
    t14 = v - c * 65536;
    v = t15 + c + 65535;
    c = v >> 16;
    t15 = v - c * 65536;
    t0 += c - 1 + 37 * (c - 1);

// second car
    c = 1;
    v = t0 + c + 65535;
    c = v >> 16;
    t0 = v - c * 65536;
    v = t1 + c + 65535;
    c = v >> 16;
    t1 = v - c * 65536;
    v = t2 + c + 65535;
    c = v >> 16;
    t2 = v - c * 65536;
    v = t3 + c + 65535;
    c = v >> 16;
    t3 = v - c * 65536;
    v = t4 + c + 65535;
    c = v >> 16;
    t4 = v - c * 65536;
    v = t5 + c + 65535;
    c = v >> 16;
    t5 = v - c * 65536;
    v = t6 + c + 65535;
    c = v >> 16;
    t6 = v - c * 65536;
    v = t7 + c + 65535;
    c = v >> 16;
    t7 = v - c * 65536;
    v = t8 + c + 65535;
    c = v >> 16;
    t8 = v - c * 65536;
    v = t9 + c + 65535;
    c = v >> 16;
    t9 = v - c * 65536;
    v = t10 + c + 65535;
    c = v >> 16;
    t10 = v - c * 65536;
    v = t11 + c + 65535;
    c = v >> 16;
    t11 = v - c * 65536;
    v = t12 + c + 65535;
    c = v >> 16;
    t12 = v - c * 65536;
    v = t13 + c + 65535;
    c = v >> 16;
    t13 = v - c * 65536;
    v = t14 + c + 65535;
    c = v >> 16;
    t14 = v - c * 65536;
    v = t15 + c + 65535;
    c = v >> 16;
    t15 = v - c * 65536;
    t0 += c - 1 + 37 * (c - 1);

    o[0 + ooff] = t0;
    o[1 + ooff] = t1;
    o[2 + ooff] = t2;
    o[3 + ooff] = t3;
    o[4 + ooff] = t4;
    o[5 + ooff] = t5;
    o[6 + ooff] = t6;
    o[7 + ooff] = t7;
    o[8 + ooff] = t8;
    o[9 + ooff] = t9;
    o[10 + ooff] = t10;
    o[11 + ooff] = t11;
    o[12 + ooff] = t12;
    o[13 + ooff] = t13;
    o[14 + ooff] = t14;
    o[15 + ooff] = t15;
  }

  static void _S(Int64List o, Int64List a) {
    _S_off(o, 0, a, 0);
  }

  static void _S_off(Int64List o, final int ooff, Int64List a, final int aoff) {
    _M_off(o, ooff, a, aoff, a, aoff);
  }

  static void _inv25519(
      Int64List o, final int ooff, Int64List i, final int ioff) {
    Int64List c = Int64List(16);
    int a;
    for (a = 0; a < 16; a++) c[a] = i[a + ioff];
    for (a = 253; a >= 0; a--) {
      _S_off(c, 0, c, 0);
      if (a != 2 && a != 4) _M_off(c, 0, c, 0, i, ioff);
    }
    for (a = 0; a < 16; a++) o[a + ooff] = c[a];
  }

  static void _pow2523(Int64List o, Int64List i) {
    Int64List c = Int64List(16);
    int a;

    for (a = 0; a < 16; a++) c[a] = i[a];

    for (a = 250; a >= 0; a--) {
      _S_off(c, 0, c, 0);
      if (a != 1) _M_off(c, 0, c, 0, i, 0);
    }

    for (a = 0; a < 16; a++) o[a] = c[a];
  }

  static int crypto_scalarmult(Uint8List q, Uint8List n, Uint8List p) {
    Uint8List z = Uint8List(32);
    Int64List x = Int64List(80);
    int r, i;
    Int64List a = Int64List(16),
        b = Int64List(16),
        c = Int64List(16),
        d = Int64List(16),
        e = Int64List(16),
        f = Int64List(16);
    for (i = 0; i < 31; i++) z[i] = n[i];
    z[31] = (((n[31] & 127) | 64) & 0xff).toInt();
    z[0] &= 248;
    unpack25519(x, p);
    for (i = 0; i < 16; i++) {
      b[i] = x[i];
      d[i] = a[i] = c[i] = 0;
    }
    a[0] = d[0] = 1;
    for (i = 254; i >= 0; --i) {
      r = (Int32(z[Int32(i).shiftRightUnsigned(3).toInt()])
                  .shiftRightUnsigned(i & 7))
              .toInt() &
          1;
      _sel25519(a, b, r);
      _sel25519(c, d, r);
      _A(e, a, c);
      _Z(a, a, c);
      _A(c, b, d);
      _Z(b, b, d);
      _S(d, e);
      _S(f, a);
      _M(a, c, a);
      _M(c, b, e);
      _A(e, a, c);
      _Z(a, a, c);
      _S(b, a);
      _Z(c, d, f);
      _M(a, c, _121665);
      _A(a, a, d);
      _M(c, c, a);
      _M(a, d, f);
      _M(d, b, x);
      _S(b, e);
      _sel25519(a, b, r);
      _sel25519(c, d, r);
    }
    for (i = 0; i < 16; i++) {
      x[i + 16] = a[i];
      x[i + 32] = c[i];
      x[i + 48] = b[i];
      x[i + 64] = d[i];
    }
    _inv25519(x, 32, x, 32);
    _M_off(x, 16, x, 16, x, 32);
    _pack25519(q, x, 16);

    return 0;
  }

  static int crypto_scalarmult_base(Uint8List q, Uint8List n) {
    return crypto_scalarmult(q, n, _9);
  }

  static int crypto_box_keypair(Uint8List y, Uint8List x) {
    randombytes_array_len(x, 32);
    return crypto_scalarmult_base(y, x);
  }

  static int crypto_box_beforenm(Uint8List k, Uint8List y, Uint8List x) {
    Uint8List s = Uint8List(32);
    crypto_scalarmult(s, x, y);

    return crypto_core_hsalsa20(k, _0, s, _sigma);
  }

  static int crypto_hashblocks_hl(
      List<Int32> hh, List<Int32> hl, Uint8List m, final int moff, int n) {
    int i, j;

    List<Int32> wh = List<Int32>(16), wl = List<Int32>(16);
    Int32 bh0,
        bh1,
        bh2,
        bh3,
        bh4,
        bh5,
        bh6,
        bh7,
        bl0,
        bl1,
        bl2,
        bl3,
        bl4,
        bl5,
        bl6,
        bl7,
        th,
        tl,
        h,
        l,
        a,
        b,
        c,
        d;

    Int32 ah0 = hh[0],
        ah1 = hh[1],
        ah2 = hh[2],
        ah3 = hh[3],
        ah4 = hh[4],
        ah5 = hh[5],
        ah6 = hh[6],
        ah7 = hh[7],
        al0 = hl[0],
        al1 = hl[1],
        al2 = hl[2],
        al3 = hl[3],
        al4 = hl[4],
        al5 = hl[5],
        al6 = hl[6],
        al7 = hl[7];

    int pos = 0;
    while (n >= 128) {
      for (i = 0; i < 16; i++) {
        j = 8 * i + pos;
        wh[i] = Int32((m[j + 0 + moff] & 0xff) << 24) |
            ((m[j + 1 + moff] & 0xff) << 16) |
            ((m[j + 2 + moff] & 0xff) << 8) |
            ((m[j + 3 + moff] & 0xff) << 0);
        wl[i] = Int32((m[j + 4 + moff] & 0xff) << 24) |
            ((m[j + 5 + moff] & 0xff) << 16) |
            ((m[j + 6 + moff] & 0xff) << 8) |
            ((m[j + 7 + moff] & 0xff) << 0);
      }
      for (i = 0; i < 80; i++) {
        bh0 = ah0;
        bh1 = ah1;
        bh2 = ah2;
        bh3 = ah3;
        bh4 = ah4;
        bh5 = ah5;
        bh6 = ah6;
        bh7 = ah7;

        bl0 = al0;
        bl1 = al1;
        bl2 = al2;
        bl3 = al3;
        bl4 = al4;
        bl5 = al5;
        bl6 = al6;
        bl7 = al7;

        // add
        h = ah7;
        l = al7;

        a = l & 0xffff;
        b = l.shiftRightUnsigned(16);
        c = h & 0xffff;
        d = h.shiftRightUnsigned(16);

        // Sigma1
        h = ((ah4.shiftRightUnsigned(14)) | (al4 << (32 - 14))) ^
            ((ah4.shiftRightUnsigned(18)) | (al4 << (32 - 18))) ^
            ((al4.shiftRightUnsigned((41 - 32))) | (ah4 << (32 - (41 - 32))));
        l = ((al4.shiftRightUnsigned(14)) | (ah4 << (32 - 14))) ^
            ((al4.shiftRightUnsigned(18)) | (ah4 << (32 - 18))) ^
            ((ah4.shiftRightUnsigned((41 - 32))) | (al4 << (32 - (41 - 32))));

        a += l & 0xffff;
        b += l.shiftRightUnsigned(16);
        c += h & 0xffff;
        d += h.shiftRightUnsigned(16);

        // Ch
        h = (ah4 & ah5) ^ (~ah4 & ah6);
        l = (al4 & al5) ^ (~al4 & al6);

        a += l & 0xffff;
        b += l.shiftRightUnsigned(16);
        c += h & 0xffff;
        d += h.shiftRightUnsigned(16);

        a += l & 0xffff;
        b += l.shiftRightUnsigned(16);
        c += h & 0xffff;
        d += h.shiftRightUnsigned(16);

        // w
        h = wh[i % 16];
        l = wl[i % 16];

        a += l & 0xffff;
        b += l.shiftRightUnsigned(16);
        c += h & 0xffff;
        d += h.shiftRightUnsigned(16);

        b += a.shiftRightUnsigned(16);
        c += b.shiftRightUnsigned(16);
        d += c.shiftRightUnsigned(16);

        th = c & 0xffff | d << 16;
        tl = a & 0xffff | b << 16;

        // add
        h = th;
        l = tl;

        a = l & 0xffff;
        b = l.shiftRightUnsigned(16);
        c = h & 0xffff;
        d = h.shiftRightUnsigned(16);

        // Sigma0
        h = ((ah0.shiftRightUnsigned(28)) | (al0 << (32 - 28))) ^
            ((al0.shiftRightUnsigned((34 - 32))) | (ah0 << (32 - (34 - 32)))) ^
            ((al0.shiftRightUnsigned((39 - 32))) | (ah0 << (32 - (39 - 32))));
        l = ((al0.shiftRightUnsigned(28)) | (ah0 << (32 - 28))) ^
            ((ah0.shiftRightUnsigned((34 - 32))) | (al0 << (32 - (34 - 32)))) ^
            ((ah0.shiftRightUnsigned((39 - 32))) | (al0 << (32 - (39 - 32))));

        a += l & 0xffff;
        b += l.shiftRightUnsigned(16);
        c += h & 0xffff;
        d += h.shiftRightUnsigned(16);

        // Maj
        h = (ah0 & ah1) ^ (ah0 & ah2) ^ (ah1 & ah2);
        l = (al0 & al1) ^ (al0 & al2) ^ (al1 & al2);

        a += l & 0xffff;
        b += l.shiftRightUnsigned(16);
        c += h & 0xffff;
        d += h.shiftRightUnsigned(16);

        b += a.shiftRightUnsigned(16);
        c += b.shiftRightUnsigned(16);
        d += c.shiftRightUnsigned(16);

        bh7 = (c & 0xffff) | (d << 16);
        bl7 = (a & 0xffff) | (b << 16);

        // add
        h = bh3;
        l = bl3;

        a = l & 0xffff;
        b = l.shiftRightUnsigned(16);
        c = h & 0xffff;
        d = h.shiftRightUnsigned(16);

        h = th;
        l = tl;

        a += l & 0xffff;
        b += l.shiftRightUnsigned(16);
        c += h & 0xffff;
        d += h.shiftRightUnsigned(16);

        b += a.shiftRightUnsigned(16);
        c += b.shiftRightUnsigned(16);
        d += c.shiftRightUnsigned(16);

        bh3 = (c & 0xffff) | (d << 16);
        bl3 = (a & 0xffff) | (b << 16);

        ah1 = bh0;
        ah2 = bh1;
        ah3 = bh2;
        ah4 = bh3;
        ah5 = bh4;
        ah6 = bh5;
        ah7 = bh6;
        ah0 = bh7;

        al1 = bl0;
        al2 = bl1;
        al3 = bl2;
        al4 = bl3;
        al5 = bl4;
        al6 = bl5;
        al7 = bl6;
        al0 = bl7;

        if (i % 16 == 15) {
          for (j = 0; j < 16; j++) {
            // add
            h = wh[j];
            l = wl[j];

            a = l & 0xffff;
            b = l.shiftRightUnsigned(16);
            c = h & 0xffff;
            d = h.shiftRightUnsigned(16);

            h = wh[(j + 9) % 16];
            l = wl[(j + 9) % 16];

            a += l & 0xffff;
            b += l.shiftRightUnsigned(16);
            c += h & 0xffff;
            d += h.shiftRightUnsigned(16);

            // sigma0
            th = wh[(j + 1) % 16];
            tl = wl[(j + 1) % 16];
            h = ((th.shiftRightUnsigned(1)) | (tl << (32 - 1))) ^
                ((th.shiftRightUnsigned(8)) | (tl << (32 - 8))) ^
                (th.shiftRightUnsigned(7));
            l = ((tl.shiftRightUnsigned(1)) | (th << (32 - 1))) ^
                ((tl.shiftRightUnsigned(8)) | (th << (32 - 8))) ^
                ((tl.shiftRightUnsigned(7)) | (th << (32 - 7)));

            a += l & 0xffff;
            b += l.shiftRightUnsigned(16);
            c += h & 0xffff;
            d += h.shiftRightUnsigned(16);

            // sigma1
            th = wh[(j + 14) % 16];
            tl = wl[(j + 14) % 16];
            h = ((th.shiftRightUnsigned(19)) | (tl << (32 - 19))) ^
                ((tl.shiftRightUnsigned((61 - 32))) |
                    (th << (32 - (61 - 32)))) ^
                (th.shiftRightUnsigned(6));
            l = ((tl.shiftRightUnsigned(19)) | (th << (32 - 19))) ^
                ((th.shiftRightUnsigned((61 - 32))) |
                    (tl << (32 - (61 - 32)))) ^
                ((tl.shiftRightUnsigned(6)) | (th << (32 - 6)));

            a += l & 0xffff;
            b += l.shiftRightUnsigned(16);
            c += h & 0xffff;
            d += h.shiftRightUnsigned(16);

            b += a.shiftRightUnsigned(16);
            c += b.shiftRightUnsigned(16);
            d += c.shiftRightUnsigned(16);

            wh[j] = ((c & 0xffff) | (d << 16));
            wl[j] = ((a & 0xffff) | (b << 16));
          }
        }
      }

      // add
      h = ah0;
      l = al0;

      a = l & 0xffff;
      b = l.shiftRightUnsigned(16);
      c = h & 0xffff;
      d = h.shiftRightUnsigned(16);

      h = hh[0];
      l = hl[0];

      a += l & 0xffff;
      b += l.shiftRightUnsigned(16);
      c += h & 0xffff;
      d += h.shiftRightUnsigned(16);

      b += a.shiftRightUnsigned(16);
      c += b.shiftRightUnsigned(16);
      d += c.shiftRightUnsigned(16);

      hh[0] = ah0 = (c & 0xffff) | (d << 16);
      hl[0] = al0 = (a & 0xffff) | (b << 16);

      h = ah1;
      l = al1;

      a = l & 0xffff;
      b = l.shiftRightUnsigned(16);
      c = h & 0xffff;
      d = h.shiftRightUnsigned(16);

      h = hh[1];
      l = hl[1];

      a += l & 0xffff;
      b += l.shiftRightUnsigned(16);
      c += h & 0xffff;
      d += h.shiftRightUnsigned(16);

      b += a.shiftRightUnsigned(16);
      c += b.shiftRightUnsigned(16);
      d += c.shiftRightUnsigned(16);

      hh[1] = ah1 = (c & 0xffff) | (d << 16);
      hl[1] = al1 = (a & 0xffff) | (b << 16);

      h = ah2;
      l = al2;

      a = l & 0xffff;
      b = l.shiftRightUnsigned(16);
      c = h & 0xffff;
      d = h.shiftRightUnsigned(16);

      h = hh[2];
      l = hl[2];

      a += l & 0xffff;
      b += l.shiftRightUnsigned(16);
      c += h & 0xffff;
      d += h.shiftRightUnsigned(16);

      b += a.shiftRightUnsigned(16);
      c += b.shiftRightUnsigned(16);
      d += c.shiftRightUnsigned(16);

      hh[2] = ah2 = (c & 0xffff) | (d << 16);
      hl[2] = al2 = (a & 0xffff) | (b << 16);

      h = ah3;
      l = al3;

      a = l & 0xffff;
      b = l.shiftRightUnsigned(16);
      c = h & 0xffff;
      d = h.shiftRightUnsigned(16);

      h = hh[3];
      l = hl[3];

      a += l & 0xffff;
      b += l.shiftRightUnsigned(16);
      c += h & 0xffff;
      d += h.shiftRightUnsigned(16);

      b += a.shiftRightUnsigned(16);
      c += b.shiftRightUnsigned(16);
      d += c.shiftRightUnsigned(16);

      hh[3] = ah3 = (c & 0xffff) | (d << 16);
      hl[3] = al3 = (a & 0xffff) | (b << 16);

      h = ah4;
      l = al4;

      a = l & 0xffff;
      b = l.shiftRightUnsigned(16);
      c = h & 0xffff;
      d = h.shiftRightUnsigned(16);

      h = hh[4];
      l = hl[4];

      a += l & 0xffff;
      b += l.shiftRightUnsigned(16);
      c += h & 0xffff;
      d += h.shiftRightUnsigned(16);

      b += a.shiftRightUnsigned(16);
      c += b.shiftRightUnsigned(16);
      d += c.shiftRightUnsigned(16);

      hh[4] = ah4 = (c & 0xffff) | (d << 16);
      hl[4] = al4 = (a & 0xffff) | (b << 16);

      h = ah5;
      l = al5;

      a = l & 0xffff;
      b = l.shiftRightUnsigned(16);
      c = h & 0xffff;
      d = h.shiftRightUnsigned(16);

      h = hh[5];
      l = hl[5];

      a += l & 0xffff;
      b += l.shiftRightUnsigned(16);
      c += h & 0xffff;
      d += h.shiftRightUnsigned(16);

      b += a.shiftRightUnsigned(16);
      c += b.shiftRightUnsigned(16);
      d += c.shiftRightUnsigned(16);

      hh[5] = ah5 = (c & 0xffff) | (d << 16);
      hl[5] = al5 = (a & 0xffff) | (b << 16);

      h = ah6;
      l = al6;

      a = l & 0xffff;
      b = l.shiftRightUnsigned(16);
      c = h & 0xffff;
      d = h.shiftRightUnsigned(16);

      h = hh[6];
      l = hl[6];

      a += l & 0xffff;
      b += l.shiftRightUnsigned(16);
      c += h & 0xffff;
      d += h.shiftRightUnsigned(16);

      b += a.shiftRightUnsigned(16);
      c += b.shiftRightUnsigned(16);
      d += c.shiftRightUnsigned(16);

      hh[6] = ah6 = (c & 0xffff) | (d << 16);
      hl[6] = al6 = (a & 0xffff) | (b << 16);

      h = ah7;
      l = al7;

      a = l & 0xffff;
      b = l.shiftRightUnsigned(16);
      c = h & 0xffff;
      d = h.shiftRightUnsigned(16);

      h = hh[7];
      l = hl[7];

      a += l & 0xffff;
      b += l.shiftRightUnsigned(16);
      c += h & 0xffff;
      d += h.shiftRightUnsigned(16);

      b += a.shiftRightUnsigned(16);
      c += b.shiftRightUnsigned(16);
      d += c.shiftRightUnsigned(16);

      hh[7] = ah7 = (c & 0xffff) | (d << 16);
      hl[7] = al7 = (a & 0xffff) | (b << 16);

      pos += 128;
      n -= 128;
    }

    return n;
  }

// gf: long[16]
  static void _add(List<Int64List> p, List<Int64List> q) {
    Int64List a = Int64List(16);
    Int64List b = Int64List(16);
    Int64List c = Int64List(16);
    Int64List d = Int64List(16);
    Int64List t = Int64List(16);
    Int64List e = Int64List(16);
    Int64List f = Int64List(16);
    Int64List g = Int64List(16);
    Int64List h = Int64List(16);

    Int64List p0 = p[0];
    Int64List p1 = p[1];
    Int64List p2 = p[2];
    Int64List p3 = p[3];

    Int64List q0 = q[0];
    Int64List q1 = q[1];
    Int64List q2 = q[2];
    Int64List q3 = q[3];

    _Z_off(a, 0, p1, 0, p0, 0);
    _Z_off(t, 0, q1, 0, q0, 0);
    _M_off(a, 0, a, 0, t, 0);
    _A_off(b, 0, p0, 0, p1, 0);
    _A_off(t, 0, q0, 0, q1, 0);
    _M_off(b, 0, b, 0, t, 0);
    _M_off(c, 0, p3, 0, q3, 0);
    _M_off(c, 0, c, 0, _D2, 0);
    _M_off(d, 0, p2, 0, q2, 0);

    _A_off(d, 0, d, 0, d, 0);
    _Z_off(e, 0, b, 0, a, 0);
    _Z_off(f, 0, d, 0, c, 0);
    _A_off(g, 0, d, 0, c, 0);
    _A_off(h, 0, b, 0, a, 0);

    _M_off(p0, 0, e, 0, f, 0);
    _M_off(p1, 0, h, 0, g, 0);
    _M_off(p2, 0, g, 0, f, 0);
    _M_off(p3, 0, e, 0, h, 0);
  }

  static void _cswap(List<Int64List> p, List<Int64List> q, int b) {
    int i;

    for (i = 0; i < 4; i++) _sel25519_off(p[i], 0, q[i], 0, b);
  }

  static void _pack(Uint8List r, List<Int64List> p) {
    Int64List tx = Int64List(16);
    Int64List ty = Int64List(16);
    Int64List zi = Int64List(16);

    _inv25519(zi, 0, p[2], 0);

    _M_off(tx, 0, p[0], 0, zi, 0);
    _M_off(ty, 0, p[1], 0, zi, 0);

    _pack25519(r, ty, 0);

    r[31] ^= _par25519_off(tx, 0) << 7;
  }

  static void _scalarmult(
      List<Int64List> p, List<Int64List> q, Uint8List s, final int soff) {
    int i;

    _set25519(p[0], _gf0);
    _set25519(p[1], _gf1);
    _set25519(p[2], _gf1);
    _set25519(p[3], _gf0);

    for (i = 255; i >= 0; --i) {
      int b = ((Int32(s[(i / 8 + soff).toInt()]).shiftRightUnsigned(i & 7))
              .toInt() &
          1);

      _cswap(p, q, b);
      _add(q, p);
      _add(p, p);
      _cswap(p, q, b);
    }
  }

  static void _scalarbase(List<Int64List> p, Uint8List s, final int soff) {
    List<Int64List> q = List<Int64List>(4);

    q[0] = Int64List(16);
    q[1] = Int64List(16);
    q[2] = Int64List(16);
    q[3] = Int64List(16);

    _set25519(q[0], _X);
    _set25519(q[1], _Y);
    _set25519(q[2], _gf1);
    _M_off(q[3], 0, _X, 0, _Y, 0);
    _scalarmult(p, q, s, soff);
  }

  static int crypto_sign_keypair(KeyPair kp, bool seeded) {
    Uint8List sk = kp.privateKey.raw;
    Uint8List pk = kp.publicKey.raw;

    List<Int64List> p = List<Int64List>(4);

    p[0] = Int64List(16);
    p[1] = Int64List(16);
    p[2] = Int64List(16);
    p[3] = Int64List(16);

    int i;

    if (!seeded) randombytes_array_len(sk, 32);
    Uint8List raw = Uint8List(32);
    for (int i = 0; i < 32; i++) raw[i] = sk[i];
    var d = HashesSha3_512(raw);
    d[0] &= 248;
    d[31] &= 127;
    d[31] |= 64;

    _scalarbase(p, d, 0);
    _pack(pk, p);

    for (i = 0; i < 32; i++) sk[i + 32] = pk[i];
    return 0;
  }

  static final Int64List _L = Int64List.fromList([
    0xed,
    0xd3,
    0xf5,
    0x5c,
    0x1a,
    0x63,
    0x12,
    0x58,
    0xd6,
    0x9c,
    0xf7,
    0xa2,
    0xde,
    0xf9,
    0xde,
    0x14,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x10
  ]);

  static void _modL(Uint8List r, final int roff, Int64List x) {
    int carry;
    int i, j;

    for (i = 63; i >= 32; --i) {
      carry = 0;
      for (j = i - 32; j < i - 12; ++j) {
        x[j] += carry - 16 * x[i] * _L[j - (i - 32)];
        carry = (x[j] + 128) >> 8;
        x[j] -= carry << 8;
      }
      x[j] += carry;
      x[i] = 0;
    }
    carry = 0;

    for (j = 0; j < 32; j++) {
      x[j] += carry - (x[31] >> 4) * _L[j];
      carry = x[j] >> 8;
      x[j] &= 255;
    }

    for (j = 0; j < 32; j++) x[j] -= carry * _L[j];

    for (i = 0; i < 32; i++) {
      x[i + 1] += x[i] >> 8;
      r[i + roff] = (x[i] & 255);
    }
  }

  static void _reduce(Uint8List r) {
    Int64List x = Int64List(64);
    int i;

    for (i = 0; i < 64; i++) x[i] = (r[i] & 0xff).toInt();

    for (i = 0; i < 64; i++) r[i] = 0;

    _modL(r, 0, x);
  }

// TBD... 64bits of n
  static int crypto_sign(Uint8List sm, int dummy, Uint8List message,
      final int moff, int /*long*/ n, Uint8List sk) {
    Uint8List r = Uint8List(32);

    int i, j;

    Int64List x = Int64List(64);
    List<Int64List> p = List<Int64List>(4);

    p[0] = Int64List(16);
    p[1] = Int64List(16);
    p[2] = Int64List(16);
    p[3] = Int64List(16);

    for (int i = 0; i < 32; i++) r[i] = sk[i];
    var d = HashesSha3_512(r);

    d[0] &= 248;
    d[31] &= 127;
    d[31] |= 64;

    var g = sha3.New512();
    final Uint8List m = new Uint8List(64); // seeded hash
    g.reset();
    g.update(d.sublist(32), 0, 32);
    g.update(message, 0, message.length);
    g.doFinal(m, 0);

    _reduce(m);
    _scalarbase(p, m, 0);
    _pack(sm, p);

    final Uint8List h = new Uint8List(64); // result
    g.reset();
    g.update(sm.sublist(0, 32), 0, 32);
    g.update(sk.sublist(32), 0, 32);
    g.update(message, 0, message.length);
    g.doFinal(h, 0);

    _reduce(h);

    for (i = 0; i < 64; i++) x[i] = 0;

    for (i = 0; i < 32; i++) x[i] = (m[i] & 0xff).toInt();

    for (i = 0; i < 32; i++)
      for (j = 0; j < 32; j++)
        x[i + j] += (h[i] & 0xff) * (d[j] & 0xff).toInt();

    _modL(sm, 32, x);
    return 0;
  }

  static int _unpackneg(List<Int64List> r, Uint8List p) {
    Int64List t = Int64List(16);
    Int64List chk = Int64List(16);
    Int64List num = Int64List(16);
    Int64List den = Int64List(16);
    Int64List den2 = Int64List(16);
    Int64List den4 = Int64List(16);
    Int64List den6 = Int64List(16);

    _set25519(r[2], _gf1);
    unpack25519(r[1], p);
    _S(num, r[1]);
    _M(den, num, _D);
    _Z(num, num, r[2]);
    _A(den, r[2], den);

    _S(den2, den);
    _S(den4, den2);
    _M(den6, den4, den2);
    _M(t, den6, num);
    _M(t, t, den);

    _pow2523(t, t);
    _M(t, t, num);
    _M(t, t, den);
    _M(t, t, den);
    _M(r[0], t, den);

    _S(chk, r[0]);
    _M(chk, chk, den);
    if (_neq25519(chk, num) != 0) _M(r[0], r[0], _I);

    _S(chk, r[0]);
    _M(chk, chk, den);
    if (_neq25519(chk, num) != 0) return -1;

    if (_par25519(r[0]) == (Int32(p[31] & 0xFF).shiftRightUnsigned(7).toInt()))
      _Z(r[0], _gf0, r[0]);

    _M(r[3], r[0], r[1]);

    return 0;
  }

  /// TBD 64bits of mlen
  static int crypto_sign_open(Uint8List m, int dummy /* *mlen not used*/,
      Uint8List sm, final int smoff, int /*long*/ n, Uint8List pk) {
    int i;

    Uint8List t = Uint8List(32);
    List<Int64List> p = List<Int64List>(4);

    p[0] = Int64List(16);
    p[1] = Int64List(16);
    p[2] = Int64List(16);
    p[3] = Int64List(16);

    List<Int64List> q = List<Int64List>(4);
    q[0] = Int64List(16);
    q[1] = Int64List(16);
    q[2] = Int64List(16);
    q[3] = Int64List(16);

    if (n < 64) return -1;

    if (_unpackneg(q, pk) != 0) return -1;

    for (i = 0; i < n; i++) m[i] = sm[i + smoff];

    for (i = 0; i < 32; i++) m[i + 32] = pk[i];

//    crypto_hash_off(h, m, 0, n);
    var h = HashesSha3_512(m);

    _reduce(h);
    _scalarmult(p, q, h, 0);

    _scalarbase(q, sm, 32 + smoff);
    _add(p, q);
    _pack(t, p);

    n -= 64;
    if (_crypto_verify_32(sm, smoff, t, 0) != 0) {
      return -1;
    }

    return 0;
  }

  static var jrandom = Random.secure();

  static Uint8List randombytes_array(Uint8List x) {
    return randombytes_array_len(x, x.length);
  }

  static Uint8List randombytes(int len) {
    return randombytes_array(Uint8List(len));
  }

  static Uint8List randombytes_array_len(Uint8List x, int len) {
    int ret = len % 4;
    Int64 rnd;
    for (int i = 0; i < len - ret; i += 4) {
      rnd = Int64(jrandom.nextInt(1 << 32));
      x[i + 0] = (rnd.shiftRightUnsigned(0).toInt());
      x[i + 1] = (rnd.shiftRightUnsigned(8).toInt());
      x[i + 2] = (rnd.shiftRightUnsigned(16).toInt());
      x[i + 3] = (rnd.shiftRightUnsigned(24).toInt());
    }
    if (ret > 0) {
      rnd = Int64(jrandom.nextInt(1 << 32));
      for (int i = len - ret; i < len; i++)
        x[i] = (rnd.shiftRightUnsigned(8 * i).toInt());
    }
    return x;
  }

  static final int nonceLength = 24;

  static Uint8List makeBoxNonce() {
    return randombytes(nonceLength);
  }

  static Uint8List makeSecretBoxNonce() {
    return randombytes(nonceLength);
  }
}
