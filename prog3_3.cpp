#include <string>
#include <iostream>

using namespace std;

extern "C"{
  #include "lua.h"
  #include "lualib.h"
  #include "lauxlib.h"
}

int main(int argc, char* argv[]) {

  lua_State *L = luaL_newstate(); /* Initialize */
  luaL_openlibs(L);
  luaL_dofile(L, argv[1]); /* Execute the file in the env */

  // input
  string input;
  getline(cin, input);

  // call InfixToPostfix() in lua
  string internetisawesome = "return InfixToPostfix("+input+")";
  luaL_dostring(L, internetisawesome.c_str());
  cout << luaL_checkstring(L, 1) << endl;

  lua_close(L); /* Close the enviornment */
  return 0;

}
