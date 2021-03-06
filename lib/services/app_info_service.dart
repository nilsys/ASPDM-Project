import 'package:aspdm_project/services/log_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';

class AppInfoService {
  final LogService _logService;
  PackageInfo _packageInfo;

  Future<void> init() async {
    try {
      _packageInfo = await PackageInfo.fromPlatform();
    } on MissingPluginException {
      _logService.warning(
          "AppInfoService.init: Unsupported platform! Default values will be used instead.");
    }
  }

  AppInfoService(this._logService);

  @visibleForTesting
  AppInfoService.private(this._packageInfo, this._logService);

  /// Returns the app name.
  String get appName => _packageInfo?.appName ?? "Tasky";

  /// Returns the package name.
  String get packageName => _packageInfo?.packageName;

  /// Returns the version.
  String get version => _packageInfo?.version ?? "1.0.0";

  /// Returns the version code.
  String get buildNumber => _packageInfo?.buildNumber ?? "1";
}
