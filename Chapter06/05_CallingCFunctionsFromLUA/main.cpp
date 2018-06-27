extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

#include <math.h>

int LuaVec3Magnitude(lua_State* L) {
	double x = lua_tonumber(L, 3);
	double y = lua_tonumber(L, 2);
	double z = lua_tonumber(L, 1);

	lua_pop(L, 3);

	double dot = x * x + y * y + z * z;
	if (dot == 0.0) {
		lua_pushnil(L);
	}
	else {
		lua_pushnumber(L, sqrt(dot));
	}

	return 1;
}

int main(int argc, char** argv) {
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	lua_pushcfunction(L, LuaVec3Magnitude);
	lua_setglobal(L, "Vec3Magnitude");

	// Load the file "printinfo.lua"
	int result = luaL_loadfile(L, "callcfunc.lua");
	if (result != 0) {
		printf("Could not load callcfunc.lua, exiting");
		lua_close(L);
		return -1;
	}

	// Execute the loaded LUA chunk
	result = lua_pcall(L, 0, 0, 0);
	if (result != 0) {
		const char* error = lua_tostring(L, -1);
		printf("Error loading callcfunc.lua, exiting.\n");
		printf("Error message %s", error);
		lua_close(L);
		return -1;
	}

	lua_close(L);
	return 0;
}