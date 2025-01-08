Feature: Validation des rapports de Sprint dans les fichiers Markdown
  Afin de garantir la qualité et la complétude des rapports de Sprint,
  Les fichiers Markdown du dépôt doivent contenir certaines informations essentielles.

  Scenario Outline: Vérifier le contenu d'un fichier Markdown pour un rapport de Sprint
    Given un fichier markdown "<file>"
    When je lis le contenu du fichier
    Then le fichier doit contenir le nom du sprint
    And le fichier doit mentionner au moins une personne dans l'équipe de développement
    And le fichier doit contenir au moins un objectif
    And le fichier doit indiquer un nombre de user stories total de <total_stories>
    And le fichier doit indiquer un nombre de user stories complétées de <completed_stories>
    And le fichier doit indiquer un nombre de user stories restantes de <remaining_stories>

    Examples:
      | file                        | total_stories | completed_stories | remaining_stories |
      | Sprint_review_semaine_36.md |            13 |                 6 |                 7 |
      | Sprint_review_semaine_37.md |            15 |                 9 |                 0 |
