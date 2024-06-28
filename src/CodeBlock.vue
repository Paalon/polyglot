<script setup lang="ts">
import hljs from "highlight.js";
import "highlight.js/styles/atom-one-light.css";
interface Props {
	title?: string;
	language?: string;
	text: string;
}
const props = withDefaults(defineProps<Props>(), {
	title: undefined,
	language: "plaintext",
});
const highlighted = hljs.highlight(props.text, {
	language: props.language,
}).value;
</script>

<template>
	<div class="code-block hljs">
		<span v-if="title !== undefined" class="title">{{ title }}</span>
		<pre><code class="hljs" v-html="highlighted"></code></pre>
	</div>
</template>

<style scoped>
</style>
