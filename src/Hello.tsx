import { Section } from "./Section.ts";
import { CodeBlock } from "./CodeBlock.tsx";

import codeAda from "./program/ada/hello/hello.adb?raw";
import codeC from "./program/c/hello/src/main.c?raw";
import codeCplusplus from "./program/cplusplus/hello/src/main.cpp?raw";
import codeCsharp from "./program/csharp/hello/hello.cs?raw";
import codeD from "./program/d/hello/hello.d?raw";
import codeGo from "./program/go/hello/hello.go?raw";
import codeRust from "./program/rust/hello/src/main.rs?raw";

export const Hello: Section = {
    title: <>Hello: minimal meaningful program</>,
    id: "hello",
    children: [
        {
            title: <>Ada</>,
            id: "ada",
            content: <>
                <CodeBlock language="Ada" code={codeAda}/>
            </>,
        },
        {
            title: <>C</>,
            id: "c",
            content: <>
                <CodeBlock language="C" code={codeC}/>
            </>,
        },
        {
            title: <>C++</>,
            id: "cplusplus",
            content: <>
                <CodeBlock language="C++" code={codeCplusplus}/>
            </>,
        },
        {
            title: <>C#</>,
            id: "csharp",
            content: <>
                <CodeBlock language="C#" code={codeCsharp}/>
            </>,
        },
        {
            title: <>D</>,
            id: "d",
            content: <>
                <CodeBlock language="D" code={codeD}/>
            </>,
        },
        {
            title: <>Go</>,
            id: "go",
            content: <>
                <CodeBlock language="Go" code={codeGo}/>
            </>,
        },
        {
            title: <>Rust</>,
            id: "rust",
            content: <>
                <CodeBlock language="Rust" code={codeRust}/>
            </>,
        },
    ],
};
