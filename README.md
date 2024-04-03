Flutter Localization Generator AI

Flutter Localization Generator AI
=================================

Flutter Localization Generator AI is a Dart CLI tool for generating localization files for Flutter apps using AI-powered translation services.

Why We Need This Package
------------------------

Localization is an essential aspect of mobile app development, especially for apps targeting international audiences. However, manually translating and managing localization files can be time-consuming and error-prone. This tool automates the process by leveraging AI to generate translations, saving developers time and effort.

How to Activate the Package
---------------------------

To use this package, you need to activate it globally using Dart's package manager, pub. Follow these steps to activate the package:

1. Install Dart SDK if you haven't already. You can download it from [Dart's official website](https://dart.dev/get-dart).
2. Activate the package globally by running the following command in your terminal:

   dart pub global activate flutter_localization_generator_ai

Once activated, you can use the `flutter_localization_generator_ai` command to run the CLI tool.

Getting a Google Gemini API Key
-------------------------------

This package requires a Google Gemini API key to utilize Google's AI-powered translation services. Follow these steps to obtain an API key:

1. Go to the [Gemini API ]([https://console.cloud.google.com/](https://ai.google.dev/)https://console.cloud.google.com/)
2. Create a new project or select an existing one.
3. On the left side click on Get API Key
4. Copy the generated API key.

How to Use
----------

Once the package is activated and you have obtained a Google Gemini API key, you can use the CLI tool to generate localization files.

### Command Syntax

dart run flutter_localization_generator_ai --file=<source_file> --targetLanguage=<target_language> --apiKey=<google_gemini_api_key>

### Parameters

* `--file`: Path to the source localization file (JSON format).
* `--targetLanguage`: The language code for the target language (e.g., 'es' for Spanish).
* `--apiKey`: Your Google Gemini API key obtained from the Google Cloud Console.

### Example

dart run flutter_localization_generator_ai --file='path/to/source/file.json' --targetLanguage=es --apiKey=YOUR_GOOGLE_GEMINI_API_KEY
Replace `path/to/source/file.json` with the path to your source localization file and `YOUR_GOOGLE_GEMINI_API_KEY` with your actual Google Gemini API key.

### SAMPLE JSON FILE

`{"app_name":"App Name","lbl_welcome":" Welcome to IML"}`

### License

This package is released under the MIT License. See the [LICENSE](https://github.com/ingeniousmindslab/flutter_localization_generator_ai/blob/main/LICENSE) file for more details.

Feel free to contribute to this project by submitting issues or pull requests.

## About [Ingenious Minds Lab](https://ingeniousmindslab.com/)

[Ingenious Minds Lab](https://ingeniousmindslab.com/) is a software development company focused on creating innovative solutions for mobile and web applications. With a dedicated team of skilled professionals, we aim to deliver high-quality products that exceed our clients' expectations. Our passion for cutting-edge technologies drives us to explore new possibilities and develop creative solutions.
