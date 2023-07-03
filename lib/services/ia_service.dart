import 'package:app_demo/data/ia_response.dart';
import 'package:http/http.dart' as http;

Future<IaResponse> sendQuestionToChatbot(String question) async {
  Uri url =
      Uri.http('tnt2023.panaltesting.com.ar', 'chat', {'question': question});
  http.Response response = await http.get(url);


  return iaResponseFromJson(response.body);
}