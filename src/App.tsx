import "./App.css";

import { Section } from "./Section.ts";

import { Hello } from "./Hello.tsx";

const sections: Section[] = [
	{
		title: <>Programming Languages</>,
		id: "programming-languages",
		content: <>Comparison of programming languages.</>,
		children: [
			Hello,
		],
	},
];

export default function App() {
	function show(
			section: Section,
			n: number,
			parentNumbering: number[],
			depth: number,
	) {
		const numbering = Array.from(parentNumbering);
		numbering.push(n);
		const numberingText = numbering.map(n => n.toString()).join(".");
		return <section id={section.id} key={section.id}>
			{
				depth == 1 ? <h1>{numberingText} {section.title}</h1> :
				depth == 2 ? <h2>{numberingText} {section.title}</h2> :
				depth == 3 ? <h3>{numberingText} {section.title}</h3> :
				depth == 4 ? <h4>{numberingText} {section.title}</h4> :
				depth == 5 ? <h5>{numberingText} {section.title}</h5> :
				depth == 6 ? <h6>{numberingText} {section.title}</h6> : null
			}
			{section.content === undefined ? null :
				section.content
			}
			{section.children === undefined ? null :
				<>{
					section.children.map((prop, n) => show(prop, n + 1, numbering, depth + 1))
				}</>
			}
		</section>;
	}
	return <>
		<main>
			<h1>Polyglot</h1>
			<p>Under construction.</p>
			{sections.map((section, n) => show(section, n + 1, [], 2))}
		</main>
	</>
}
