<script setup lang="ts">
import CodeBlock from "@/CodeBlock.vue";

import codeCpp from "@/ad_hoc_polymorphism/main.cpp?raw";
import codeJulia from "@/ad_hoc_polymorphism/main.jl?raw";
import codeNim from "@/ad_hoc_polymorphism/main.nim?raw";
import codeRust from "@/ad_hoc_polymorphism/main.rs?raw";

const codeBlockCpp = {
	text: codeCpp,
	language: "cpp",
	title: "C++",
}
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
const codeBlockRust = {
	text: codeRust,
	language: "rust",
	title: "Rust",
};
</script>

<template>
	<section>
		<h2>Ad Hoc Polymorphism</h2>
		<section>
			<h3>C++</h3>
			<CodeBlock v-bind="codeBlockCpp"/>
		</section>
		<section>
			<h3>Go</h3>
		</section>
		<section>
			<h3>Haskell</h3>
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
			<CodeBlock v-bind="codeBlockNim"/>
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
