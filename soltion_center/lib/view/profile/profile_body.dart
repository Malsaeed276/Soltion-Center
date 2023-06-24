part of 'profile.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration:  BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        )
      ),
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Text('Data',style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSecondary,
                  ),)
                ],
              ),),
        );
      }),
    );
  }
}
