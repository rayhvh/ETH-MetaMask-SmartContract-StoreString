pragma solidity ^0.4.24;
contract Answer{

string answer = "Geen antwoord gegeven";
uint seq = 0;
  event AnswerEvent(
       string answer
    );
    
  function setAnswer(string _answer) public {
       require(seq < 1);
       answer = _answer;
       emit AnswerEvent(_answer); 
       seq++;
   }
  
    
   function getAnswer() public constant returns (string) {
       return (answer);
   }

}