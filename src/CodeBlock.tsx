import styles from "./CodeBlock.module.css";

import hljs from "highlight.js";

export function CodeBlock({
	caption = undefined,
	language,
	code,
}: {
	caption?: string,
	language: string,
	code: string,
}) {
	/* eslint-disable @typescript-eslint/no-unsafe-member-access, @typescript-eslint/no-unsafe-call */
	const highlightedCode = hljs.highlight(code, { language }).value;
	return <div className={styles.codeBlock}>
		{caption !== undefined && <div className={styles.caption}>{caption}</div>}
		<div className={styles.language}>{language}</div>
		<div className={`${styles.code} hljs`}>
			<pre><code className={styles.fontMonospace} dangerouslySetInnerHTML={{__html: highlightedCode }}></code></pre>
		</div>
	</div>;
}
