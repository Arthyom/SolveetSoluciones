#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int   desplegarMenu (){
  int opcion;
  printf("1) ingresar pasajero \n 2) eliminar pasajero \n 3) mostrar asientos \n 4) salir \n" );
  scanf("%d",&opcion );
  return opcion;
}

void  addPasajero   (int asiento, char ** matrizAsientos){

  int asientoNumber = 1;
  int i,j;
  for ( i = 0 ; i < 10 ; i ++ )
  {
    for ( j = 0 ; j < 4 ; j++)
    {
      if(asientoNumber == asiento)
        matrizAsientos[i][j] = 'X';
      asientoNumber++;

    }
  }
}

void  delPasajero   (int asiento, char ** matrizAsientos){
    int asientoNumber = 1;
    int i,j;
    for ( i = 0 ; i < 10 ; i ++ )
    {
      for ( j = 0 ; j < 4 ; j++)
      {
        if(asientoNumber == asiento)
          matrizAsientos[i][j] = '*';
        asientoNumber++;
      }
    }
}

void  shwAsientos   ( char ** matrizAsiento) {
  int i,j;
  int asientoNumber = 0;
  for ( i = 0 ; i < 10 ; i ++, asientoNumber++ )
  {
    printf(" \n" );
    for ( j = 0 ; j < 4 ; j+=4, asientoNumber+=4)
    {
      printf("[%c][%c] || [%c][%c] \n", matrizAsiento[i][j], matrizAsiento[i][j+1],matrizAsiento[i][j+2],matrizAsiento[i][j+3]);
    }
  }
}

int   buscarNumero  ( int * vectotUsado, int numeroMaximo){

    int i = 0;
    for ( i = 0; i < numeroMaximo ; i++ )
        if (numeroMaximo == vectotUsado[i])
            return 1;

    vectotUsado[i]=numeroMaximo;
    return 0;
}

char ** matriz      ( ){

    srand(time(NULL)) ;
    int numeroMaximo = rand()%(30-5+1)+5;

    char **matrizAsiento = (char*) malloc(sizeof(char*)*10);
    int i,j;
    for (i = 0; i< 10 ; i++)
        matrizAsiento[i] = (char*) malloc(sizeof(char)*4);
    for (i = 0 ; i < 10 ; i++ )
        for (j=0; j < 4 ; j++ )
            matrizAsiento[i][j] = '*';

    int numerosUsados = (int*) malloc(sizeof(int)*numeroMaximo);

    int numeroEncontrado = 0;
    while(numeroEncontrado<numeroMaximo){
        if ( !buscarNumero(numerosUsados,numeroMaximo) ){
            addPasajero(rand()%30,matrizAsiento);
            numeroEncontrado++;
        }
    }
    return matrizAsiento;
}


int main (){

  char **matrizAsiento = matriz();
  int salir = 1;
  int asiento;

  while (salir){

      switch ( desplegarMenu() ) {

        case 1:
          scanf("%d",&asiento ); addPasajero(asiento,matrizAsiento);
        break;

        case 2:
          scanf("%d",&asiento ); delPasajero(asiento,matrizAsiento);
        break;

        case 3:  shwAsientos(matrizAsiento); break;

        case 4: salir = 0; break;
      }

      printf("\n \n ");
  }

return 0;

}


