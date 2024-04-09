import 'package:url_launcher/url_launcher.dart';

void launchURL(String query) async {
  final url = Uri.https('www.google.com', '/search', {
    'tbm': 'isch',
    'q': query,
  });
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
