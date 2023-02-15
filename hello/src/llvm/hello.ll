@.str = private unnamed_addr constant [7 x i8] c"Hello!\00"

declare i32 @puts(ptr nocapture) nounwind

define i32 @main() {
    call i32 @puts(ptr @.str)
    ret i32 0
}
