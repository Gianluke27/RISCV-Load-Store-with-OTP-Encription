int main() {
    int vett[10];

    vett[0] = 1;
    vett[1] = 1;
    vett[2] = vett[0] + vett[1]; 
    vett[3] = vett[1] + vett[2]; 
    vett[4] = vett[2] + vett[3]; 
    vett[5] = vett[3] + vett[4]; 
    vett[6] = vett[4] + vett[5]; 
    vett[7] = vett[5] + vett[6]; 
    vett[8] = vett[6] + vett[7]; 
    vett[9] = vett[7] + vett[8]; 

    int sum = vett[0] + vett[1] + vett[2] + vett[3] + vett[4] +
        vett[5] + vett[6] + vett[7] + vett[8] + vett[9];
    

}