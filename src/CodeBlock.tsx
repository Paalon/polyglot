import styles from "./CodeBlock.module.css";

import hljs from "highlight.js";

export function CodeBlock({
	caption = undefined,
	language,
	styleLanguage = undefined,
	code,
}: {
	caption?: string,
	language: string,
	styleLanguage?: string,
	code: string,
}) {
	if (styleLanguage === undefined)
		styleLanguage = language;
	const highlightedCode = hljs.highlight(code, { language: styleLanguage }).value;
	return <div className={styles.codeBlock}>
		{caption !== undefined && <div className={styles.caption}>{caption}</div>}
		<div className={styles.language}>{language}</div>
		<div className={`${styles.code} hljs`}>
			<pre><code className={styles.fontMonospace} dangerouslySetInnerHTML={{__html: highlightedCode }}></code></pre>
		</div>
	</div>;
}
