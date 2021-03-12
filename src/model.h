#ifndef MODEL_H

#include "fsm.h"

/**
 * @brief Semaphore color
 */
typedef enum 
{  
    GREEN  = 0, 
    YELLOW = 1,
    RED    = 2,

} semaphore_color_t;

/**
 * @brief Opcode callback data
 */
typedef struct semaphore_t {
	semaphore_color_t color;
} semaphore_t;

/**
 * @brief Inits FSM intersection
 */
void fsm_intersection_init(fsm_t* fsm);

#define MODEL_H
#endif