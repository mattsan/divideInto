#include <iostream>
#include <string>
#include <vector>

#include "divideInto.h"

int main(int, char* [])
{
    std::string s = "12345678";

    std::vector<std::string::iterator> result = divideInto(3, s.begin(), s.end());

    for(int i = 0; i < result.size() - 1; ++i)
    {
        std::cout << std::string(result[i], result[i + 1]) << std::endl;
    }

    return 0;
}
