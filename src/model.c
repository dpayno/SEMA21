#include "model.h"

#include <stdio.h>
#include <time.h>

#define TIMEOUT_SECONDARY_YELLOW 5
#define TIMEOUT_PRINCIPAL_YELLOW 5
#define TIMEOUT_PRINCIPAL_GREEN  20
#define TIMEOUT_PRINCIPAL_RED    15

extern int peatonP, peatonS, espiraS;

/** FSM Transition Tables */
enum intersection_state {
  P_GREEN_S_RED,
  P_YELLOW_S_RED,
  P_RED_S_GREEN,
  P_RED_S_YELLOW,
};

/* Global variables ***********************************************************/
static int deadline;
static semaphore_t semaphore_P;
static semaphore_t semaphore_S;
static time_t m_now;

/* Function prototypes ********************************************************/
static int check_pyellow_sred (fsm_t* this);
static int check_pred_sgreen (fsm_t* this);
static int check_pred_syellow (fsm_t* this);
static int check_pgreen_sred (fsm_t* this);
static void set_pyellow_sred (fsm_t* this);
static void set_pred_sgreen (fsm_t* this);
static void set_pred_syellow (fsm_t* this);
static void set_pgreen_sred (fsm_t* this);

static int now();

/* Callbacks ******************************************************************/

/* Guard functions */

static int check_pyellow_sred (fsm_t* this)
{
  return (now() >= deadline) && (peatonP || espiraS);
}

static int check_pred_sgreen (fsm_t* this)
{
  return now() >= deadline;
}

static int check_pred_syellow (fsm_t* this)
{
  return now() >= deadline;
}

static int check_pgreen_sred (fsm_t* this)
{
  return now() >= deadline;
}


/* Action functions */

static void set_pyellow_sred (fsm_t* this)
{
  semaphore_P.color = YELLOW;
  semaphore_S.color = RED;
  deadline = now() + TIMEOUT_PRINCIPAL_YELLOW;
  peatonP = 0;
  peatonS = 0;
  espiraS = 0;
  printf("semaphore_P.color = YELLOW\n");
  printf("semaphore_s.color = RED\n");
}

static void set_pred_sgreen (fsm_t* this)
{
  semaphore_P.color = RED;
  semaphore_S.color = GREEN;
  deadline = now() + TIMEOUT_PRINCIPAL_RED;
  printf("semaphore_P.color = RED\n");
  printf("semaphore_s.color = GREEN\n");
}

static void set_pred_syellow (fsm_t* this)
{
  semaphore_P.color = RED;
  semaphore_S.color = YELLOW;
  deadline = now() + TIMEOUT_SECONDARY_YELLOW;
  printf("semaphore_P.color = RED\n");
  printf("semaphore_s.color = YELLOW\n");
}

static void set_pgreen_sred (fsm_t* this)
{
  semaphore_P.color = GREEN;
  semaphore_S.color = RED;
  deadline = now() + TIMEOUT_PRINCIPAL_GREEN;
  printf("semaphore_P.color = GREEN\n");
  printf("semaphore_s.color = RED\n");
}

static int now()
{
  return (int)time(&m_now);
}

/* Transition Table ***********************************************************/
static fsm_trans_t intersection_tt[] = {

  { P_GREEN_S_RED,  check_pyellow_sred, P_YELLOW_S_RED, set_pyellow_sred },
  { P_YELLOW_S_RED, check_pred_sgreen,  P_RED_S_GREEN,  set_pred_sgreen  },
  { P_RED_S_GREEN,  check_pred_syellow, P_RED_S_YELLOW, set_pred_syellow },
  { P_RED_S_YELLOW, check_pgreen_sred,  P_GREEN_S_RED,  set_pgreen_sred  },
  {-1, NULL, -1, NULL },

};

/* Public functions ***********************************************************/
void fsm_intersection_init(fsm_t* fsm)
{
  fsm_init (fsm, (fsm_trans_t*)(&intersection_tt));
  deadline = 0;
  semaphore_P.color = GREEN;
  semaphore_S.color = RED;
}