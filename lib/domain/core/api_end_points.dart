import 'package:netflix/constants/baseurl/base_url.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseURL/trending/all/day?api_key=$apikey";
}