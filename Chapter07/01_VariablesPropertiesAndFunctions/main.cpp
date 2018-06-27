extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

#include <stdio.h>

#include "LuaBridge.h"
using namespace luabridge;

int bar = 0;

int get_bar() {
	printf("Getter called\n");
	return bar;
}

void set_bar(int b) {
	printf("Setter called\n");
	bar = b;
}

int bar_func() {
	return 2;
}

int bar_c(lua_State* L) {
	lua_pushnumber(L, 2);
	return 1;
}

int main(int argc, char** argv) {
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	getGlobalNamespace(L)
		.beginNamespace("foo")
			.addVariable("bar_variable", &bar)
			.addFunction("bar_function", bar_func)
			.addCFunction("bar_cfunction", bar_c)
			.addProperty("bar_getset", get_bar, set_bar)
			//.addProperty("bar_readonly", get_bar)
		.endNamespace();


	// Load the file "printinfo.lua"
	int result = luaL_loadfile(L, "01_sample.lua");
	if (result != 0) {
		printf("Could not load 01_sample.lua, exiting");
		lua_close(L);
		return -1;
	}

	// Execute the loaded LUA chunk
	result = lua_pcall(L, 0, 0, 0);
	if (result != 0) {
		const char* error = lua_tostring(L, -1);
		printf("Error loading 01_sample.lua, exiting.\n");
		printf("Error message %s", error);
		lua_close(L);
		return -1;
	}

	lua_close(L);
	return 0;
}