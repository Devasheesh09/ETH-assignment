pragma solidity >=0.8.2 <0.9.0;

contract Token
{
  string public token_name = "ALPHA";
  string public token_abbry = "ALP";
  uint public total_supply = 0;

  mapping(address => uint)public balances;

  function mint (address _address, uint _value) 
  public{
    total_supply += _value;
    balances [_address] += _value;
  }

  function burn (address _address, uint _value) 
  public {
    if(balances[_address] >= _value) {
      total_supply -= _value;
      balances[_address] -= _value;
    }
  }
}
