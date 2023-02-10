#include <stdio.h>
// requires icu4c
#include <unicode/ubrk.h>

int main() {
    const char* text = "🍎 and 🍏";
    UErrorCode status = U_ZERO_ERROR;
    UBreakIterator *bi = ubrk_open(UBRK_CHARACTER, uloc_getDefault(), NULL, 0, &status);
    UText* ut = utext_openUTF8(NULL, text, -1, &status);
    ubrk_setUText(bi, ut, &status);
    int32_t current;
    int32_t next;
    int32_t size;
    for (
        current = ubrk_first(bi),
        next = ubrk_next(bi);
        next != UBRK_DONE;
        current = next,
        next = ubrk_next(bi)
    ) {
        size = next - current;
        printf("%.*s\n", size, text + current);
    }
    ubrk_close(bi);
    utext_close(ut);
}
