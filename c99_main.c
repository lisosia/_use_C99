#include "c89.h"

// c99 cooment
struct a1 {
	int a, b;
};

int main(){
	/* designated initialization from C99 */
	struct a1 tmp = { .b = 12 };

	c89_call();
	return 0;
}
