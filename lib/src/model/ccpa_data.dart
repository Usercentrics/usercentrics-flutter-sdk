/// The User's CCPA consent data.
class CCPAData {
  const CCPAData({
    required this.version,
    required this.noticeGiven,
    required this.optedOut,
    required this.lspact,
  });

  /// CCPA version.
  final int version;

  /// True if the notice was given. False if not.
  final bool? noticeGiven;

  /// True if the user opted out the consents, so the user denies the services. False if not, so the user accepts the services.
  final bool optedOut;

  /// Limited Service Provider Agreement Covered Transaction.
  final bool? lspact;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CCPAData &&
          runtimeType == other.runtimeType &&
          version == other.version &&
          noticeGiven == other.noticeGiven &&
          optedOut == other.optedOut &&
          lspact == other.lspact;

  @override
  int get hashCode =>
      version.hashCode +
      noticeGiven.hashCode +
      optedOut.hashCode +
      lspact.hashCode;

  @override
  String toString() =>
      "$CCPAData(version: $version, noticeGiven: $noticeGiven, optedOut: $optedOut, lspact: $lspact)";
}
