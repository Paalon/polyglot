<script setup lang="ts">
import CodeBlock from "@/CodeBlock.vue";

import codeCpp from "@/composite_types/main.cpp?raw";
import codeGo from "@/composite_types/main.go?raw";
import codeJulia from "@/composite_types/main.jl?raw";
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
			<h3>Julia</h3>
			<CodeBlock v-bind="codeBlockJulia"/>
		</section>
		<section>
			<h3>Rust</h3>
			<CodeBlock v-bind="codeBlockRust"/>
		</section>
	</section>
</template>

<style scoped>
</style>
