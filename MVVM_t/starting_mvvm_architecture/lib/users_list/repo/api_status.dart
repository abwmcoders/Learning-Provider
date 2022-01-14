class Succes {
 final int code;
 final Object response;

  Succes({required this.code, required this.response});
}

class Failed {
  final int code;
  final Object errorResponse;

  Failed({required this.code, required this.errorResponse});
}