import 'package:clipp_asientos/modules/custom_widgets/asiento_widget.dart';
import 'package:clipp_asientos/modules/models/item_grid_seat_slot_vm.dart';
import 'package:clipp_asientos/modules/widget_cines_screen.dart';
import 'package:flutter/material.dart';

import 'custom_widgets/widget_item_grid_seat_slot.dart';
import 'models/item_seat_row_vm.dart';
import 'models/item_seat_slot_vm.dart';

class AsientosModule extends StatefulWidget {

  @override
  _AsientosModuleState createState() => _AsientosModuleState();
}

class _AsientosModuleState extends State<AsientosModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
                  child: Column(
            children: [
              _titulo(),
              Divider(
                color: Colors.grey,
              ),
              _info(),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),

              SizedBox(height: 10),

              WidgetCineScreen(),

              SizedBox(height: 30),

              _buildListItemGridSeatSlot(),

              SizedBox(height: 50),

              _buton()
              
            ],
          ),
        ),
      )
   );
  }

  Widget _buton(){
    return Container(
      width: double.infinity,
      child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              
              padding: EdgeInsets.symmetric(vertical: 15),
              onPressed: (){

              print('CONTINUAR');

              },
              child: Text('CONTINUAR', style: TextStyle(
                color: Colors.white, 
                fontSize: 15),),
              color: Theme.of(context).primaryColor,
              ),
    );

  }

  Widget _info() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AsientoWidget(color: Colors.purple),
              SizedBox(width: 10),
              textoInfo('Disponible')
            ],
          ),

          Row(
            children: [
              AsientoWidget(color: Colors.white),
              SizedBox(width: 10),
              textoInfo('No Disponible')
            ],
          ),

          Row(
            children: [
              AsientoWidget(color: Theme.of(context).primaryColor),
              SizedBox(width: 10),
              textoInfo('Selección')
            ],
          )

        ],
      ),
    );
  }

  Widget _titulo(){
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Text(
          'Elegir Asientos',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }

  Widget textoInfo(String text){
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),
    );
  }

  Widget _buildListItemGridSeatSlot(){

    List<Widget> widgets = [];

    List<ItemSeatRowVM> seatRowVMs = new List();
    //LL
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'LL', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

    //kk
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'kk', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: false,
          isSelected: true,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'true'
        ),
      ])
    );

    //JJ
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'JJ', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

    //II
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'II', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );

    //HH
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'HH', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

    //GG
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'GG', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
    
    //FF
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'FF', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  
    //EE
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'EE', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'true'
        ),
      ])
    );
  
    //DD
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'DD', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  

    //CC
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'CC', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  
    //BB
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'BB', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  
    //AA
    seatRowVMs.add(
      ItemSeatRowVM(itemRowName: 'AA', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
  

  List<ItemSeatRowVM> seatRowVMs1 = new List();
    //LL
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'LL', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );

    //kk
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'kk', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'true'
        ),
      ])
    );

    //JJ
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'JJ', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

    //II
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'II', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );

    //HH
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'HH', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

    //GG
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'GG', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
    
    //FF
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'FF', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  
    //EE
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'EE', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
  
    //DD
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'DD', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

  

    //CC
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'CC', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
  
    //BB
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'BB', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
  
    //AA
    seatRowVMs1.add(
      ItemSeatRowVM(itemRowName: 'AA', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
  

    List<ItemSeatRowVM> seatRowVMs2 = new List();
    //LL
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'LL', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

    //kk
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'kk', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'true'
        ),
      ])
    );

    //JJ
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'JJ', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

    //II
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'II', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );

    //HH
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'HH', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );

    //GG
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'GG', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
    
    //FF
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'FF', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  
    //EE
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'EE', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'true'
        ),
      ])
    );
  
    //DD
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'DD', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  

    //CC
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'CC', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  
    //BB
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'BB', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: true,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
      ])
    );
  
    //AA
    seatRowVMs2.add(
      ItemSeatRowVM(itemRowName: 'AA', seatSlotVMs: [
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '2',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: true,
          seatId: '3',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '4',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '5',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '6',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '7',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: false,
          isOff: true,
          isSelected: false,
          seatId: '8',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '9',
          seatType: 'Normal'
        ),
        ItemSeatSlotVM(
          isBooked: true,
          isOff: false,
          isSelected: false,
          seatId: '1',
          seatType: 'Normal'
        ),
      ])
    );
  

  ItemGridSeatSlotVM itemGridSeatSlotVM1 = new ItemGridSeatSlotVM(
      maxColumn: 11,
      seatRowVMs: seatRowVMs,
      seatTypeName: 'Platea Media-Izquierda',
    );
  ItemGridSeatSlotVM itemGridSeatSlotVM2 = new ItemGridSeatSlotVM(
      maxColumn: 14,
      seatRowVMs: seatRowVMs1,
      seatTypeName: 'Platea Media-Centro',
    );
  ItemGridSeatSlotVM itemGridSeatSlotVM3 = new ItemGridSeatSlotVM(
      maxColumn: 11,
      seatRowVMs: seatRowVMs2,
      seatTypeName: 'Platea Media-Derecha',
    );

    //Lista de secciones

    List<WidgetItemGridSeatSlot> widgetItemGridSeatSlot = new List();
    widgetItemGridSeatSlot.add(
      WidgetItemGridSeatSlot(
        itemGridSeatSlotVM: itemGridSeatSlotVM1,
      )
    );

    widgetItemGridSeatSlot.add(
      WidgetItemGridSeatSlot(
        itemGridSeatSlotVM: itemGridSeatSlotVM2,
      )
    );

    widgetItemGridSeatSlot.add(
      WidgetItemGridSeatSlot(
        itemGridSeatSlotVM: itemGridSeatSlotVM3,
      )
    );


    widgetItemGridSeatSlot.forEach((element) {
        widgets.add(
      element
    );

    widgets.add(
       SizedBox(height: 50)
     );
     });
    

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: widgets,
    );
  }


  }

  

