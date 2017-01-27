function isValid(code) {
  var openBrackets = new Set(['(','[','{']);
  var closeBrackets = new Set([')',']','}']);
  var stack = [];
  var openAndClose = {
    '(': ')',
    '[': ']',
    '{': '}'
  };
// loop through the code to find brackets, braces, parentheses
  for (var i = 0; i < code.length; i++) {
    // set single character to variable
    var char = code[i];
    // check if character is an opener, if so push to stack array
    if (openBrackets.has(char)) {
      stack.push(char)
      // check if character is a closer
    } else if (closeBrackets.has(char)) {
      // checks if the stack array is empty, if true return false. cannot close w/o an opener
      if (!stack.length) {
        return false;
      } else {
        // set the top of the stack to a variable
        var lastOpener = stack.pop()
        // check the last opener if equal to closing character
        if (openAndClose[lastOpener] !== char) {
          return false;
        };
      };
    };
  };
  // stack should be empty
  return stack.length === 0
}

