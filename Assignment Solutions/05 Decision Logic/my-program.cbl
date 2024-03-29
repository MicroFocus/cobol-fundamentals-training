      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 

       working-storage section.
       copy user-inputs.
       copy calculator-results.
       01  formatted-result    pic +9(5).9(2).

       procedure division.
           initialize calculator-results
           perform get-user-inputs
           perform get-calculator-results
           perform display-calculator-results
           
           goback
           .

       get-user-inputs section.
           call "user-prompt" using by reference user-inputs
           .

       get-calculator-results section.
           call "calculator" using by reference calculator-results
                                   by value user-inputs
           .

       display-calculator-results section.
           evaluate true
               when addition-function
                   perform display-addition-result
               when subtraction-function
                   perform display-subtraction-result
               when multiplication-function
                   perform display-multiplication-result
               when division-function
                   perform display-division-result
           end-evaluate
           .

       display-addition-result section.
           move addition-result to formatted-result
           display "Result of Addition: " formatted-result
           .

       display-subtraction-result section.
           move subtraction-result to formatted-result
           display "Result of Subtraction: " formatted-result
           .

       display-multiplication-result section.
           move multiplication-result to formatted-result
           display "Result of Multiplication: " formatted-result
           .

       display-division-result section.
           move division-result to formatted-result
           display "Result of Division: " formatted-result
           .
           