class ApiParams {

  // static String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9eyJzdW';
  static String token = 'test';

  static Map<String, String> receiveParams(){
    return {
      'token': token
    };
  }

  static Map<String, String> depositParams(
    json
  ){
    return {
      'token': token,
      'title': json['title'],
      'is_completed' : json['is_completed'].toString(),
      'due_date' : json['due_date'].toString().substring(0, 10),
      'comments': json['comments'],
      'description': json['description'],
      'tags' : json['tags']
    };
  }

}