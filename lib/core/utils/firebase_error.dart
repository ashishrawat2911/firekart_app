class FirebaseErrors {
  String checkAuthError(String error) {
    if (error.contains("ERROR_USER_NOT_FOUND")) {
      return "User not found\nPlease try again!";
    } else if (error.contains("ERROR_USER_DISABLED")) {
      return "You have been disabled by the admin";
    } else if (error.contains("ERROR_TOO_MANY_REQUESTS")) {
      return "You have request to login too many time\nPlease wait for a while";
    } else if (error.contains("ERROR_OPERATION_NOT_ALLOWED")) {
      return "You are not allowed to login at this time\nPlease try again after some time!";
    } else {
      return "Failed to Login\nPlease try again!";
    }
  }
}
