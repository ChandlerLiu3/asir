
#include <list>
#include <iostream>
using namespace std;

int main()
{
    list<int> ll;
    list<int>::iterator i = ll.insert(ll.end(), 1);
    i = ll.insert(ll.end(), 2);
    i = ll.insert(ll.end(), 3);
    i = ll.insert(ll.end(), 4);

    for (i = ll.begin(); i != ll.end(); i++) {
        cout << *i << endl;
    }

    return *i;
}

