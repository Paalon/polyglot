#include <stdio.h>
#include <glib.h>

void f(void * key, void * value, void *) {
    printf("%s %s\n", (char *)key, (char *)value);
}

int main() {
    auto dictionary = g_hash_table_new(g_str_hash, g_str_equal);
    g_hash_table_insert(dictionary, "a", "apple");
    g_hash_table_insert(dictionary, "b", "banana");
    g_hash_table_foreach(dictionary, f, nullptr);
    g_hash_table_destroy(dictionary);
}
