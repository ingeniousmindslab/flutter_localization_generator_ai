import 'dart:async';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'dart:io';

class Translator {
  Future<void> translateLocalizationFile(
      String sourcePath, String targetLanguage, String apiKey) async {
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

    final File sourceFile = File(sourcePath);
    final File targetFile = File('$targetLanguage.json');
    IOSink? sink;
    int count = 0;
    try {
      print(
          'Translating localization file from $sourcePath to $targetLanguage...');

      final List<String> lines = await sourceFile.readAsLines();
      sink = targetFile.openWrite();

      for (int i = 0; i < lines.length; i++) {
        String line = lines[i];

        // Split the line into key and value
        List<String> parts = line.split(':');
        if (parts.length == 2) {
          String key = parts[0].trim();
          String value = parts[1].trim();

          // Construct the prompt for translation
          final prompt = 'Translate "$value" to $targetLanguage.';
          final content = [Content.text(prompt)];

          // Translate the value
          final response = await model.generateContent(content);
          if (response.text == null) {
            count++;
            print("it seems like $value not Translated");

            if (count == 4) {
              print("it seems like $targetLanguage not supported");
              return;
            }
          }

          String translatedValue =
              response.text == null ? "" : response.text!.trim();

          // Remove extra quotation marks from the translated value
          translatedValue = translatedValue.replaceAll('"', '');

          // Write the translated key-value pair to the target file
          if (i == lines.length - 2) {
            print(lines.length);
            sink.write('$key: "$translatedValue"');
          } else {
            sink.writeln('$key: "$translatedValue",');
          }
        } else {
          // If the line does not match the expected format, write it as is to the target file
          sink.writeln(line);
        }

        // Display progress
        double progress = ((i + 1) / lines.length) * 100;
        print('Progress: ${progress.toStringAsFixed(2)}%');
      }

      print('Translation completed. Output file: $targetLanguage.json');
    } catch (e) {
      print('Error: $e');
    } finally {
      // Close the sink to ensure resources are properly released
      await sink?.close(); // Close the sink only if it's not null
    }
  }
}
