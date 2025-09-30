enum LoginStatus {
  ok("OK"),
  ng("NG");

  final String status;

  //LoginStatus.okならtureを返す
  bool get isOk => this == LoginStatus.ok;

  const LoginStatus(
    this.status,
  );
}