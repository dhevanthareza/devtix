part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Splash')),
        body: Center(
          child: RaisedButton(
              onPressed: () {
                context.bloc<PagesBloc>().add(GoToLoginPage());
              },
              child: Text("Go To Sign In PAge")),
        ));
  }
}
