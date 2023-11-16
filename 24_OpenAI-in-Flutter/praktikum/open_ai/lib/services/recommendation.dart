import 'dart:convert';

import 'package:open_ai/constants/open_ai.dart';
import 'package:open_ai/models/open_ai.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class RecommendationService {
  static  Future<GptData> getRecommendation({
    required String budget,
    required String camera,
    required String strorage,
  }) async {
    late GptData gptData = GptData(
      id: "", 
      object: "", 
      created: 0, 
      model: "", 
      choices: [], 
      usage: Usage(completionTokens: 0, promptTokens: 0, totalTokens: 0)
    );

    try {
      var url = Uri.parse('https://api.openai.com/v1/completions');

      Map<String, String> headers = {
        'Content-Type':'application/json;charset=UTF-8',
        'Charset': 'utf-8',
        'Authorization':'Bearer $apiKey'
      };




      String promptData = 
          "Berikan Saya rekomendasi phone dengan budget $budget dan rekomendasi camera $camera dan strorage $strorage";

      final data = jsonEncode({
        "model":"text-davinci-003",
        "prompt":promptData,
        "temperature":0.4,
        "max_tokens":80,
        "top_p":1,
        "frequency_penalty":0,
        "presence_penalty":0
      });

      var response = await http.post(url, headers: headers, body: data);
      if (response.statusCode == 200) {
        gptData = gptDataFromJson(response.body);
      }
    } catch (e) {
      throw Exception('Error occured when sending request');
    }

    return gptData;
  }
}
