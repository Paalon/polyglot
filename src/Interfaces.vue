<script setup lang="ts">
import CodeBlock from "@/CodeBlock.vue";

import codeJulia from "@/interfaces/main.jl?raw";
import codeRust from "@/interfaces/main.rs?raw";

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
