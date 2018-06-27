extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

#include <math.h>

#include "LuaBridge.h"
using namespace luabridge;

int main(int argc, char** argv) {
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);


	// Load the file "printinfo.lua"
	int result = luaL_loadfile(L, "03_sample.lua");
	if (result != 0) {
		printf("Could not load 03_sample.lua, exiting");
		const char* error = lua_tostring(L, -1);
		printf("Error message %s", error);
		lua_close(L);
		return -1;
	}

	// Execute the loaded LUA chunk
	result = lua_pcall(L, 0, 0, 0);
	if (result != 0) {
		const char* error = lua_tostring(L, -1);
		printf("Error loading 03_sample.lua, exiting.\n");
		printf("Error message %s", error);
		lua_close(L);
		return -1;
	}

	LuaRef bar = getGlobal(L, "bar");
	LuaRef foo = getGlobal(L, "foo");
	
	printf("foo: %s \n", foo.cast<const char*>());
	printf("bar: %d \n", bar.cast<int>());
	printf("Setting bar\n");
	bar = 57;
	printf("bar: %d \n", bar.cast<int>());
	printf("Calling debug\n");

	LuaRef debug = getGlobal(L, "debug");
	debug();

	lua_close(L);
	return 0;
}