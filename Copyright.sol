pragma solidity >= 0.8.11 <= 0.8.11;
pragma experimental ABIEncoderV2;
//Copyright solidity code
contract Copyright {

    uint public userCount = 0; 
    mapping(uint => user) public userList; 
     struct user
     {
       string username;
       string password;
       string phone;
       string email;
       string home_address;
     }
 
   // events 
   event userCreated(uint indexed _userId);
   
   //function  to save user details to Blockchain
   function saveUser(string memory uname, string memory pass, string memory phone, string memory em, string memory add) public {
      userList[userCount] = user(uname, pass, phone, em, add);
      emit userCreated(userCount);
      userCount++;
    }

     //get user count
    function getUserCount()  public view returns (uint) {
          return  userCount;
    }

    uint public copyrightCount = 0; 
    mapping(uint => copyright) public copyrightList; 
     struct copyright
     {
       string username;
       string filename;
       string hash;       
       string upload_date;
     }
 
   // events 
   event copyrightCreated(uint indexed _copyrightId);
   
   //function  to save copyright hash details to Blockchain
   function saveCopyright(string memory uname, string memory fname, string memory h, string memory ud) public {
      copyrightList[copyrightCount] = copyright(uname, fname, h, ud);
      emit copyrightCreated(copyrightCount);
      copyrightCount++;
    }

    //get File count
    function getCopyrightCount()  public view returns (uint) {
          return copyrightCount;
    }

    function getUsername(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.username;
    }

    function getPassword(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.password;
    }

    function getPhone(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.phone;
    }    

    function getEmail(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.email;
    }

    function getAddress(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.home_address;
    }

    function getOwner(uint i) public view returns (string memory) {
        copyright memory doc = copyrightList[i];
	return doc.username;
    }

    function getFilename(uint i) public view returns (string memory) {
        copyright memory doc = copyrightList[i];
	return doc.filename;
    }

    function getHash(uint i) public view returns (string memory) {
        copyright memory doc = copyrightList[i];
	return doc.hash;
    }   
    
    function getDate(uint i) public view returns (string memory) {
        copyright memory doc = copyrightList[i];
	return doc.upload_date;
    } 
     
}