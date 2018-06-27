extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

int LinearIndex(lua_State*L, int row, int col) {
	// Push the GetIndex function on the stack
	lua_getglobal(L, "GetIndex");
	// Stack: function (GetIndex)

	if (lua_isnil(L, -1)) {
		printf("Error: GetIndex was nil\n");
		lua_pop(L, 1);
		return 0;
	}

	// Push the row variable on the stack
	lua_pushnumber(L, row);
	// Stack: function (GetIndex), int (row)

	// Push the col variable on the stack
	lua_pushnumber(L, col);
	// Stack: function (GetIndex), int (row), int (col)

	// Pop two arguments off the stack (row & col)
	// Call the function on the top of the stack (GetIndex)
	// Leave one value on the stack
	int pcall = lua_pcall(L, 2, 1, 0);
	// Stack: int (return value of GetIndex)

	int result = 0;
	if (pcall != 0) {
		const char* error = lua_tostring(L, -1);
		printf("error: %s", error);
		lua_pop(L, 1);
	}
	else {
		// Remove the result of GetIndex from the stack
		result = lua_tointeger(L, -1);
		lua_pop(L, 1);
		// Stack: empty
	}
	return result;
}

int main(int argc, char** argv) {
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	// Load the file "printinfo.lua"
	int result = luaL_loadfile(L, "findindex.lua");
	if (result != 0) {
		printf("Could not load findindex.lua, exiting");
		lua_close(L);
		return -1;
	}

	result = lua_pcall(L, 0, 0, 0);
	if (result != 0) {
		const char* error = lua_tostring(L, -1);
		printf("Error loading hero.lua, exiting.\n");
		printf("Error message %s", error);
		lua_close(L);
		return -1;
	}

	int index = LinearIndex(L, 3, 5);
	printf("Index for (3, 5): %d", index);

	lua_close(L);
	return 0;
}