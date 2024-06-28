<script setup lang="ts">
import CodeBlock from "@/CodeBlock.vue";

import codeCpp from "@/interfaces/main.cpp?raw";
import codeGo from "@/interfaces/main.go?raw";
import codeJava from "@/interfaces/Main.java?raw";
import codeJulia from "@/interfaces/main.jl?raw";
import codeRust from "@/interfaces/main.rs?raw";

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
const codeBlockJava = {
	text: codeJava,
	language: "java",
	title: "Java",
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
		<h2>Interfaces</h2>
		関数の型だけ持ち、定義を持たない。
		<section>
			<h3>C++</h3>
			<CodeBlock v-bind="codeBlockCpp"/>
		</section>
		<section>
			<h3>Go</h3>
			<CodeBlock v-bind="codeBlockGo"/>
		</section>
		<section>
			<h3>Java</h3>
			<CodeBlock v-bind="codeBlockJava"/>
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
