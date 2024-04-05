

class Interceptors {

  static Map<String, String> authHeaders() {
    return {
      'Authorization' : 'Bearer e864a0c9eda63181d7d65bc73e61e3dc6b74ef9b82f7049f1fc7d9fc8f29706025bd271d1ee1822b15d654a84e1a0997b973a46f923cc9977b3fcbb064179ecd'
    };
  }

  static Map<String, String> authTypeHeaders() {
    return {
      'Authorization' : 'Bearer e864a0c9eda63181d7d65bc73e61e3dc6b74ef9b82f7049f1fc7d9fc8f29706025bd271d1ee1822b15d654a84e1a0997b973a46f923cc9977b3fcbb064179ecd',
      'Content-Type': 'application/x-www-form-urlencoded'
    };
  }
}