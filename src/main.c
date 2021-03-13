#include "fsm.h"
#include "model.h"

/* Input variables ************************************************************/
int peatonP, peatonS, espiraS;

/* Main function **************************************************************/

int main ()
{
  fsm_t intersection_fsm;
  fsm_intersection_init(&intersection_fsm);
  peatonP = 1;

  while (1) {
      fsm_fire (&intersection_fsm);
  }
  return 1;
}
