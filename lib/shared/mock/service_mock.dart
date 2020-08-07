import 'package:autopay/shared/assets.dart';
import 'package:autopay/shared/colors.dart';
import 'package:flutter/material.dart';

class ServiceMock {
  final String title;
  final String icon;
  final Color color;

  ServiceMock({this.color, this.title, this.icon});
}

List<ServiceMock> listFeature = [
  ServiceMock(
      title: 'Pulsa',
      icon: IconService.iconPulsa,
      color: serviceColor['pulsa']),
  ServiceMock(
      title: 'Paket Data',
      icon: IconService.iconPaketData,
      color: serviceColor['paketData']),
  ServiceMock(
      title: 'Banking',
      icon: IconService.iconBanking,
      color: serviceColor['banking']),
  ServiceMock(
      title: 'PLN', icon: IconService.iconPln, color: serviceColor['pln']),
  ServiceMock(
      title: 'Air', icon: IconService.iconAir, color: serviceColor['air']),
  ServiceMock(
      title: 'BPJS', icon: IconService.iconBpjs, color: serviceColor['bpjs']),
  ServiceMock(
      title: 'Gojek',
      icon: IconService.iconGojek,
      color: serviceColor['gojek']),
  ServiceMock(
      title: 'Lainnya',
      icon: IconService.iconLainnya,
      color: serviceColor['lainnya']),
];
