Feature: On est vendredi?
  On est vendredi

  Scenario: On est dimanche mais est ce qu'on est vendredi ?
    Given Ajourd'hui on est "dimanche"
    When Est ce qu'on est vendredi
    Then La reponse doit etre "Nope"

  Scenario: On est vendredi mais est ce qu'on est vendredi ?
    Given Ajourd'hui on est "vendredi"
    When Est ce qu'on est vendredi
    Then La reponse doit etre "TGIF"

  Scenario Outline: On est vendredi ?
    Given Ajourd'hui on est "<day>"
    When Est ce qu'on est vendredi
    Then La reponse doit etre "<answer>"

    Examples:
      | day           | answer |
      | vendredi      | TGIF   |
      | dimanche      | Nope   |
      | peu importe ! | Nope   |
