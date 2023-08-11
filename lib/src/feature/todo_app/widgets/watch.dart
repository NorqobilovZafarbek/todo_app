import 'dart:math';

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  DateTime dateTime;
  RPSCustomPainter({required this.dateTime});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xFF061C36);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.1327160, size.height * 0.1203704,
                size.width * 0.7345679, size.height * 0.7345679),
            bottomRight: Radius.circular(size.width * 0.2283951),
            bottomLeft: Radius.circular(size.width * 0.2283951),
            topLeft: Radius.circular(size.width * 0.2283951),
            topRight: Radius.circular(size.width * 0.2283951)),
        paint0Fill);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01234568;
    paint1Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.1388889, size.height * 0.1265432,
                size.width * 0.7222222, size.height * 0.7222222),
            bottomRight: Radius.circular(size.width * 0.2222222),
            bottomLeft: Radius.circular(size.width * 0.2222222),
            topLeft: Radius.circular(size.width * 0.2222222),
            topRight: Radius.circular(size.width * 0.2222222)),
        paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xFF061C36);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.1388889, size.height * 0.1265432,
                size.width * 0.7222222, size.height * 0.7222222),
            bottomRight: Radius.circular(size.width * 0.2222222),
            bottomLeft: Radius.circular(size.width * 0.2222222),
            topLeft: Radius.circular(size.width * 0.2222222),
            topRight: Radius.circular(size.width * 0.2222222)),
        paint1Fill);

    Paint paint2Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint2Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.5046296, size.height * 0.1419753),
        Offset(size.width * 0.5046296, size.height * 0.1604938), paint2Stroke);

    Paint paint3Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint3Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.6929012, size.height * 0.1512346),
        Offset(size.width * 0.6929012, size.height * 0.1820988), paint3Stroke);

    Paint paint4Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint4Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.3070988, size.height * 0.1512346),
        Offset(size.width * 0.3070988, size.height * 0.1820988), paint4Stroke);

    Paint paint5Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint5Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.1636000, size.height * 0.3132716),
        Offset(size.width * 0.1944639, size.height * 0.3134043), paint5Stroke);

    Paint paint6Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint6Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.8055741, size.height * 0.3132716),
        Offset(size.width * 0.8364383, size.height * 0.3134043), paint6Stroke);

    Paint paint7Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint7Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.8055741, size.height * 0.6774691),
        Offset(size.width * 0.8364383, size.height * 0.6776019), paint7Stroke);

    Paint paint8Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint8Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.1636000, size.height * 0.6774691),
        Offset(size.width * 0.1944639, size.height * 0.6776019), paint8Stroke);

    Paint paint9Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint9Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.3070988, size.height * 0.7901235),
        Offset(size.width * 0.3070988, size.height * 0.8209877), paint9Stroke);

    Paint paint10Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint10Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.6929012, size.height * 0.7901235),
        Offset(size.width * 0.6929012, size.height * 0.8209877), paint10Stroke);

    Paint paint11Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint11Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.5046296, size.height * 0.8209877),
        Offset(size.width * 0.5046296, size.height * 0.8395062), paint11Stroke);

    Paint paint12Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint12Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.8518519, size.height * 0.4706790),
        Offset(size.width * 0.8364198, size.height * 0.4706790), paint12Stroke);

    Paint paint13Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009259259;
    paint13Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(Offset(size.width * 0.1604938, size.height * 0.4706790),
        Offset(size.width * 0.1450617, size.height * 0.4706790), paint13Stroke);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.4915617, size.height * 0.1716099);
    path_14.lineTo(size.width * 0.4915617, size.height * 0.2067901);
    path_14.lineTo(size.width * 0.4846173, size.height * 0.2067901);
    path_14.lineTo(size.width * 0.4846173, size.height * 0.1796151);
    path_14.lineTo(size.width * 0.4762716, size.height * 0.1822676);
    path_14.lineTo(size.width * 0.4762716, size.height * 0.1767938);
    path_14.lineTo(size.width * 0.4908117, size.height * 0.1716099);
    path_14.lineTo(size.width * 0.4915617, size.height * 0.1716099);
    path_14.close();
    path_14.moveTo(size.width * 0.5270062, size.height * 0.2013648);
    path_14.lineTo(size.width * 0.5270062, size.height * 0.2067901);
    path_14.lineTo(size.width * 0.5029907, size.height * 0.2067901);
    path_14.lineTo(size.width * 0.5029907, size.height * 0.2021605);
    path_14.lineTo(size.width * 0.5143457, size.height * 0.1899836);
    path_14.cubicTo(
        size.width * 0.5154877,
        size.height * 0.1887136,
        size.width * 0.5163889,
        size.height * 0.1875963,
        size.width * 0.5170463,
        size.height * 0.1866321);
    path_14.cubicTo(
        size.width * 0.5177068,
        size.height * 0.1856512,
        size.width * 0.5181821,
        size.height * 0.1847753,
        size.width * 0.5184691,
        size.height * 0.1840037);
    path_14.cubicTo(
        size.width * 0.5187747,
        size.height * 0.1832160,
        size.width * 0.5189290,
        size.height * 0.1824685,
        size.width * 0.5189290,
        size.height * 0.1817611);
    path_14.cubicTo(
        size.width * 0.5189290,
        size.height * 0.1807003,
        size.width * 0.5187531,
        size.height * 0.1797920,
        size.width * 0.5183981,
        size.height * 0.1790364);
    path_14.cubicTo(
        size.width * 0.5180432,
        size.height * 0.1782648,
        size.width * 0.5175216,
        size.height * 0.1776701,
        size.width * 0.5168302,
        size.height * 0.1772522);
    path_14.cubicTo(
        size.width * 0.5161543,
        size.height * 0.1768343,
        size.width * 0.5153210,
        size.height * 0.1766253,
        size.width * 0.5143241,
        size.height * 0.1766253);
    path_14.cubicTo(
        size.width * 0.5132623,
        size.height * 0.1766253,
        size.width * 0.5123457,
        size.height * 0.1768824,
        size.width * 0.5115741,
        size.height * 0.1773969);
    path_14.cubicTo(
        size.width * 0.5108179,
        size.height * 0.1779111,
        size.width * 0.5102407,
        size.height * 0.1786265,
        size.width * 0.5098395,
        size.height * 0.1795429);
    path_14.cubicTo(
        size.width * 0.5094506,
        size.height * 0.1804593,
        size.width * 0.5092593,
        size.height * 0.1814960,
        size.width * 0.5092593,
        size.height * 0.1826534);
    path_14.lineTo(size.width * 0.5022901, size.height * 0.1826534);
    path_14.cubicTo(
        size.width * 0.5022901,
        size.height * 0.1805636,
        size.width * 0.5027901,
        size.height * 0.1786506,
        size.width * 0.5037870,
        size.height * 0.1769145);
    path_14.cubicTo(
        size.width * 0.5047809,
        size.height * 0.1751623,
        size.width * 0.5061883,
        size.height * 0.1737719,
        size.width * 0.5080062,
        size.height * 0.1727432);
    path_14.cubicTo(
        size.width * 0.5098210,
        size.height * 0.1716981,
        size.width * 0.5119753,
        size.height * 0.1711756,
        size.width * 0.5144691,
        size.height * 0.1711756);
    path_14.cubicTo(
        size.width * 0.5169259,
        size.height * 0.1711756,
        size.width * 0.5190000,
        size.height * 0.1715775,
        size.width * 0.5206883,
        size.height * 0.1723815);
    path_14.cubicTo(
        size.width * 0.5223920,
        size.height * 0.1731691,
        size.width * 0.5236790,
        size.height * 0.1743105,
        size.width * 0.5245463,
        size.height * 0.1758052);
    path_14.cubicTo(
        size.width * 0.5254321,
        size.height * 0.1772843,
        size.width * 0.5258735,
        size.height * 0.1790525,
        size.width * 0.5258735,
        size.height * 0.1811102);
    path_14.cubicTo(
        size.width * 0.5258735,
        size.height * 0.1822676,
        size.width * 0.5256883,
        size.height * 0.1834009,
        size.width * 0.5253179,
        size.height * 0.1845099);
    path_14.cubicTo(
        size.width * 0.5249475,
        size.height * 0.1856031,
        size.width * 0.5244167,
        size.height * 0.1866963,
        size.width * 0.5237284,
        size.height * 0.1877895);
    path_14.cubicTo(
        size.width * 0.5230525,
        size.height * 0.1888664,
        size.width * 0.5222315,
        size.height * 0.1899596,
        size.width * 0.5212685,
        size.height * 0.1910685);
    path_14.cubicTo(
        size.width * 0.5203025,
        size.height * 0.1921778,
        size.width * 0.5192346,
        size.height * 0.1933272,
        size.width * 0.5180617,
        size.height * 0.1945167);
    path_14.lineTo(size.width * 0.5119599, size.height * 0.2013648);
    path_14.lineTo(size.width * 0.5270062, size.height * 0.2013648);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.5079815, size.height * 0.7700864);
    path_15.lineTo(size.width * 0.5089938, size.height * 0.7700864);
    path_15.lineTo(size.width * 0.5089938, size.height * 0.7756327);
    path_15.lineTo(size.width * 0.5085833, size.height * 0.7756327);
    path_15.cubicTo(
        size.width * 0.5067531,
        size.height * 0.7756327,
        size.width * 0.5051204,
        size.height * 0.7759043,
        size.width * 0.5036883,
        size.height * 0.7764506);
    path_15.cubicTo(
        size.width * 0.5022593,
        size.height * 0.7769969,
        size.width * 0.5010463,
        size.height * 0.7777778,
        size.width * 0.5000494,
        size.height * 0.7787901);
    path_15.cubicTo(
        size.width * 0.4990679,
        size.height * 0.7797870,
        size.width * 0.4983117,
        size.height * 0.7809938,
        size.width * 0.4977809,
        size.height * 0.7824074);
    path_15.cubicTo(
        size.width * 0.4972685,
        size.height * 0.7838210,
        size.width * 0.4970093,
        size.height * 0.7854043,
        size.width * 0.4970093,
        size.height * 0.7871574);
    path_15.lineTo(size.width * 0.4970093, size.height * 0.7929938);
    path_15.cubicTo(
        size.width * 0.4970093,
        size.height * 0.7942469,
        size.width * 0.4971296,
        size.height * 0.7953549,
        size.width * 0.4973704,
        size.height * 0.7963210);
    path_15.cubicTo(
        size.width * 0.4976296,
        size.height * 0.7972685,
        size.width * 0.4979907,
        size.height * 0.7980648,
        size.width * 0.4984568,
        size.height * 0.7987068);
    path_15.cubicTo(
        size.width * 0.4989383,
        size.height * 0.7993333,
        size.width * 0.4995031,
        size.height * 0.7998086,
        size.width * 0.5001451,
        size.height * 0.8001296);
    path_15.cubicTo(
        size.width * 0.5007870,
        size.height * 0.8004352,
        size.width * 0.5015123,
        size.height * 0.8005895,
        size.width * 0.5023148,
        size.height * 0.8005895);
    path_15.cubicTo(
        size.width * 0.5030710,
        size.height * 0.8005895,
        size.width * 0.5037531,
        size.height * 0.8004290,
        size.width * 0.5043642,
        size.height * 0.8001049);
    path_15.cubicTo(
        size.width * 0.5049907,
        size.height * 0.7997840,
        size.width * 0.5055216,
        size.height * 0.7993333,
        size.width * 0.5059568,
        size.height * 0.7987562);
    path_15.cubicTo(
        size.width * 0.5064074,
        size.height * 0.7981605,
        size.width * 0.5067438,
        size.height * 0.7974691,
        size.width * 0.5069691,
        size.height * 0.7966821);
    path_15.cubicTo(
        size.width * 0.5072099,
        size.height * 0.7958796,
        size.width * 0.5073302,
        size.height * 0.7950031,
        size.width * 0.5073302,
        size.height * 0.7940525);
    path_15.cubicTo(
        size.width * 0.5073302,
        size.height * 0.7931049,
        size.width * 0.5072099,
        size.height * 0.7922284,
        size.width * 0.5069691,
        size.height * 0.7914259);
    path_15.cubicTo(
        size.width * 0.5067438,
        size.height * 0.7906204,
        size.width * 0.5064074,
        size.height * 0.7899321,
        size.width * 0.5059568,
        size.height * 0.7893519);
    path_15.cubicTo(
        size.width * 0.5055062,
        size.height * 0.7887562,
        size.width * 0.5049599,
        size.height * 0.7882994,
        size.width * 0.5043148,
        size.height * 0.7879784);
    path_15.cubicTo(
        size.width * 0.5036728,
        size.height * 0.7876574,
        size.width * 0.5029506,
        size.height * 0.7874938,
        size.width * 0.5021451,
        size.height * 0.7874938);
    path_15.cubicTo(
        size.width * 0.5010525,
        size.height * 0.7874938,
        size.width * 0.5000895,
        size.height * 0.7877531,
        size.width * 0.4992531,
        size.height * 0.7882654);
    path_15.cubicTo(
        size.width * 0.4984321,
        size.height * 0.7887654,
        size.width * 0.4977901,
        size.height * 0.7894074,
        size.width * 0.4973241,
        size.height * 0.7901944);
    path_15.cubicTo(
        size.width * 0.4968580,
        size.height * 0.7909846,
        size.width * 0.4966080,
        size.height * 0.7918117,
        size.width * 0.4965772,
        size.height * 0.7926790);
    path_15.lineTo(size.width * 0.4944784, size.height * 0.7913302);
    path_15.cubicTo(
        size.width * 0.4945278,
        size.height * 0.7900926,
        size.width * 0.4947840,
        size.height * 0.7889167,
        size.width * 0.4952500,
        size.height * 0.7878086);
    path_15.cubicTo(
        size.width * 0.4957315,
        size.height * 0.7867006,
        size.width * 0.4963920,
        size.height * 0.7857191,
        size.width * 0.4972284,
        size.height * 0.7848673);
    path_15.cubicTo(
        size.width * 0.4980802,
        size.height * 0.7840000,
        size.width * 0.4990988,
        size.height * 0.7833241,
        size.width * 0.5002901,
        size.height * 0.7828426);
    path_15.cubicTo(
        size.width * 0.5014784,
        size.height * 0.7823426,
        size.width * 0.5028210,
        size.height * 0.7820926,
        size.width * 0.5043148,
        size.height * 0.7820926);
    path_15.cubicTo(
        size.width * 0.5059568,
        size.height * 0.7820926,
        size.width * 0.5073951,
        size.height * 0.7824074,
        size.width * 0.5086327,
        size.height * 0.7830340);
    path_15.cubicTo(
        size.width * 0.5098858,
        size.height * 0.7836605,
        size.width * 0.5109321,
        size.height * 0.7845216,
        size.width * 0.5117654,
        size.height * 0.7856142);
    path_15.cubicTo(
        size.width * 0.5126019,
        size.height * 0.7867068,
        size.width * 0.5132284,
        size.height * 0.7879691,
        size.width * 0.5136481,
        size.height * 0.7894012);
    path_15.cubicTo(
        size.width * 0.5140648,
        size.height * 0.7908302,
        size.width * 0.5142747,
        size.height * 0.7923580,
        size.width * 0.5142747,
        size.height * 0.7939815);
    path_15.cubicTo(
        size.width * 0.5142747,
        size.height * 0.7956852,
        size.width * 0.5139938,
        size.height * 0.7972685,
        size.width * 0.5134321,
        size.height * 0.7987315);
    path_15.cubicTo(
        size.width * 0.5128827,
        size.height * 0.8001944,
        size.width * 0.5120895,
        size.height * 0.8014722,
        size.width * 0.5110432,
        size.height * 0.8025648);
    path_15.cubicTo(
        size.width * 0.5100154,
        size.height * 0.8036574,
        size.width * 0.5087778,
        size.height * 0.8045093,
        size.width * 0.5073302,
        size.height * 0.8051204);
    path_15.cubicTo(
        size.width * 0.5058827,
        size.height * 0.8057315,
        size.width * 0.5042593,
        size.height * 0.8060370,
        size.width * 0.5024599,
        size.height * 0.8060370);
    path_15.cubicTo(
        size.width * 0.5005957,
        size.height * 0.8060370,
        size.width * 0.4988981,
        size.height * 0.8057006,
        size.width * 0.4973704,
        size.height * 0.8050247);
    path_15.cubicTo(
        size.width * 0.4958611,
        size.height * 0.8043333,
        size.width * 0.4945586,
        size.height * 0.8033704,
        size.width * 0.4934660,
        size.height * 0.8021327);
    path_15.cubicTo(
        size.width * 0.4923735,
        size.height * 0.8008951,
        size.width * 0.4915278,
        size.height * 0.7994228,
        size.width * 0.4909321,
        size.height * 0.7977191);
    path_15.cubicTo(
        size.width * 0.4903549,
        size.height * 0.7960154,
        size.width * 0.4900648,
        size.height * 0.7941512,
        size.width * 0.4900648,
        size.height * 0.7921235);
    path_15.lineTo(size.width * 0.4900648, size.height * 0.7894228);
    path_15.cubicTo(
        size.width * 0.4900648,
        size.height * 0.7865957,
        size.width * 0.4904753,
        size.height * 0.7840062,
        size.width * 0.4912963,
        size.height * 0.7816605);
    path_15.cubicTo(
        size.width * 0.4921327,
        size.height * 0.7792963,
        size.width * 0.4933302,
        size.height * 0.7772562,
        size.width * 0.4948889,
        size.height * 0.7755340);
    path_15.cubicTo(
        size.width * 0.4964475,
        size.height * 0.7737994,
        size.width * 0.4983272,
        size.height * 0.7724568,
        size.width * 0.5005309,
        size.height * 0.7715093);
    path_15.cubicTo(
        size.width * 0.5027315,
        size.height * 0.7705586,
        size.width * 0.5052160,
        size.height * 0.7700864,
        size.width * 0.5079815,
        size.height * 0.7700864);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.8150802, size.height * 0.4640000);
    path_16.lineTo(size.width * 0.8187932, size.height * 0.4640000);
    path_16.cubicTo(
        size.width * 0.8199815,
        size.height * 0.4640000,
        size.width * 0.8209630,
        size.height * 0.4637994,
        size.width * 0.8217346,
        size.height * 0.4633981);
    path_16.cubicTo(
        size.width * 0.8225062,
        size.height * 0.4629784,
        size.width * 0.8230772,
        size.height * 0.4624012,
        size.width * 0.8234475,
        size.height * 0.4616605);
    path_16.cubicTo(
        size.width * 0.8238333,
        size.height * 0.4609043,
        size.width * 0.8240247,
        size.height * 0.4600278,
        size.width * 0.8240247,
        size.height * 0.4590340);
    path_16.cubicTo(
        size.width * 0.8240247,
        size.height * 0.4581327,
        size.width * 0.8238488,
        size.height * 0.4573364,
        size.width * 0.8234938,
        size.height * 0.4566451);
    path_16.cubicTo(
        size.width * 0.8231574,
        size.height * 0.4559383,
        size.width * 0.8226358,
        size.height * 0.4553920,
        size.width * 0.8219290,
        size.height * 0.4550062);
    path_16.cubicTo(
        size.width * 0.8212222,
        size.height * 0.4546049,
        size.width * 0.8203272,
        size.height * 0.4544043,
        size.width * 0.8192531,
        size.height * 0.4544043);
    path_16.cubicTo(
        size.width * 0.8183981,
        size.height * 0.4544043,
        size.width * 0.8176111,
        size.height * 0.4545710,
        size.width * 0.8168889,
        size.height * 0.4549105);
    path_16.cubicTo(
        size.width * 0.8161667,
        size.height * 0.4552469,
        size.width * 0.8155864,
        size.height * 0.4557222,
        size.width * 0.8151512,
        size.height * 0.4563333);
    path_16.cubicTo(
        size.width * 0.8147191,
        size.height * 0.4569414,
        size.width * 0.8145000,
        size.height * 0.4576821,
        size.width * 0.8145000,
        size.height * 0.4585494);
    path_16.lineTo(size.width * 0.8075340, size.height * 0.4585494);
    path_16.cubicTo(
        size.width * 0.8075340,
        size.height * 0.4566204,
        size.width * 0.8080463,
        size.height * 0.4549414,
        size.width * 0.8090772,
        size.height * 0.4535123);
    path_16.cubicTo(
        size.width * 0.8101204,
        size.height * 0.4520802,
        size.width * 0.8115185,
        size.height * 0.4509630,
        size.width * 0.8132716,
        size.height * 0.4501605);
    path_16.cubicTo(
        size.width * 0.8150247,
        size.height * 0.4493549,
        size.width * 0.8169537,
        size.height * 0.4489537,
        size.width * 0.8190586,
        size.height * 0.4489537);
    path_16.cubicTo(
        size.width * 0.8214383,
        size.height * 0.4489537,
        size.width * 0.8235185,
        size.height * 0.4493395,
        size.width * 0.8253025,
        size.height * 0.4501111);
    path_16.cubicTo(
        size.width * 0.8270895,
        size.height * 0.4508673,
        size.width * 0.8284784,
        size.height * 0.4519846,
        size.width * 0.8294753,
        size.height * 0.4534630);
    path_16.cubicTo(
        size.width * 0.8304722,
        size.height * 0.4549414,
        size.width * 0.8309691,
        size.height * 0.4567747,
        size.width * 0.8309691,
        size.height * 0.4589599);
    path_16.cubicTo(
        size.width * 0.8309691,
        size.height * 0.4600679,
        size.width * 0.8307130,
        size.height * 0.4611451,
        size.width * 0.8301975,
        size.height * 0.4621914);
    path_16.cubicTo(
        size.width * 0.8296852,
        size.height * 0.4632191,
        size.width * 0.8289444,
        size.height * 0.4641512,
        size.width * 0.8279815,
        size.height * 0.4649877);
    path_16.cubicTo(
        size.width * 0.8270309,
        size.height * 0.4658086,
        size.width * 0.8258735,
        size.height * 0.4664660,
        size.width * 0.8245093,
        size.height * 0.4669660);
    path_16.cubicTo(
        size.width * 0.8231420,
        size.height * 0.4674475,
        size.width * 0.8216080,
        size.height * 0.4676883,
        size.width * 0.8199012,
        size.height * 0.4676883);
    path_16.lineTo(size.width * 0.8150802, size.height * 0.4676883);
    path_16.lineTo(size.width * 0.8150802, size.height * 0.4640000);
    path_16.close();
    path_16.moveTo(size.width * 0.8150802, size.height * 0.4692809);
    path_16.lineTo(size.width * 0.8150802, size.height * 0.4656883);
    path_16.lineTo(size.width * 0.8199012, size.height * 0.4656883);
    path_16.cubicTo(
        size.width * 0.8218148,
        size.height * 0.4656883,
        size.width * 0.8234938,
        size.height * 0.4659043,
        size.width * 0.8249414,
        size.height * 0.4663395);
    path_16.cubicTo(
        size.width * 0.8263889,
        size.height * 0.4667716,
        size.width * 0.8276019,
        size.height * 0.4674012,
        size.width * 0.8285833,
        size.height * 0.4682191);
    path_16.cubicTo(
        size.width * 0.8295648,
        size.height * 0.4690247,
        size.width * 0.8303025,
        size.height * 0.4699784,
        size.width * 0.8308025,
        size.height * 0.4710895);
    path_16.cubicTo(
        size.width * 0.8312994,
        size.height * 0.4721821,
        size.width * 0.8315494,
        size.height * 0.4733951,
        size.width * 0.8315494,
        size.height * 0.4747284);
    path_16.cubicTo(
        size.width * 0.8315494,
        size.height * 0.4763704,
        size.width * 0.8312346,
        size.height * 0.4778333,
        size.width * 0.8306080,
        size.height * 0.4791173);
    path_16.cubicTo(
        size.width * 0.8299815,
        size.height * 0.4803889,
        size.width * 0.8290988,
        size.height * 0.4814660,
        size.width * 0.8279568,
        size.height * 0.4823488);
    path_16.cubicTo(
        size.width * 0.8268302,
        size.height * 0.4832346,
        size.width * 0.8255123,
        size.height * 0.4839074,
        size.width * 0.8240031,
        size.height * 0.4843765);
    path_16.cubicTo(
        size.width * 0.8224907,
        size.height * 0.4848241,
        size.width * 0.8208426,
        size.height * 0.4850494,
        size.width * 0.8190586,
        size.height * 0.4850494);
    path_16.cubicTo(
        size.width * 0.8175802,
        size.height * 0.4850494,
        size.width * 0.8161235,
        size.height * 0.4848488,
        size.width * 0.8146944,
        size.height * 0.4844475);
    path_16.cubicTo(
        size.width * 0.8132809,
        size.height * 0.4840309,
        size.width * 0.8119938,
        size.height * 0.4834105,
        size.width * 0.8108364,
        size.height * 0.4825895);
    path_16.cubicTo(
        size.width * 0.8096944,
        size.height * 0.4817562,
        size.width * 0.8087778,
        size.height * 0.4807099,
        size.width * 0.8080864,
        size.height * 0.4794568);
    path_16.cubicTo(
        size.width * 0.8074136,
        size.height * 0.4781852,
        size.width * 0.8070741,
        size.height * 0.4766821,
        size.width * 0.8070741,
        size.height * 0.4749475);
    path_16.lineTo(size.width * 0.8140432, size.height * 0.4749475);
    path_16.cubicTo(
        size.width * 0.8140432,
        size.height * 0.4758457,
        size.width * 0.8142685,
        size.height * 0.4766512,
        size.width * 0.8147191,
        size.height * 0.4773580);
    path_16.cubicTo(
        size.width * 0.8151698,
        size.height * 0.4780648,
        size.width * 0.8157870,
        size.height * 0.4786204,
        size.width * 0.8165741,
        size.height * 0.4790216);
    path_16.cubicTo(
        size.width * 0.8173796,
        size.height * 0.4794228,
        size.width * 0.8182716,
        size.height * 0.4796235,
        size.width * 0.8192531,
        size.height * 0.4796235);
    path_16.cubicTo(
        size.width * 0.8203611,
        size.height * 0.4796235,
        size.width * 0.8213086,
        size.height * 0.4794228,
        size.width * 0.8220957,
        size.height * 0.4790216);
    path_16.cubicTo(
        size.width * 0.8229012,
        size.height * 0.4786049,
        size.width * 0.8235123,
        size.height * 0.4780247,
        size.width * 0.8239290,
        size.height * 0.4772870);
    path_16.cubicTo(
        size.width * 0.8243642,
        size.height * 0.4765309,
        size.width * 0.8245802,
        size.height * 0.4756543,
        size.width * 0.8245802,
        size.height * 0.4746574);
    path_16.cubicTo(
        size.width * 0.8245802,
        size.height * 0.4733704,
        size.width * 0.8243488,
        size.height * 0.4723426,
        size.width * 0.8238827,
        size.height * 0.4715710);
    path_16.cubicTo(
        size.width * 0.8234136,
        size.height * 0.4707840,
        size.width * 0.8227469,
        size.height * 0.4702037,
        size.width * 0.8218796,
        size.height * 0.4698364);
    path_16.cubicTo(
        size.width * 0.8210123,
        size.height * 0.4694660,
        size.width * 0.8199815,
        size.height * 0.4692809,
        size.width * 0.8187932,
        size.height * 0.4692809);
    path_16.lineTo(size.width * 0.8150802, size.height * 0.4692809);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.1739969, size.height * 0.4792870);
    path_17.lineTo(size.width * 0.1744549, size.height * 0.4792870);
    path_17.cubicTo(
        size.width * 0.1763840,
        size.height * 0.4792870,
        size.width * 0.1780398,
        size.height * 0.4790556,
        size.width * 0.1794222,
        size.height * 0.4785864);
    path_17.cubicTo(
        size.width * 0.1808207,
        size.height * 0.4781049,
        size.width * 0.1819701,
        size.height * 0.4774136,
        size.width * 0.1828704,
        size.height * 0.4765154);
    path_17.cubicTo(
        size.width * 0.1837707,
        size.height * 0.4756142,
        size.width * 0.1844377,
        size.height * 0.4745123,
        size.width * 0.1848716,
        size.height * 0.4732099);
    path_17.cubicTo(
        size.width * 0.1853059,
        size.height * 0.4718920,
        size.width * 0.1855228,
        size.height * 0.4703981,
        size.width * 0.1855228,
        size.height * 0.4687253);
    path_17.lineTo(size.width * 0.1855228, size.height * 0.4620710);
    path_17.cubicTo(
        size.width * 0.1855228,
        size.height * 0.4607994,
        size.width * 0.1853941,
        size.height * 0.4596852,
        size.width * 0.1851370,
        size.height * 0.4587191);
    path_17.cubicTo(
        size.width * 0.1848957,
        size.height * 0.4577531,
        size.width * 0.1845423,
        size.height * 0.4569599,
        size.width * 0.1840759,
        size.height * 0.4563333);
    path_17.cubicTo(
        size.width * 0.1836259,
        size.height * 0.4556883,
        size.width * 0.1830954,
        size.height * 0.4552068,
        size.width * 0.1824846,
        size.height * 0.4548858);
    path_17.cubicTo(
        size.width * 0.1818898,
        size.height * 0.4545648,
        size.width * 0.1812309,
        size.height * 0.4544043,
        size.width * 0.1805074,
        size.height * 0.4544043);
    path_17.cubicTo(
        size.width * 0.1797358,
        size.height * 0.4544043,
        size.width * 0.1790525,
        size.height * 0.4545957,
        size.width * 0.1784577,
        size.height * 0.4549815);
    path_17.cubicTo(
        size.width * 0.1778630,
        size.height * 0.4553519,
        size.width * 0.1773565,
        size.height * 0.4558580,
        size.width * 0.1769386,
        size.height * 0.4565000);
    path_17.cubicTo(
        size.width * 0.1765367,
        size.height * 0.4571451,
        size.width * 0.1762235,
        size.height * 0.4578827,
        size.width * 0.1759981,
        size.height * 0.4587191);
    path_17.cubicTo(
        size.width * 0.1757892,
        size.height * 0.4595401,
        size.width * 0.1756849,
        size.height * 0.4603981,
        size.width * 0.1756849,
        size.height * 0.4612994);
    path_17.cubicTo(
        size.width * 0.1756849,
        size.height * 0.4622006,
        size.width * 0.1757892,
        size.height * 0.4630586,
        size.width * 0.1759981,
        size.height * 0.4638796);
    path_17.cubicTo(
        size.width * 0.1762071,
        size.height * 0.4646821,
        size.width * 0.1765207,
        size.height * 0.4653981,
        size.width * 0.1769386,
        size.height * 0.4660247);
    path_17.cubicTo(
        size.width * 0.1773565,
        size.height * 0.4666358,
        size.width * 0.1778790,
        size.height * 0.4671265,
        size.width * 0.1785059,
        size.height * 0.4674969);
    path_17.cubicTo(
        size.width * 0.1791330,
        size.height * 0.4678488,
        size.width * 0.1798722,
        size.height * 0.4680278,
        size.width * 0.1807244,
        size.height * 0.4680278);
    path_17.cubicTo(
        size.width * 0.1815441,
        size.height * 0.4680278,
        size.width * 0.1822756,
        size.height * 0.4678735,
        size.width * 0.1829185,
        size.height * 0.4675679);
    path_17.cubicTo(
        size.width * 0.1835778,
        size.height * 0.4672469,
        size.width * 0.1841324,
        size.height * 0.4668302,
        size.width * 0.1845824,
        size.height * 0.4663148);
    path_17.cubicTo(
        size.width * 0.1850485,
        size.height * 0.4657994,
        size.width * 0.1854022,
        size.height * 0.4652284,
        size.width * 0.1856432,
        size.height * 0.4646019);
    path_17.cubicTo(
        size.width * 0.1859006,
        size.height * 0.4639753,
        size.width * 0.1860290,
        size.height * 0.4633395,
        size.width * 0.1860290,
        size.height * 0.4626975);
    path_17.lineTo(size.width * 0.1883198, size.height * 0.4639506);
    path_17.cubicTo(
        size.width * 0.1883198,
        size.height * 0.4650772,
        size.width * 0.1880787,
        size.height * 0.4661852,
        size.width * 0.1875963,
        size.height * 0.4672778);
    path_17.cubicTo(
        size.width * 0.1871142,
        size.height * 0.4683735,
        size.width * 0.1864389,
        size.height * 0.4693704,
        size.width * 0.1855710,
        size.height * 0.4702685);
    path_17.cubicTo(
        size.width * 0.1847191,
        size.height * 0.4711543,
        size.width * 0.1837302,
        size.height * 0.4718611,
        size.width * 0.1826052,
        size.height * 0.4723920);
    path_17.cubicTo(
        size.width * 0.1814799,
        size.height * 0.4729228,
        size.width * 0.1802744,
        size.height * 0.4731852,
        size.width * 0.1789883,
        size.height * 0.4731852);
    path_17.cubicTo(
        size.width * 0.1773485,
        size.height * 0.4731852,
        size.width * 0.1758938,
        size.height * 0.4728889,
        size.width * 0.1746238,
        size.height * 0.4722932);
    path_17.cubicTo(
        size.width * 0.1733540,
        size.height * 0.4716852,
        size.width * 0.1722769,
        size.height * 0.4708488,
        size.width * 0.1713926,
        size.height * 0.4697870);
    path_17.cubicTo(
        size.width * 0.1705247,
        size.height * 0.4687099,
        size.width * 0.1698657,
        size.height * 0.4674568,
        size.width * 0.1694154,
        size.height * 0.4660247);
    path_17.cubicTo(
        size.width * 0.1689654,
        size.height * 0.4645957,
        size.width * 0.1687404,
        size.height * 0.4630432,
        size.width * 0.1687404,
        size.height * 0.4613704);
    path_17.cubicTo(
        size.width * 0.1687404,
        size.height * 0.4596667,
        size.width * 0.1690136,
        size.height * 0.4580679,
        size.width * 0.1695602,
        size.height * 0.4565741);
    path_17.cubicTo(
        size.width * 0.1701228,
        size.height * 0.4550772,
        size.width * 0.1709185,
        size.height * 0.4537593,
        size.width * 0.1719472,
        size.height * 0.4526173);
    path_17.cubicTo(
        size.width * 0.1729923,
        size.height * 0.4514784,
        size.width * 0.1742380,
        size.height * 0.4505864,
        size.width * 0.1756849,
        size.height * 0.4499414);
    path_17.cubicTo(
        size.width * 0.1771475,
        size.height * 0.4492840,
        size.width * 0.1787713,
        size.height * 0.4489537,
        size.width * 0.1805556,
        size.height * 0.4489537);
    path_17.cubicTo(
        size.width * 0.1823398,
        size.height * 0.4489537,
        size.width * 0.1839636,
        size.height * 0.4492994,
        size.width * 0.1854262,
        size.height * 0.4499907);
    path_17.cubicTo(
        size.width * 0.1868892,
        size.height * 0.4506821,
        size.width * 0.1881429,
        size.height * 0.4516636,
        size.width * 0.1891880,
        size.height * 0.4529321);
    path_17.cubicTo(
        size.width * 0.1902327,
        size.height * 0.4541852,
        size.width * 0.1910364,
        size.height * 0.4556883,
        size.width * 0.1915991,
        size.height * 0.4574414);
    path_17.cubicTo(
        size.width * 0.1921778,
        size.height * 0.4591944,
        size.width * 0.1924673,
        size.height * 0.4611389,
        size.width * 0.1924673,
        size.height * 0.4632778);
    path_17.lineTo(size.width * 0.1924673, size.height * 0.4656883);
    path_17.cubicTo(
        size.width * 0.1924673,
        size.height * 0.4679691,
        size.width * 0.1922179,
        size.height * 0.4700926,
        size.width * 0.1917198,
        size.height * 0.4720525);
    path_17.cubicTo(
        size.width * 0.1912373,
        size.height * 0.4740154,
        size.width * 0.1905062,
        size.height * 0.4757901,
        size.width * 0.1895253,
        size.height * 0.4773827);
    path_17.cubicTo(
        size.width * 0.1885611,
        size.height * 0.4789568,
        size.width * 0.1873552,
        size.height * 0.4803086,
        size.width * 0.1859086,
        size.height * 0.4814321);
    path_17.cubicTo(
        size.width * 0.1844778,
        size.height * 0.4825586,
        size.width * 0.1828142,
        size.height * 0.4834198,
        size.width * 0.1809173,
        size.height * 0.4840123);
    path_17.cubicTo(
        size.width * 0.1790204,
        size.height * 0.4846080,
        size.width * 0.1768985,
        size.height * 0.4849043,
        size.width * 0.1745515,
        size.height * 0.4849043);
    path_17.lineTo(size.width * 0.1739969, size.height * 0.4849043);
    path_17.lineTo(size.width * 0.1739969, size.height * 0.4792870);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    /// My Code
    Offset center = Offset(size.width / 2 + 2, size.height / 2 - 8);
    double radius = min(size.width, size.height) - 120;
    double centerX = center.dx;
    double centerY = center.dy;
    Paint hour = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    Paint minute = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.4;

    Paint seconds = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;

    Paint white = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    final secHandX =
        centerX + radius * 0.50 * cos((dateTime.second * pi / 30) - pi / 2);
    final secHandY =
        centerY + radius * 0.50 * sin((dateTime.second * pi / 30) - pi / 2);
    canvas.drawLine(center, Offset(secHandX, secHandY), seconds);

    final minHandX =
        centerX + radius * 0.40 * cos((dateTime.minute * pi / 30) - pi / 2);
    final minHandY =
        centerY + radius * 0.40 * sin((dateTime.minute * pi / 30) - pi / 2);
    canvas.drawLine(center, Offset(minHandX, minHandY), minute);

    final hourHandX = centerX +
        radius *
            0.30 *
            cos(
              ((dateTime.hour + (dateTime.minute / 60)) * pi / 6) - pi / 2,
            );
    final hourHandY = centerY +
        radius *
            0.30 *
            sin(
              ((dateTime.hour + (dateTime.minute / 60)) * pi / 6) - pi / 2,
            );

    /// Move
    final moveX = centerX +
        radius *
            0.35 *
            cos(
              ((dateTime.hour + (dateTime.minute / 60)) * pi / 6) - pi / 2,
            );

    final moveY = centerY +
        radius *
            0.35 *
            sin(
              ((dateTime.hour + (dateTime.minute / 60)) * pi / 6) - pi / 2,
            );

    /// Right
    final rightX = centerX +
        radius *
            0.28 *
            cos(((dateTime.hour + (dateTime.minute / 60)) * pi / 6) -
                pi / 2 -
                pi / 20);
    final rightY = centerY +
        radius *
            0.28 *
            sin(((dateTime.hour + (dateTime.minute / 60)) * pi / 6) -
                pi / 2 -
                pi / 20);

    /// Left
    final leftX = centerX +
        radius *
            0.28 *
            cos(((dateTime.hour + (dateTime.minute / 60)) * pi / 6) -
                pi / 2 +
                pi / 20);
    final leftY = centerY +
        radius *
            0.28 *
            sin(((dateTime.hour + (dateTime.minute / 60)) * pi / 6) -
                pi / 2 +
                pi / 20);

    Path triangle = Path()
      ..moveTo(moveX, moveY)
      ..lineTo(leftX, leftY)
      ..lineTo(rightX, rightY);
    canvas.drawPath(triangle, white);
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hour);
    canvas.drawCircle(center, 6, white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
