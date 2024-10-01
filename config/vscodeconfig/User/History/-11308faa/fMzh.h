#pragma once

struct Item {
	string name;
	int value;
	bool operator==(Item& rhs);
	Item(string n, int v) :name(n), value(v) {}
};

string(*ItemtoString)(Item it) =
[](Item it)->string { return string("Name : ")
.append(it.name)
.append(" and value : ")
.append(std::to_string(it.value));
};
