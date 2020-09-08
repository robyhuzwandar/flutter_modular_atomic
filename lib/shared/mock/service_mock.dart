import 'package:autopay/shared/assets.dart';
import 'package:autopay/shared/colors.dart';
import 'package:autopay/shared/shared.dart';
import 'package:flutter/material.dart';

class ServiceMock {
  final String title;
  final String icon;
  final List<Color> gradient;

  ServiceMock({this.gradient, this.title, this.icon});
}

List<ServiceMock> listFeature = [
  ServiceMock(
      title: ServiceType.pulsa,
      icon: IconService.iconPulsa,
      gradient: serviceColor['pulsa']),
  ServiceMock(
      title: ServiceType.paketData,
      icon: IconService.iconPaketData,
      gradient: serviceColor['paketData']),
  ServiceMock(
      title: ServiceType.banking,
      icon: IconService.iconBanking,
      gradient: serviceColor['banking']),
  ServiceMock(
      title: ServiceType.pln,
      icon: IconService.iconPln,
      gradient: serviceColor['pln']),
  ServiceMock(
      title: ServiceType.air,
      icon: IconService.iconAir,
      gradient: serviceColor['air']),
  ServiceMock(
      title: ServiceType.bpjs,
      icon: IconService.iconBpjs,
      gradient: serviceColor['bpjs']),
  ServiceMock(
      title: ServiceType.gojek,
      icon: IconService.iconGojek,
      gradient: serviceColor['gojek']),
  ServiceMock(
      title: ServiceType.lainnya,
      icon: IconService.iconLainnya,
      gradient: serviceColor['lainnya']),
];

List<ServiceMock> listOtherFeature = [
  ServiceMock(
      title: ServiceType.pulsa,
      icon: IconService.iconPulsa,
      gradient: serviceColor['pulsa']),
  ServiceMock(
      title: ServiceType.paketData,
      icon: IconService.iconPaketData,
      gradient: serviceColor['paketData']),
  ServiceMock(
      title: ServiceType.banking,
      icon: IconService.iconBanking,
      gradient: serviceColor['banking']),
  ServiceMock(
      title: ServiceType.pln,
      icon: IconService.iconPln,
      gradient: serviceColor['pln']),
  ServiceMock(
      title: ServiceType.air,
      icon: IconService.iconAir,
      gradient: serviceColor['air']),
  ServiceMock(
      title: ServiceType.bpjs,
      icon: IconService.iconBpjs,
      gradient: serviceColor['bpjs']),
  ServiceMock(
      title: ServiceType.gojek,
      icon: IconService.iconGojek,
      gradient: serviceColor['gojek']),
  ServiceMock(
      title: ServiceType.lainnya,
      icon: IconService.iconLainnya,
      gradient: serviceColor['lainnya']),
];
