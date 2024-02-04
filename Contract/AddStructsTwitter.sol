// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Define a Tweet Struct with author, content, timestamp, likes
// 2️⃣ Add the struct to array
// 3️⃣ Test Tweets

contract Twitter {

//define struct

    struct Tweet{
        address author;
        string content;
        uint timestamp;
        uint likes;
    }
    
//mapping the struct - Tweet
mapping (address => Tweet[]) public tweets;


function tweet(string memory _createtweet)public {
    Tweet memory newTweet = Tweet({
        author:msg.sender,
        content: _createtweet,
        timestamp:block.timestamp,
        likes:0
    });

    tweets[msg.sender].push(newTweet);
}
function getTweet(address _owner, uint _i) public view returns (Tweet memory) {
        return tweets[_owner][_i];
    }
function getallTweet(address _owner)public view returns(Tweet[]memory){
    return tweets[_owner];
}


}