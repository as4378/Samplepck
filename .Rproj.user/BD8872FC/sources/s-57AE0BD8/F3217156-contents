#include <R.h>
#include <R_ext/Rdynload.h>
#include "sum.h"


void sum_interface(int* a,int* b, int* result){
  *result = sum(a[0], b[0]);
}


R_CMethodDef cMethods[] = {
  {"sum_interface",
   (DL_FUNC) &sum_interface, 3
    //,{int, int}
  },
  {NULL, NULL, 0}
};


void R_init_NewPackage(DllInfo *info) {
  R_registerRoutines(info, cMethods, NULL, NULL, NULL);
  //R_useDynamicSymbols call says the DLL is not to be searched for
  //entry points specified by character strings so .C etc calls will
  //only find registered symbols.
  R_useDynamicSymbols(info, FALSE);
}
