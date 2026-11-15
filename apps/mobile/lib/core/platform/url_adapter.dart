import 'package:url_launcher/url_launcher.dart';

abstract class UrlAdapter {
  Future<bool> openTel(String number);
}

class UrlLauncherAdapter implements UrlAdapter {
  @override
  Future<bool> openTel(String number) async {
    final uri = Uri(scheme: 'tel', path: number);
    if (await canLaunchUrl(uri)) {
      return launchUrl(uri);
    }
    return false;
  }
}

class FakeUrlAdapter implements UrlAdapter {
  FakeUrlAdapter({this.result = true});
  final bool result;
  final List<String> opened = [];
  @override
  Future<bool> openTel(String number) async {
    opened.add(number);
    return result;
  }
}
