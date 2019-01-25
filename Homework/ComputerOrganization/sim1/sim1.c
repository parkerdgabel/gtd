/* Implementation of a 32-bit adder in C.
 *
 * Author: Parker Gabel
 */

#include "sim1.h"

void execute_add(Sim1Data *obj)
{
    int carry = 0;
    int a_input, b_input, sum;
    for(int i = 0; i < 32; i++) {
        a_input = (i >> obj->a) & 0x1;
        b_input = (i >> obj->b) & 0x1;
        sum = (a_input ^ b_input) ^ carry;
        carry = ((a_input ^ b_input) && carry) || (a_input && b_input);
        obj->sum = sum | (0x1 << i);
    }
}

