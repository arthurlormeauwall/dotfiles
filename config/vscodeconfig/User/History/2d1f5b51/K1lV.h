#pragma once
#include "atl_includes.h" 
// #include "MyModule.h"

class MyTests  : public AllTestBuilder {
public:
	MyTests() {}
	void addModules() override {
		// createModule<MyModule>("My Module");
		// createModule<AnotherModule>("Another Module");
	}
};
