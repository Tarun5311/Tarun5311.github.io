class Experience{

  Experience({required this.name,required this.tag,required this.description});

  final String name, tag, description;
}

List<Experience> my_experience = [
  Experience(
    name: 'E-health Research Center (EHRC)',
    tag: 'Frontend Developer',
    description: 'I have worked on a NP Lab tracker which contains all the information about the lab reports, statistics etc of NP Lab (Neuro Pathology Lab). My part involves creating a dashboard for the NP Lab tracker which contains the statistics, lab reports and the perfomance of the NP Lab on daily, weekly, monthly and yearly basis.'
  )
];