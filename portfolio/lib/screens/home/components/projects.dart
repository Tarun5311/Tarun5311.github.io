import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
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
          Responsive(
            mobile: ProjectGridBuilder(crossAxisCount: 1,),
            mobileLarge: ProjectGridBuilder(crossAxisCount: 2, ),
            desktop: ProjectGridBuilder(),
            tablet: ProjectGridBuilder(childAspectRatio: 1.1,),

          )
        ],
      ),
    );
  }
}

class ProjectGridBuilder extends StatelessWidget {
  const ProjectGridBuilder({
    Key? key,
    this.childAspectRatio = 1.3,
    this.crossAxisCount = 3,

  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: my_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        crossAxisCount: crossAxisCount,
      ),
      itemBuilder: (context, index) => ProjectCard(project: my_projects[index]),
    );
  }
}

