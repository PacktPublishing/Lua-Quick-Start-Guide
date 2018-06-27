extern "C" {
	#include "lua.h"
	#include "lauxlib.h"
	#include "lualib.h"
}

int main(int argc, char** argv) {
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	// Push values
	lua_pushstring(L, "Warrior");
	lua_pushnumber(L, 56);
	lua_pushnumber(L, 43);

	// Assign from top of stack, IE reverse order
	lua_setglobal(L, "defense");
	lua_setglobal(L, "attack");
	lua_setglobal(L, "class");

		// Load the file "printinfo.lua"
		int result = luaL_loadfile(L, "printinfo.lua");
	if (result != 0) {
		printf("Could not load hero.lua, exiting");
		lua_close(L);
		return -1;
	}

	// Execute the loaded LUA chunk
	result = lua_pcall(L, 0, 0, 0);
	if (result != 0) {
		const char* error = lua_tostring(L, -1);
		printf("Error loading hero.lua, exiting.\n");
		printf("Error message %s", error);
		lua_close(L);
		return -1;
	}

	lua_close(L);
	return 0;
}