<script setup lang="ts">
import CodeBlock from "@/CodeBlock.vue";

import codeCpp from "@/greetings/main.cpp?raw";
import codeGo from "@/greetings/main.go?raw";
import codeHaskell from "@/greetings/main.hs?raw";
import codeJulia from "@/greetings/main.jl?raw";
import codeRust from "@/greetings/main.rs?raw";

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
const codeBlockJulia = {
	text: codeJulia,
	language: "julia",
	title: "Julia"
};
const codeBlockRust = {
	text: codeRust,
	language: "rust",
	title: "Rust",
};
</script>

<template>
	<section>
		<h2>Greetings</h2>
		<section>
			<h3>C</h3>
		</section>
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
		</section>
		<section>
			<h3>JavaScript</h3>
		</section>
		<section>
			<h3>Julia</h3>
			<CodeBlock v-bind="codeBlockJulia"/>
		</section>
		<section>
			<h3>Nim</h3>
		</section>
		<section>
			<h3>Python</h3>
		</section>
		<section>
			<h3>Rust</h3>
			<CodeBlock v-bind="codeBlockRust"/>
		</section>
		<section>
			<h3>Zig</h3>
		</section>
	</section>
</template>

<style scoped>
</style>
