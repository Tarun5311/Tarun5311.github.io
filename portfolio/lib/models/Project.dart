class Project{

  final String? title, description;

  Project({this.title, this.description});

}

List<Project> my_projects = [
  Project(
    title: 'Portfolio - Flutter Web',
    description: 'My portfolio website which is responsive. This is built using flutter.'
  ),
  Project(
    title: 'IAS Architecture - Terminal Based Application',
    description: 'A python program that replicates the functionality of IAS architecture'
  ),
  Project(
    title: 'Quiz Game Show - Terminal Based Application',
    description: 'A simple client and server program where there is a host who conducts quiz and the participants who participates in the quiz. Built using python and socket programming.'
  ),
  Project(
    title: 'Horse Betting Website - Web Application',
    description: 'A web simulator where you can bet on horses. Built using flask, HTML and CSS.'
  ),
  Project(
    title: 'Automobile Inventory Management System - Terminal Based Application',
    description: 'A terminal based inventory management system that is used to maintain a Auto mobile store. The management system has a record of all the raw materials present.This management system can make necessary changes when a raw material is bought or sold or lost'
  ),
];