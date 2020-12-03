import 'package:clipp_asientos/modules/models/item_grid_seat_slot_vm.dart';
import 'package:clipp_asientos/modules/models/item_seat_slot_vm.dart';
import 'package:flutter/material.dart';

class WidgetItemGridSeatSlot extends StatefulWidget {
  ItemGridSeatSlotVM itemGridSeatSlotVM;

  WidgetItemGridSeatSlot({@required this.itemGridSeatSlotVM});

  @override
  _WidgetItemGridSeatSlotState createState() => _WidgetItemGridSeatSlotState();
}

class _WidgetItemGridSeatSlotState extends State<WidgetItemGridSeatSlot> {
  ItemGridSeatSlotVM itemGridSeatSlotVM;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    itemGridSeatSlotVM = widget.itemGridSeatSlotVM;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(itemGridSeatSlotVM.seatTypeName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          _buildSlotGrid(),
        ],
      ),
    );
  }

  _buildSlotGrid() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 40,
        maxHeight: 650,
      ),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: itemGridSeatSlotVM.maxColumn,
        scrollDirection: Axis.vertical,
        childAspectRatio: 1,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        children: _generatedGrid(),
      ),
    );
  }

  List<Widget> _generatedGrid() {
    List<Widget> widgets = [];

    itemGridSeatSlotVM.seatRowVMs.forEach((itemSeatRowVM) {
      //ITEM ROW NAME
      var itemRowName = Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            itemSeatRowVM.itemRowName,
            
          ),
        ),
      );

      widgets.add(itemRowName);

      //ITEM SEAT SLOT
      List<Widget> widgetSeatSlots = itemSeatRowVM.seatSlotVMs.map(
        (itemSeatSlotVM) {
          var itemBgColor = Colors.grey;
          var itemBorderColor = Colors.black;

          if (itemSeatSlotVM.isBooked) {
            itemBgColor = Colors.purple;
          }

          if (itemSeatSlotVM.isSelected) {
            itemBgColor = Colors.green;
            itemBorderColor = Colors.transparent;
          }

          var itemAvailable = GestureDetector(
            onTap: () {
              _handleSelectSeat(itemSeatSlotVM);
            },
            child: Container(
              decoration: BoxDecoration(
                color: itemBgColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: itemBorderColor,
                  width: 1,
                ),
              ),
//            child: Center(child: Text('${seatRow.rowId}${i + 1}')),
            ),
          );

          var itemEmpty = Container();

          return itemSeatSlotVM.isOff ? itemEmpty : itemAvailable;
        },
      ).toList();

      widgets.addAll(widgetSeatSlots);
    });

    return widgets;
  }

  _handleSelectSeat(ItemSeatSlotVM itemSeatSlotVM) {
    //aqui va el provider
    print(itemSeatSlotVM.seatId);
    print(itemSeatSlotVM.seatType);

  }
}