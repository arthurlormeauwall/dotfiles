#include <iostream>
#include "Item.h"

int main(){
    Item anItem("an item", 2);
    Item anotherItem("an other item", 3);
    std::cout<<"First Item : "<<ItemtoString(item)<<std::endl;
}