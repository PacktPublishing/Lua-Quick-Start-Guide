extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

#include <math.h>

#include "LuaBridge.h"
using namespace luabridge;

class Vec3 {
public:
	float x, y, z;
	static Vec3 zero;

	Vec3() : x(0), y(0), z(0) { }
	Vec3(float _x, float _y, float _z) : x(_x), y(_y), z(_z) { }

	float Dot() const {
		return x * x + y * y + z * z;
	}

	float Magnitude() const {
		float dot = Dot();
		if (dot == 0.0f) {
			return 0.0f;
		}
		return sqrt(dot);
	}

	void Normalize() {
		float mag = Magnitude();
		if (mag == 0.0f) {
			return;
		}
		x /= mag;
		y /= mag;
		z /= mag;
	}


	static Vec3 get_upvector() {
		return Vec3(0, 1, 0);
	}

	static Vec3 Cross(Vec3 v1, Vec3 v2) {
		float x = v1.y * v2.z - v1.z * v2.y;
		float y = v1.z * v2.x - v1.x * v2.z;
		float z = v1.x * v2.y - v1.y * v2.x;
		return Vec3(x, y, z);
	}
};

Vec3 Vec3::zero = Vec3(0, 0, 0);


class Vec4 : public Vec3 {
	int w;
};


int main(int argc, char** argv) {
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	getGlobalNamespace(L)
		.beginNamespace("Math")
			.beginClass<Vec3>("Vec3")
				.addConstructor<void(*) (float, float, float)>()
				.addData("x", &Vec3::x)
				.addData("y", &Vec3::y)
				.addData("z", &Vec3::z)
				.addProperty("Magnitude", &Vec3::Magnitude)
				.addFunction("Normalize", &Vec3::Normalize)
				.addStaticData("Zero", &Vec3::zero, false)
				.addStaticProperty("Up", &Vec3::get_upvector)
				.addStaticFunction("Cross", &Vec3::Cross)
			.endClass()
			.deriveClass<Vec4, Vec3>("Vec4")
			.endClass()
		.endNamespace();


	// Load the file "printinfo.lua"
	int result = luaL_loadfile(L, "02_sample.lua");
	if (result != 0) {
		printf("Could not load 02_sample.lua, exiting");
		const char* error = lua_tostring(L, -1);
		printf("Error message %s", error);
		lua_close(L);
		return -1;
	}

	// Execute the loaded LUA chunk
	result = lua_pcall(L, 0, 0, 0);
	if (result != 0) {
		const char* error = lua_tostring(L, -1);
		printf("Error loading 02_sample.lua, exiting.\n");
		printf("Error message %s", error);
		lua_close(L);
		return -1;
	}

	lua_close(L);
	return 0;
}