import 'package:flutter_fintech_app/utilities/import.dart';

class RequestMoneyPage extends StatelessWidget {
  const RequestMoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String requestAmount = "20,445";
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const ShowContacts(),
                    ),
                  );
                },
                child: Padding(
                  padding: kSinglePad,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset("assets/icons/back.svg"),
                  ),
                ),
              ),
              Text(
                "request money to Elina.",
                style: bodyText,
              ),
              SizedBox(
                height: getDeviceHeight(40),
              ),

              // profile icon
              DashedCircle(
                dashes: getDeviceWidth(15),
                color: kAvatarBorderColor,
                gapSize: getDeviceWidth(5),
                strokeWidth: getDeviceWidth(1.0),
                child: CircleAvatar(
                  backgroundColor: kAvatarBorderColor,
                  radius: getDeviceWidth(53),
                  child: CircleAvatar(
                    radius: getDeviceWidth(50),
                    backgroundImage: const NetworkImage(
                      "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getDeviceHeight(50),
              ),
              Text(
                "enter amount",
                style: bodyText,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    rupee,
                    style: GoogleFonts.poppins(
                      fontSize: getDeviceWidth(15),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: getDeviceWidth(5)),
                  //TODO: ADd text form field below
                  Text(
                    requestAmount,
                    style: kMoneytext,
                  ),
                ],
              ),

              // "what's this for" icon
              //TODO: add text field below
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getDeviceHeight(20),
                    vertical: getDeviceWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: kHalfCurve,
                  color: kSecondaryLightColor.withOpacity(0.5),
                ),
                child: FittedBox(
                  child: Text(
                    "what's this for?",
                    style: GoogleFonts.poppins(
                      fontSize: getDeviceWidth(15),
                      letterSpacing: getDeviceWidth(0.5),
                      fontWeight: FontWeight.w500, //medium text
                      color: kSecondaryColor.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getDeviceHeight(100)),
              ActionButton(
                isBorder: false,
                enableShadow: false,
                labelText: "request money.",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
