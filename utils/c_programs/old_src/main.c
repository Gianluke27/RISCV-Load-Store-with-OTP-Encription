
int main() {
    /*
    int a = 5;
    int b = 10;
    int sum = a + b;
    */

    //int i = 10;

    int vett[10];

    vett[0] = 1;
    vett[1] = 1;
    for(int i=2; i<10; i++)
    {
        vett[i] = vett[i-1] + vett[i-2]; 
    }

    int sum = 0;
    for(int i=0; i<10; i++)
    {
        sum += vett[i];
    }
    

}