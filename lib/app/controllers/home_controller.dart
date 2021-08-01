import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: public_member_api_docs
class HomeController extends GetxController with SingleGetTickerProviderMixin {
  TabController? _tabController;

  @override
  void onInit() {
    _tabController = TabController(length: 4, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    _tabController?.dispose();
    super.onClose();
  }

  /* -------------------------------------------------------------------------- */
  /*                                   GETTERS                                  */
  /* -------------------------------------------------------------------------- */

  // ignore: public_member_api_docs
  get tabController => _tabController;
}
