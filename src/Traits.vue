<script setup lang="ts">
import CodeBlock from "@/CodeBlock.vue";

import codeJuliaComposition from "@/traits/composition/main.jl?raw";
import codeJuliaSum from "@/traits/sum/main.jl?raw";

import codeRustComposition from "@/traits/composition/main.rs?raw";
import codeRustSum from "@/traits/sum/main.rs?raw";
import codeRustAliasing from "@/traits/aliasing/main.rs?raw";

import codeScalaComposition from "@/traits/composition/main.scala?raw";
import codeScalaSum from "@/traits/sum/main.scala?raw";

const codeBlockJuliaComposition = {
	text: codeJuliaComposition,
	language: "julia",
	title: "Julia",
};
const codeBlockJuliaSum = {
	text: codeJuliaSum,
	language: "julia",
	title: "Julia"
};
const codeBlockRustComposition = {
	text: codeRustComposition,
	language: "rust",
	title: "Rust",
};
const codeBlockRustSum = {
	text: codeRustSum,
	language: "rust",
	title: "Rust",
};
const codeBlockRustAliasing = {
	text: codeRustAliasing,
	language: "rust",
	title: "Rust",
};
const codeBlockScalaComposition = {
	text: codeScalaComposition,
	language: "scala",
	title: "Scala"
};
const codeBlockScalaSum = {
	text: codeScalaSum,
	language: "scala",
	title: "Scala"
};
</script>

<template>
	<section>
		<h2>Traits</h2>
		<section>
			<h3>構成</h3>
			<section>
				<h4>Julia</h4>
				<CodeBlock v-bind="codeBlockJuliaComposition"/>
			</section>
			<section>
				<h4>Rust</h4>
				<CodeBlock v-bind="codeBlockRustComposition"/>
			</section>
			<section>
				<h4>Scala</h4>
				<CodeBlock v-bind="codeBlockScalaComposition"/>
			</section>
		</section>
		<section>
			<h3>和</h3>
			<section>
				<h4>Julia</h4>
				<CodeBlock v-bind="codeBlockJuliaSum"/>
			</section>
			<section>
				<h4>Rust</h4>
				<CodeBlock v-bind="codeBlockRustSum"/>
			</section>
			<section>
				<h4>Scala</h4>
				<CodeBlock v-bind="codeBlockScalaSum"/>
			</section>
		</section>
		<section>
			<h3>Rust</h3>
			<section>
				<h4>和</h4>
				<CodeBlock v-bind="codeBlockRustSum"/>
			</section>
			<section>
				<h4>メソッド除去</h4>
			</section>
			<section>
				<h4>メソッドエイリアシング</h4>
				<CodeBlock v-bind="codeBlockRustAliasing"/>
			</section>
		</section>
	</section>
</template>

<style scoped>
</style>
