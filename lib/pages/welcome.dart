part of 'pages.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/images/login1.png',
              height: 333,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Welcome",
              style: dangerTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Welcome to login Page, \nPlease Login or Sign Up First.",
              style: whiteTextStyle.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 51,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return Wrap(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40),
                                    )),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: defaultMargin),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Dont Have Account?',
                                                style: whiteTextStyle.copyWith(
                                                  fontSize: 20,
                                                  color: blackColor,
                                                ),
                                              ),
                                              Text(
                                                'Register',
                                                style: whiteTextStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30,
                                                  color: blackColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Center(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Image.asset(
                                                'assets/images/Close.png',
                                                height: 30,
                                                width: 30,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          hintText: "rizkyexample",
                                          labelText: "Username",
                                          suffixIcon:
                                              Icon(Icons.person_outlined),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          hintText: "rizky@example.com",
                                          labelText: "Email",
                                          suffixIcon:
                                              Icon(Icons.email_outlined),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      TextField(
                                        obscureText: _isHiddenPassword,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            hintText: "password",
                                            labelText: "Password",
                                            suffixIcon: InkWell(
                                              onTap: _tooglePasswordView,
                                              child: Icon(_isHiddenPassword
                                                  ? Icons
                                                      .visibility_off_outlined
                                                  : Icons.visibility_outlined),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      TextField(
                                        obscureText: _isHiddenConfirmPassword,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            hintText:
                                                "retype to confirm password",
                                            labelText: "Retype Password",
                                            suffixIcon: InkWell(
                                              onTap: _toogleConfirmPasswordView,
                                              child: Icon(_isHiddenConfirmPassword
                                                  ? Icons
                                                      .visibility_off_outlined
                                                  : Icons.visibility_outlined),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        height: 60,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                2 * defaultMargin,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Register',
                                            style: whiteTextStyle.copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: secondaryColor,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: primaryColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Already Have Account?',
                                            style: whiteTextStyle.copyWith(
                                              color: primaryColor,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            'Login',
                                            style: whiteTextStyle.copyWith(
                                              color: dangerColor,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: defaultMargin,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                    },
                  );
                },
                child: Text(
                  'Sign Up',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: secondaryColor,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: secondaryColor, width: 3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Text(
              'Rizky Flutter @2022',
              style: whiteTextStyle.copyWith(
                color: secondaryColor,
                fontSize: 11,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  void _tooglePasswordView() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  void _toogleConfirmPasswordView() {
    setState(() {
      _isHiddenConfirmPassword = !_isHiddenConfirmPassword;
    });
  }
}
