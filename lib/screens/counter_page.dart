import 'package:flutter/material.dart';
import 'package:flutter_counter/blocs/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Also, from BlocProvider.of(context), we will able to access the CounterBloc
    //since we wrapped the CounterPage in a BlocProvider
    final CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Demo"),
      ),
      body: BlocBuilder(
        bloc: _counterBloc,
        builder: (BuildContext context, int curentCounter) {
          return Center(
            child: Text("$curentCounter",style: TextStyle(fontSize: 24),),
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          //first button is to add the counter
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                _counterBloc.dispatch(CounterEvent.increment);
              },
            ),
          ),
          //second button is to reduce the counter
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                _counterBloc.dispatch(CounterEvent.decrement);
              },
            ),
          )
        ],
      ),
    );
  }
}
