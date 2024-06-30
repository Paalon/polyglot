<script setup lang="ts">
import CodeBlock from "@/CodeBlock.vue";

import codeCppComposition from "@/traits/composition/main.cpp?raw";
import codeCppSum from "@/traits/sum/main.cpp?raw";

import codeJuliaComposition from "@/traits/composition/main.jl?raw";
import codeJuliaSum from "@/traits/sum/main.jl?raw";

import codeRustComposition from "@/traits/composition/main.rs?raw";
import codeRustSum from "@/traits/sum/main.rs?raw";
import codeRustAliasing from "@/traits/aliasing/main.rs?raw";

import codeScalaComposition from "@/traits/composition/main.scala?raw";
import codeScalaSum from "@/traits/sum/main.scala?raw";

const codeBlockCppComposition = {
	text: codeCppComposition,
	language: "cpp",
	title: "C++",
};
const codeBlockCppSum = {
	text: codeCppSum,
	language: "cpp",
	title: "C++",
};
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
		<table border="1">
			<thead>
				<tr>
					<th>言語</th>
					<th>クラス継承</th>
					<th>トレイトの構成</th>
					<th>トレイトの和</th>
					<th>トレイトのメソッド除去</th>
					<th>トレイトのメソッドエイリアシング</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>C++</td>
					<td>◯</td>
					<td>◯</td>
					<td>◯</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Go</td>
					<td>✗</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Haskell</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Java</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>JavaScript</td>
					<td>◯</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Julia</td>
					<td>✗</td>
					<td>◯</td>
					<td>◯</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Nim</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Python</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Rust</td>
					<td>✗</td>
					<td>◯</td>
					<td>◯</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Scala</td>
					<td></td>
					<td>◯</td>
					<td>◯</td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
		<section>
			<h3>構成</h3>
			<section>
				<h4>C++</h4>
				<CodeBlock v-bind="codeBlockCppComposition"/>
			</section>
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
				<h4>C++</h4>
				<CodeBlock v-bind="codeBlockCppSum"/>
			</section>
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
			<h3>メソッド除去</h3>
		</section>
		<section>
			<h3>メソッドエイリアシング</h3>
			<section>
				<h4>Julia</h4>
			</section>
			<section>
				<h4>Rust</h4>
				<CodeBlock v-bind="codeBlockRustAliasing"/>
			</section>
			<section>
				<h4>Scala</h4>
			</section>
		</section>
	</section>
</template>

<style scoped>
</style>
