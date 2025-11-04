---
theme: seriph
background: https://images.unsplash.com/photo-1451187580459-43490279c0fa?q=80&w=2072
title: N8N Training Workshop
info: |
  ## N8N Training Workshop
  Learn workflow automation for schools.

  Complete training series covering automation basics to advanced workflows.
class: text-center
drawings:
  persist: false
transition: slide-left
mdc: true
duration: 60min
---

# N8N Training Workshop

<div class="text-3xl mt-8">
  <mdi-school-outline /> Workflow Automation for Schools
</div>

<div @click="$slidev.nav.next" class="mt-12 py-1 cursor-pointer" hover:bg="white op-10">
  Press Space to start <mdi-arrow-right />
</div>

<!--
Complete training workshop covering automation fundamentals to advanced workflows
-->

---
transition: fade-out
layout: center
class: text-center
---

# Training Overview <mdi-book-multiple />

<div class="grid grid-cols-2 gap-8 mt-12 text-left">

<div v-click class="p-6 border border-main rounded">
  <div class="text-4xl mb-3"><mdi-numeric-1-circle /></div>
  <div class="text-xl font-bold mb-2">Hour 1</div>
  <div class="opacity-80">Foundations & First Workflow</div>
</div>

<div v-click class="p-6 border border-main rounded opacity-50">
  <div class="text-4xl mb-3"><mdi-numeric-2-circle /></div>
  <div class="text-xl font-bold mb-2">Hour 2</div>
  <div class="opacity-80">Advanced Triggers</div>
</div>

<div v-click class="p-6 border border-main rounded opacity-50">
  <div class="text-4xl mb-3"><mdi-numeric-3-circle /></div>
  <div class="text-xl font-bold mb-2">Hour 3</div>
  <div class="opacity-80">API Integrations</div>
</div>

<div v-click class="p-6 border border-main rounded opacity-50">
  <div class="text-4xl mb-3"><mdi-numeric-4-circle /></div>
  <div class="text-xl font-bold mb-2">Hour 4</div>
  <div class="opacity-80">Real-World Workflows</div>
</div>

</div>

---
src: ./pages/hour1.md
---

---
src: ./pages/hour2.md
---
