#pragma once
#include "Item.h"

bool Item::operator==(Item &rhs)
{
	return name == rhs.name && value == rhs.value;
}

string (*ItemtoString)(Item it) =
	[](Item it) -> string {
	return string("Name : ")
		.append(it.name)
		.append(" and value : ")
		.append(std::to_string(it.value));
};