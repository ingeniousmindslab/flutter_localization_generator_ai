import 'package:args/args.dart';
import 'translator.dart';

void main(List<String> arguments) async {
  // Create an instance of ArgParser
  final ArgParser argParser = ArgParser();

  // Add flags for file, targetLanguage, and apiKey
  argParser.addOption('file', abbr: 'f', help: 'Path to the source file');
  argParser.addOption('targetLanguage', abbr: 'l', help: 'Target language');
  argParser.addOption('apiKey', abbr: 'k', help: 'API key');

  // Parse the arguments
  final ArgResults argResults = argParser.parse(arguments);

  // Extract values from parsed arguments
  final String? sourcePath = argResults['file'];
  final String? targetLanguage = argResults['targetLanguage'];
  final String? apiKey = argResults['apiKey'];

  // Check if required arguments are provided
  if (sourcePath == null || targetLanguage == null || apiKey == null) {
    if (sourcePath == null) {
      print("Please enter source file path");
    } else if (targetLanguage == null) {
      print("Please enter target Language");
    } else if (apiKey == null) {
      print("Please enter API Key");
    }
    return;
  }

  // Create an instance of the Translator class
  final translator = Translator();

  // Call the translateLocalizationFile method with provided arguments
  await translator.translateLocalizationFile(
      sourcePath, targetLanguage, apiKey);
}
