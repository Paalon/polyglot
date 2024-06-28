<script setup lang="ts">
import CodeBlock from "@/CodeBlock.vue";

import codeCpp from "@/composite_types/main.cpp?raw";
import codeGo from "@/composite_types/main.go?raw";
import codeHaskell from "@/composite_types/main.hs?raw";
import codeJava from "@/composite_types/Main.java?raw";
import codeJavaScript from "@/composite_types/main.js?raw";
import codeJulia from "@/composite_types/main.jl?raw";
import codeNim from "@/composite_types/main.nim?raw";
import codePython from "@/composite_types/main.py?raw";
import codeRust from "@/composite_types/main.rs?raw";

const codeBlockCpp = {
	text: codeCpp,
	language: "cpp",
	title: "C++",
};
const codeBlockGo = {
	text: codeGo,
	language: "go",
	title: "Go",
};
const codeBlockHaskell = {
	text: codeHaskell,
	language: "haskell",
	title: "Haskell",
};
const codeBlockJava = {
	text: codeJava,
	language: "java",
	title: "Java",
};
const codeBlockJavaScript = {
	text: codeJavaScript,
	language: "javascript",
	title: "JavaScript",
};
const codeBlockJulia = {
	text: codeJulia,
	language: "julia",
	title: "Julia"
};
const codeBlockNim = {
	text: codeNim,
	language: "nim",
	title: "Nim",
};
const codeBlockPython = {
	text: codePython,
	language: "python",
	title: "Python",
};
const codeBlockRust = {
	text: codeRust,
	language: "rust",
	title: "Rust",
};
</script>

<template>
	<section>
		<h2>Composite Types</h2>
		<section>
			<h3>C++</h3>
			<CodeBlock v-bind="codeBlockCpp"/>
		</section>
		<section>
			<h3>Go</h3>
			<CodeBlock v-bind="codeBlockGo"/>
		</section>
		<section>
			<h3>Haskell</h3>
			<CodeBlock v-bind="codeBlockHaskell"/>
		</section>
		<section>
			<h3>Java</h3>
			<CodeBlock v-bind="codeBlockJava"/>
		</section>
		<section>
			<h3>JavaScript</h3>
			<CodeBlock v-bind="codeBlockJavaScript"/>
		</section>
		<section>
			<h3>Julia</h3>
			<CodeBlock v-bind="codeBlockJulia"/>
		</section>
		<section>
			<h3>Nim</h3>
			<CodeBlock v-bind="codeBlockNim"/>
		</section>
		<section>
			<h3>Python</h3>
			<CodeBlock v-bind="codeBlockPython"/>
		</section>
		<section>
			<h3>Rust</h3>
			<CodeBlock v-bind="codeBlockRust"/>
		</section>
	</section>
</template>

<style scoped>
</style>
