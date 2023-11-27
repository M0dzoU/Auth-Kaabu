import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final IconData image;
  final String description;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.description,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Bienvenue sur Kaabu +",
    image: Icons.image,
    description:
        "Votre nouvelle super app pour effectuer toutes vos opérations en un seul hub.",
  ),
  OnboardingContents(
    title: "Intro appli en une phrase",
    image: Icons.mobile_friendly,
    description:
        "Details sur les fonctions clées de cette appli juste les grandes lignes suffisent.",
  ),
  OnboardingContents(
    title: "Intro appli en une phrase",
    image: Icons.mobile_friendly,
    description:
        "Details sur les fonctions clées de cette appli juste les grandes lignes suffisent.",
  ),
  OnboardingContents(
    title: "Intro appli en une phrase",
    image: Icons.mobile_friendly,
    description:
        "Details sur les fonctions clées de cette appli juste les grandes lignes suffisent.",
  ),
  OnboardingContents(
    title: "Intro appli en une phrase",
    image: Icons.mobile_friendly,
    description:
        "Details sur les fonctions clées de cette appli juste les grandes lignes suffisent.",
  ),
];
