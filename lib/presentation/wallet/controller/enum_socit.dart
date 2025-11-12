enum PusherWalletEvent { connectionEstablished, subscriptionSucceeded, wallet, unknown }

class PusherWalletEventImpl {
  static PusherWalletEvent fromString(String event) {
    switch (event) {
      case 'pusher:connection_established':
        return PusherWalletEvent.connectionEstablished;
      case 'pusher_internal:subscription_succeeded':
        return PusherWalletEvent.subscriptionSucceeded;
      case 'wallet':
        return PusherWalletEvent.wallet;
      default:
        return PusherWalletEvent.unknown;
    }
  }
}
