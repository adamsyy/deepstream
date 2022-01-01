pragma solidity ^0.5.0;

contract SocialNetwork{
    string public name;
    uint public postCount=0;

    mapping(uint=>Post)public posts;

struct Post{
    uint id;
    string content;
    uint tipAmount;
    address owner;
}

event PostCreated(uint id, string content, uint tipAmount, address owner);

        constructor()public{
        name="adam ahne";
        }



   function createPost(string memory _content)public{
       require(bytes(_content).length>0);
      postCount++;
posts[postCount]=Post(postCount,_content,0,msg.sender);
emit PostCreated(postCount,_content,0,msg.sender);

   }   
}          