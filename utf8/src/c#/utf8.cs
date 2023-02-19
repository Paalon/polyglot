using System;
using System.Globalization;

public class Hello {
    public static void Main() {
        var enumerator = StringInfo.GetTextElementEnumerator("🍎 and 🍏");
        while (enumerator.MoveNext()) {
            Console.WriteLine(enumerator.Current);
        }
    }
}
