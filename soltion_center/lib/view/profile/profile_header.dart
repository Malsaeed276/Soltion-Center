part of 'profile.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    return  Column(
      children: [
        CustomPaint(
          size: Size(200, (200 * 1).toDouble()),
          painter: AppLogo(),
        ),


        //TODO add the data from the database
        Text('Name, Surname',style: theme.textTheme.titleLarge,)
      ],
    );
  }
}
