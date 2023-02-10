#include <iostream>
// requires icu4c
#include <unicode/brkiter.h>

int main() {
    std::string str = "🍎 and 🍏";
    UText *ut;
    UErrorCode status = U_ZERO_ERROR;
    int32_t current;
    int32_t next;
    int32_t size;

    icu::BreakIterator *it = icu::BreakIterator::createCharacterInstance(icu::Locale::getDefault(), status);
    ut = utext_openUTF8(NULL, str.c_str(), -1, &status);
    it->setText(ut, status);

    for (
        current = it->first(),
        next = it->next();
        next != icu::BreakIterator::DONE;
        current = next,
        next = it->next()
    ) {
        size = next - current;
        std::cout << str.substr(current, size) << std::endl;
    }
}