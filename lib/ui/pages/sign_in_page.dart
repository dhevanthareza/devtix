part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In Page"),
      ),
      body: Center(
        child: Center(
          child: RaisedButton(
            child: Text("sign In"),
            onPressed: () {
              AuthService.signIn("dhevanmuhamad@gmail.com", "dhevan007");
            },
          ),
        ),
      ),
    );
  }
}
