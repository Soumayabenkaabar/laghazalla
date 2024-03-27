import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 2, child: _TopPortion()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "user name",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                Column(
  mainAxisSize: MainAxisSize.max,
  children: [
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Color(0x3416202A),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Text(
                  'Change langue',
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.9, 0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Color(0x3416202A),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Text(
                  'Edit Profile',
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.9, 0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
      
            ),
          ),
        ],
      ),
                ],
                
              ),
              
              
            ),
            
          ),
          
        ],
      ),
    );
  }
}


  Widget _singleItem(BuildContext context, ProfileInfoItem item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            item.title,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      );


class ProfileInfoItem {
  final String title;
  final int value;
  const ProfileInfoItem(this.title, this.value);
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xff0043ba), Color(0xff006df1)]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration:  BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                          
                    ),
                  ),
                ),
                // Generated code for this Column Widget...

    


              ],
            ),
          ),
        ),
        
      ],
      
    );
  }
}
