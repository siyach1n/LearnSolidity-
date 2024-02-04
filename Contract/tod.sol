// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract practiceStruct{
    /*Simple todo*/
    struct Todo{
        string work;
        bool status;
    }
    // Todo todo;  // stroage variable
    Todo[] public todo;

    function setWork(string memory _work,bool _status)public {
        todo.push(Todo({work:_work,status:_status}));
    }

    function getWork(uint _index )public view  returns(string memory){
        return todo[_index].work; //it get from the index
    }
}