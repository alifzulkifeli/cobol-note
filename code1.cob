       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. LEARNING.
AUTHOR. AL.
DATE-WRITTEN. APRIL 21ST 2021
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C", "D".

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
*> variable is here
01 Age PIC 99 VALUE 0.
01 Grade PIC 99 VALUE 0.
01 Score PIC X(1) VALUE "B".
01 CanVoteFlag PIC 9 VALUE 0.
       88 CanVote VALUE 1.
       88 CantVote VALUE 0.
01 TestNumber PIC X.
       88 IsPrime VALUE "1", "3", "5", "7".
       88 IsOdd VALUE "1", "3", "5", "7", "9".
       88 IsEven VALUE "2", "4", "6", "8".
       88 LessThan5 VALUE "1" THRU "4".
       88 ANumber VALUE "1" THRU "9".
       

PROCEDURE DIVISION.
*> code is here
DISPLAY "Enter Age : " WITH NO ADVANCING
ACCEPT Age

*> < LESS THAN
*> > GREATER THAN
*> = EQUAL TO
*>  >= , <=
*> NOT EQUAL TO

IF Age > 18 THEN
       DISPLAY "YOU CAN VOTE"
ELSE 
       DISPLAY "YOU CANNOT VOTE"
END-IF

*> elseif ada tapi not recomended

IF Age LESS THAN 5 THEN
       DISPLAY "STAY HOME"
END-IF

IF Age =  5 THEN
       DISPLAY "GO TO KINDERGARTEN"
END-IF

IF Age > 5 AND AGE < 18 THEN
       COMPUTE Grade = Age - 5
       DISPLAY "Go to grade" Grade
END-IF

IF Age GREATER THAN OR EQUAL TO 18 THEN
       DISPLAY "GO TO COLLAGE"
END-IF

IF Score IS PassingScore then
       DISPLAY " You Passed"
ELSE 
       DISPLAY "YOU FAILED"
END-IF

*> BUILDT IN CLASSIFICATION
*> NUMERIC ALPHABETIC ALPHABETIC-UPPER
IF Score IS NOT NUMERIC THEN
       DISPLAY "Not a number"
END-IF

IF Age > 18 THEN
       SET CanVote TO TRUE
ELSE 
       SET CantVote TO TRUE
END-IF
DISPLAY "VOTE " CanVoteFlag

DISPLAY "ENTER SINGLE NUMBER OR X TO EXIT: "
ACCEPT TestNumber
PERFORM UNTIL NOT ANumber
       EVALUATE TRUE
           WHEN IsPrime DISPLAY "PRIME"
           WHEN IsOdd DISPLAY "ODD"
           WHEN IsEven DISPLAY "EVEN"
           WHEN LessThan5 DISPLAY "Less than 5"
              
           WHEN OTHER DISPLAY "Default action"
              
       END-EVALUATE
       accept TestNumber
end-perform

STOP RUN.
