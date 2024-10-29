import { JSX } from "react";

export interface Section {
	title: JSX.Element,
	id: string,
	content: JSX.Element,
	children?: Section[],
}
