#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int main()
{
    
    int n = 0;
    int nums[200];

    ifstream File;
    File.open("nums.txt");
    while(!File.eof())
    {
        File >> nums[n];
        n++;
        cout << nums[n]; //TEST PARAM
    }

    File.close();

for(int i = 0; i < 200; i++)
{
for(int j = 0; j < 200; j++)
{
for(int k = 0; k < 200; k++)
{
if(nums[i] + nums[j] + nums[k] == 2020)
{
cout << nums[i] << " " << nums[j] << " " << nums[k] << endl;
cout << nums[i] * nums[j] * nums[k] << endl;
}//if
}//k
}//j
}//i

return 0;
}
