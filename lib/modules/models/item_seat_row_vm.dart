import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'item_seat_slot_vm.dart';


class ItemSeatRowVM extends Equatable {
  String itemRowName;

  List<ItemSeatSlotVM> seatSlotVMs;

  ItemSeatRowVM({
    @required this.itemRowName,
    @required this.seatSlotVMs,
  });

  @override
  List<Object> get props => [itemRowName, seatSlotVMs];
}