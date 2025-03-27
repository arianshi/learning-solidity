// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Todos {
    struct Todo {
       string text;
       bool completed; 
    }

    Todo[] public todos;

    function create(string calldata _text) public {
       // three ways to initilize a struct

       // 1. calling it like a function 
       todos.push(Todo(_text, false));

       // 2. key value mapping
       // todos.push(Todo({ text: _text, completed: false}));
       
       // 3. ini an empty struct and then update it
       // Todo memory todo;
       // todo.text = _text;
       // todos.push(todo);
    }

    // solidity automatically created a getter for 'todos' 
    // so you don't actually nedd this function
    function get(uint _index) public view returns (string memory _text, bool completed) {
         Todo storage todo = todos[_index];
         return (todo.text, todo.completed);
    }

    // update text
    function updateText(uint _index, string calldata _text) public  {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
    
    // update completed

    function updateCompleted(uint _index) public  {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}