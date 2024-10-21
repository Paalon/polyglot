import java.util.Map;
import static java.util.Map.entry;

public class Main {
    public static void main(String[] args) {
        final var dictionary = Map.ofEntries(
            entry("a", "apple"),
            entry("b", "banana")
        );
        for (final var ENTRY : dictionary.entrySet()) {
            final var KEY = ENTRY.getKey();
            final var VALUE = ENTRY.getValue();
            System.out.println(KEY + " " + VALUE);
        }
    }
}
