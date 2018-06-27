extern "C" {
	#include "lua.h"
	#include "lauxlib.h"
	#include "lualib.h"
}
#include <string.h>

int main(int argc, char** argv) {
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	// Load the file "hero.lua"
	int result = luaL_loadfile(L, "hero.lua");
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

	int stack_base = lua_gettop(L);

	// Push character attributes onto stack
	lua_getglobal(L, "class"); // Index 1
	lua_getglobal(L, "attack"); // Index 2
	lua_getglobal(L, "defense"); // Index 3

								 // Read the value of each new thing on the stack
	const char* class_p = lua_tostring(L, stack_base + 1);
	char class_sz[32];
	strcpy(class_sz, class_p);
	int attack = lua_tointeger(L, stack_base + 2);
	int defense = lua_tointeger(L, stack_base + 3);

	// Clean up the stack
	lua_pop(L, 3);

	// Do something with the values
	printf("Character is %s with %d attack and %d defense\n", class_sz, attack, defense);

	// Close LUA & clean up
	lua_close(L);
	return 0;
}