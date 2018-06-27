extern "C" {
	#include "lua.h"
	#include "lauxlib.h"
	#include "lualib.h"
}

int main(int argc, char** argv) {
	// First, create a new lua state
	lua_State *L = luaL_newstate();
	// Next, load all the standard libraries
	luaL_openlibs(L);

	//Write code that interacts with the LUA runtime here

	// Finally, destory the lua state
	lua_close(L);
	return 0;
}