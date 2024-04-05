class ApiParams {

  static String token = 'test';

  static Map<String, String> receiveParams(){
    return {
      'token': token
    };
  }

  static Map<String, String> depositParams(
    String title,
    String isCompleted,
    String dueDate,
    String comments,
    String description,
    String tags
  ){
    return {
      'token': token,
      'tile': title,
      'is_completed' : isCompleted,
      'due_date' : dueDate,
      'comments': comments,
      'description': description,
      'tags' : tags
    };
  }

}