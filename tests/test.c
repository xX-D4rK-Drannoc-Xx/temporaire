#include <criterion/criterion.h>
#include <stdio.h>

#include "../src/my_fnmatch.h"

Test(Blank, blk)
{
    cr_assert_eq(1, 1);
}
