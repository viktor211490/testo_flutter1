import 'package:json_annotation/json_annotation.dart';

enum DayOfWeek {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(0)
  sunday,
  @JsonValue(1)
  monday,
  @JsonValue(2)
  tuesday,
  @JsonValue(3)
  wednesday,
  @JsonValue(4)
  thursday,
  @JsonValue(5)
  friday,
  @JsonValue(6)
  saturday
}

const $DayOfWeekMap = {
  DayOfWeek.sunday: 0,
  DayOfWeek.monday: 1,
  DayOfWeek.tuesday: 2,
  DayOfWeek.wednesday: 3,
  DayOfWeek.thursday: 4,
  DayOfWeek.friday: 5,
  DayOfWeek.saturday: 6
};

enum OrderStatus {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(0)
  awaitingapprove,
  @JsonValue(1)
  cooking,
  @JsonValue(2)
  delivering,
  @JsonValue(3)
  finished,
  @JsonValue(4)
  cancelled,
  @JsonValue(5)
  ready
}

const $OrderStatusMap = {
  OrderStatus.awaitingapprove: 0,
  OrderStatus.cooking: 1,
  OrderStatus.delivering: 2,
  OrderStatus.finished: 3,
  OrderStatus.cancelled: 4,
  OrderStatus.ready: 5
};

enum OrderDelivery {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(0)
  delivery,
  @JsonValue(1)
  takeout
}

const $OrderDeliveryMap = {OrderDelivery.delivery: 0, OrderDelivery.takeout: 1};

enum Mark {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(0)
  horrible,
  @JsonValue(1)
  bad,
  @JsonValue(2)
  normal,
  @JsonValue(3)
  good,
  @JsonValue(4)
  excellent
}

const $MarkMap = {
  Mark.horrible: 0,
  Mark.bad: 1,
  Mark.normal: 2,
  Mark.good: 3,
  Mark.excellent: 4
};

enum EventMessageType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(0)
  courierassigned,
  @JsonValue(1)
  ordercreated,
  @JsonValue(2)
  orderdetailschanged,
  @JsonValue(3)
  orderstatuschanged
}

const $EventMessageTypeMap = {
  EventMessageType.courierassigned: 0,
  EventMessageType.ordercreated: 1,
  EventMessageType.orderdetailschanged: 2,
  EventMessageType.orderstatuschanged: 3
};

enum PromoType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(0)
  seconditemreducedprice,
  @JsonValue(1)
  oneplusone,
  @JsonValue(2)
  discount
}

const $PromoTypeMap = {
  PromoType.seconditemreducedprice: 0,
  PromoType.oneplusone: 1,
  PromoType.discount: 2
};
