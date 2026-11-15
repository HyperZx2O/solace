import 'dart:convert';

/// Diagnostic report: only these four fields. No content, ever.
class DiagnosticReport {
  const DiagnosticReport({
    required this.appVersion,
    required this.deviceModel,
    required this.osVersion,
    required this.lastErrorCode,
  });

  final String appVersion;
  final String deviceModel;
  final String osVersion;
  final String? lastErrorCode;

  Map<String, dynamic> toJson() => {
    'appVersion': appVersion,
    'deviceModel': deviceModel,
    'osVersion': osVersion,
    'lastErrorCode': lastErrorCode,
  };

  String toJsonString() => jsonEncode(toJson());
}
