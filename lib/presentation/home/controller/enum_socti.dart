enum PusherEvent { connectionEstablished, subscriptionSucceeded, travelRequest, travelCancel, unknown }

class PusherEventImpl {
  static PusherEvent eventFromString(String event) {
    switch (event) {
      case 'pusher:connection_established':
        return PusherEvent.connectionEstablished;
      case 'pusher_internal:subscription_succeeded':
        return PusherEvent.subscriptionSucceeded;
      case 'travel.request':
        return PusherEvent.travelRequest;
      case 'travel.cancel':
        return PusherEvent.travelCancel;
      default:
        return PusherEvent.unknown;
    }
  }
}

