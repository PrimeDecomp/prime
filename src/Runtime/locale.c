#include <limits.h>
#include <locale.h>

struct lconv __lconv = {
    ".",      // decimal_point
    "",       // thousands_sep
    "",       // grouping
    "",       // mon_decimal_point
    "",       // mon_thousands_sep
    "",       // mon_grouping
    "",       // positive_sign
    "",       // negative_sign
    "",       // currency_symbol
    CHAR_MAX, // frac_digits
    CHAR_MAX, // p_cs_precedes
    CHAR_MAX, // n_cs_precedes
    CHAR_MAX, // p_sep_by_space
    CHAR_MAX, // n_sep_by_space
    CHAR_MAX, // p_sign_posn
    CHAR_MAX, // n_sign_posn
    "",       // int_curr_symbol
    CHAR_MAX, // int_frac_digits
    CHAR_MAX, // int_p_cs_precedes
    CHAR_MAX, // int_n_cs_precedes
    CHAR_MAX, // int_p_sep_by_space
    CHAR_MAX, // int_n_sep_by_space
    CHAR_MAX, // int_p_sign_posn
    CHAR_MAX, // int_n_sign_posn
};

// Just here to generate the extra string,
// the real usage is inside setlocale, which is stripped
static char* locale_name = "C";
