import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Project.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'project_card.dart';


class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: defaultPadding/2)),
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Colors.white,
            ),            
          ),
          SizedBox(height: defaultPadding/1.5,),
    GridView.builder(
      shrinkWrap: true,
      itemCount: my_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
        childAspectRatio: 1.3,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) => ProjectCard(project: my_projects[index]),
    ),
        ],
      ),
    );
  }
}

