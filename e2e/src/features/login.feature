Feature: Login Page
    We want to test the login Page
    Scenario Outline: HU: 1456 - Mostrar mensaje exitoso si el correo es valido
    Given the user is in login Page
    And the user set the email to <email>
    And the user set the password to <pass>
    When the user click in login button 
    Then the user should see the correct message

    Examples:
    | email| pass | 
    | 'daniel@hotmail.com'  | '1234123'  | 
    | 'jorge@hotmail.com'  | 'akhsd'  | 
    | 'daniel@bancolombia.com'  | '1233041230'  | 
    | 'alvaro821@hotmail.com'  | 'sakfh'  | 
    | 'duban0893@hotmail.com'  | '3123'  | 

    Scenario Outline: HU: 1456 - Mostrar mensaje no exitoso si el correo es invalido
    Given the user is in login Page
    And the user set the email to <email>
    And the user set the password to <pass>
    When the user click in login button 
    Then the user should see the Incorrect message

    Examples:
    | email| pass | 
    | 'danielhotmail.com'  | '1234123'  | 
    | 'jorgehotmail.com'  | 'akhsd'  | 
    | 'danielbancolombia.com'  | '1233041230'  | 
    | 'alvaro821hotmail.com'  | 'sakfh'  | 
    | 'duban0893hotmail.com'  | '3123'  | 