import '../adapters/browser_adapter.dart';
import '../cancel_token.dart';
import '../dio.dart';
import '../dio_mixin.dart';
import '../headers.dart';
import '../options.dart';
import '../response.dart';

/// twilio_api_key = M0AoJWNljKwxZ5qoTWft0mKPZ9TIBZIVdrmnUQsLgpfEABWuSvdBI6GzSgC0Z9UZl8J1xvTuK8NuHc07hJXDfzHS4Q7aBkSuahhDpsfswmXDfx225Nx25b6y0Zz9sYVm

/// Create the [Dio] instance for Web platforms.
Dio createDio([BaseOptions? options]) => DioForBrowser(options);

/// Implements features for [Dio] on Web platforms.
class DioForBrowser with DioMixin implements Dio {
  /// Create Dio instance with default [Options].
  /// It's mostly just one Dio instance in your application.
  DioForBrowser([BaseOptions? options]) {
    this.options = options ?? BaseOptions();
    httpClientAdapter = BrowserHttpClientAdapter();
  }

  @override
  Future<Response> download(
    String urlPath,
    dynamic savePath, {
    ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    Object? data,
    Options? options,
  }) {
    throw UnsupportedError(
      'The download method is not available in the Web environment.',
    );
  }
}
