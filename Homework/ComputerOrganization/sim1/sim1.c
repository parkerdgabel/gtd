/* Implementation of a 32-bit adder in C.
 *
 * Author: Parker Gabel
 */

#include "sim1.h"

void execute_add(Sim1Data *obj) {
    // Initialize obj->sum to zero
    obj->sum = 0;
    // Initialize carry to 1 is subtraction flag is set else 0
    int carry;
    if (obj->isSubtraction) {
        carry = 1;
    } else {
        carry = 0;
    }
    // Set non neg flags
    if ((obj->a >> 31) & 0x1) {
        obj->aNonNeg = 0;
    } else {
        obj->aNonNeg = 1;
    }
     if ((obj->b >> 31) & 0x1) {
        obj->bNonNeg = 0;
    } else {
        obj->bNonNeg = 1;
    }
    int a_input, b_input, sum;
    for (int i = 0; i < 32; i++) {
        // Use if statement to flip b_input if subtraction flag is set.
        a_input = (obj->a >> i) & 0x1;
        b_input = (obj->b >> i) & 0x1;
        if (obj->isSubtraction) {
            if (b_input) {
                b_input = 0;
            } else {
                b_input = 1;
            }
        }
        sum = (a_input ^ b_input) ^ carry;
        carry = ((a_input ^ b_input) & carry) | (a_input & b_input);
        // If sum != 0 then turn on bit at specific place
        if (sum) {
            obj->sum |= sum | (0x1 << i);
        }
    }
  if ((obj->sum >> 31) & 0x1) {
        obj->sumNonNeg = 0;
    } else {
        obj->sumNonNeg = 1;
    }
  obj->carryOut = carry;
  if (((!obj->aNonNeg && !obj->bNonNeg) && obj->sumNonNeg) && !obj->isSubtraction) {
      obj->overflow = 1;
  } else if (((obj->aNonNeg && obj->bNonNeg) && !obj->sumNonNeg) && !obj->isSubtraction) {
      obj->overflow = 1;
  } else {
      obj->overflow = 0;
  }
}

