---
transition: slide-left
layout: center
---

# Topic 3: AI Agent Integration <mdi-brain />

<div class="text-xl mt-8 opacity-80">
60 minutes • Smart automation • AI-powered workflows • Real magic
</div>

---
transition: fade-out
---

# What Are AI Agents? <mdi-robot-happy />

<div v-click class="text-xl mt-8 mb-8">
Think of them as smart assistants inside your workflows
</div>

<div class="grid grid-cols-2 gap-8">

<div v-click class="p-6 bg-blue-500/20 rounded">
<div class="text-4xl mb-4"><mdi-message-text /></div>
<div class="font-bold text-lg mb-3">Understand Context</div>
<div class="opacity-80">Read emails, documents, data</div>
<div class="opacity-80">Extract meaning, not just keywords</div>
</div>

<div v-click class="p-6 bg-green-500/20 rounded">
<div class="text-4xl mb-4"><mdi-pencil /></div>
<div class="font-bold text-lg mb-3">Generate Content</div>
<div class="opacity-80">Write emails, summaries, reports</div>
<div class="opacity-80">Professional and contextual</div>
</div>

<div v-click class="p-6 bg-purple-500/20 rounded">
<div class="text-4xl mb-4"><mdi-lightbulb-on /></div>
<div class="font-bold text-lg mb-3">Make Decisions</div>
<div class="opacity-80">Classify, categorize, prioritize</div>
<div class="opacity-80">Understand nuance and tone</div>
</div>

<div v-click class="p-6 bg-orange-500/20 rounded">
<div class="text-4xl mb-4"><mdi-code-braces-box /></div>
<div class="font-bold text-lg mb-3">No Coding!</div>
<div class="opacity-80">Just write instructions in plain language</div>
<div class="opacity-80">Like talking to a smart colleague</div>
</div>

</div>

---
transition: slide-up
---

# Traditional vs AI <mdi-compare />

<div class="grid grid-cols-2 gap-8 mt-8">

<div>
<div class="text-xl font-bold mb-6 text-center"><mdi-cog /> Traditional IF Node</div>

<div class="space-y-4">
<div v-click class="p-4 bg-gray-500/20 rounded">
<div class="font-bold mb-2">Exact Matching</div>
<code class="text-sm">subject contains "urgent"</code>
<div class="opacity-70 text-sm mt-2">Misses: "ASAP", "emergency", "critical"</div>
</div>

<div v-click class="p-4 bg-gray-500/20 rounded">
<div class="font-bold mb-2">Multiple Rules</div>
<div class="opacity-80 text-sm">Need to think of ALL variations</div>
</div>

<div v-click class="p-4 bg-gray-500/20 rounded">
<div class="font-bold mb-2">Rigid</div>
<div class="opacity-80 text-sm">Can't handle unexpected formats</div>
</div>
</div>

</div>

<div>
<div class="text-xl font-bold mb-6 text-center"><mdi-brain /> AI Agent</div>

<div class="space-y-4">
<div v-click class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-2">Understands Context</div>
<code class="text-sm">"Is this urgent?"</code>
<div class="opacity-70 text-sm mt-2">Catches all urgency signals</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-2">One Simple Prompt</div>
<div class="opacity-80 text-sm">"Classify email urgency level"</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-2">Flexible</div>
<div class="opacity-80 text-sm">Handles variations automatically</div>
</div>
</div>

</div>

</div>

---
transition: fade-out
---

# When to Use AI Agents <mdi-thought-bubble />

<div class="grid grid-cols-2 gap-6 mt-8">

<div class="p-6 bg-green-500/20 rounded">
<div class="text-3xl mb-3"><mdi-check-circle class="text-green-500" /></div>
<div class="font-bold text-lg mb-3">✓ Great For:</div>
<div class="space-y-2 opacity-80 text-sm">
<div><mdi-email /> Summarizing emails or documents</div>
<div><mdi-tag /> Categorizing unstructured content</div>
<div><mdi-pencil /> Drafting responses or reports</div>
<div><mdi-brain /> Extracting information from text</div>
<div><mdi-translate /> Translating or rewording</div>
<div><mdi-clipboard-check /> Analyzing sentiment/tone</div>
</div>
</div>

<div class="p-6 bg-red-500/20 rounded">
<div class="text-3xl mb-3"><mdi-close-circle class="text-red-500" /></div>
<div class="font-bold text-lg mb-3">✗ Not For:</div>
<div class="space-y-2 opacity-80 text-sm">
<div><mdi-calculator /> Simple math calculations</div>
<div><mdi-compare /> Exact string matching</div>
<div><mdi-database /> Database lookups</div>
<div><mdi-clock /> Time/date operations</div>
<div><mdi-format-list-numbered /> Counting items</div>
<div><mdi-currency-usd /> Financial calculations</div>
</div>
</div>

</div>

<div v-click class="mt-6 p-4 bg-blue-500/20 rounded">
<mdi-lightbulb /> <strong>Rule of thumb:</strong> If it requires understanding context or generating human-like text → Use AI. If it's precise logic → Use traditional nodes.
</div>

---
transition: slide-left
---

# School Examples for AI <mdi-school />

<div class="mt-6 space-y-4">

<div v-click class="p-4 bg-purple-500/20 rounded">
<div class="flex items-center gap-3 mb-2">
<mdi-email-fast class="text-2xl" />
<span class="font-bold">Auto-Summarize Parent Emails</span>
</div>
<div class="opacity-80 text-sm">Long email → 3 bullet points: concern, urgency, department</div>
</div>

<div v-click class="p-4 bg-blue-500/20 rounded">
<div class="flex items-center gap-3 mb-2">
<mdi-file-document-edit class="text-2xl" />
<span class="font-bold">Draft Responses</span>
</div>
<div class="opacity-80 text-sm">Parent question → Professional reply template, ready to review</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<div class="flex items-center gap-3 mb-2">
<mdi-tag-multiple class="text-2xl" />
<span class="font-bold">Categorize Feedback</span>
</div>
<div class="opacity-80 text-sm">Survey responses → Group by themes (teaching, facilities, communication)</div>
</div>

<div v-click class="p-4 bg-orange-500/20 rounded">
<div class="flex items-center gap-3 mb-2">
<mdi-clipboard-text class="text-2xl" />
<span class="font-bold">Extract Information</span>
</div>
<div class="opacity-80 text-sm">Casual meeting request → Structured data (date, time, attendees)</div>
</div>

</div>

---
transition: fade-out
layout: center
class: text-center
---

<div class="text-6xl mb-8"><mdi-coffee /></div>

# Break Time

<div class="text-2xl opacity-80">5 minutes</div>

---
transition: slide-up
layout: center
---

# <mdi-flask /> Hands-on Lab 4

<div class="text-2xl mt-6 mb-12">
Your First AI Agent Workflow
</div>

<div class="text-xl opacity-80">
30 minutes • Smart Email Responder • Real AI power
</div>

---
transition: fade-out
---

# Lab 4: Smart Email Responder <mdi-email-fast />

<div v-click class="text-lg mt-6 mb-8 opacity-80">
AI reads parent email, summarizes it, identifies urgency & department
</div>

<div v-click>

```mermaid
graph LR
    A[<mdi-gesture-tap /> Manual Trigger<br/>Paste Email] --> B[<mdi-brain /> AI Agent<br/>Analyze Email]
    B --> C[<mdi-database /> Set Node<br/>Structure Data]
    C --> D[<mdi-email /> Gmail<br/>Send Summary]

    style A fill:#E8F5E9
    style B fill:#E1F5FE
    style D fill:#FFF3E0
```

</div>

<div v-click class="mt-6 p-4 bg-blue-500/20 rounded">
<mdi-sparkles /> <strong>Why This is Powerful:</strong> AI reads the context and meaning, not just keywords. Handles any writing style!
</div>

---
transition: slide-left
---

# Step 1: Setup Manual Trigger <mdi-numeric-1-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-plus class="text-3xl text-green-500" />
<div>
<div class="font-bold">Add "Manual Trigger" node</div>
<div class="opacity-80">Start of our workflow</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-cog class="text-3xl text-blue-500" />
<div>
<div class="font-bold">Add a "Set" node</div>
<div class="opacity-80">To input sample email text</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-gray-500/20 rounded">
<div class="font-bold mb-3">Sample Email to Test:</div>
<div class="text-sm opacity-90 italic">
"Hi, this is Sarah's mom. I'm really worried because she came home crying today. Some kids in her class have been excluding her from games during recess for the past week. Can we schedule a meeting to discuss this? I'm free Tuesday or Thursday afternoon. This is quite urgent as it's affecting her emotionally."
</div>
</div>

</div>

---
transition: fade-out
---

# Step 2: Add AI Agent Node <mdi-numeric-2-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-brain class="text-3xl text-blue-500" />
<div>
<div class="font-bold">Add "AI Agent" node</div>
<div class="opacity-80">This is where the magic happens!</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-key class="text-3xl text-purple-500" />
<div>
<div class="font-bold">Select AI Credential</div>
<div class="opacity-80">OpenAI, Claude, or other AI provider</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-blue-500/20 rounded">
<div class="font-bold mb-4">Write Your Prompt:</div>
<div class="text-sm font-mono p-3 bg-black/20 rounded">
"Summarize this parent email in 2-3 bullet points. Identify:<br/>
1. Main concern<br/>
2. Urgency level (low/medium/high)<br/>
3. Suggested department to handle (Principal/Teacher/Counselor/Admin)"
</div>
</div>

</div>

---
transition: slide-up
---

# Understanding Prompts <mdi-message-text />

<div class="mt-6 grid grid-cols-2 gap-6">

<div v-click class="p-4 bg-red-500/20 rounded">
<div class="font-bold mb-3"><mdi-close-circle /> Vague Prompt</div>
<code class="text-xs">"Analyze this email"</code>
<div class="opacity-80 text-sm mt-2">Too general, unpredictable results</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-3"><mdi-check-circle /> Clear Prompt</div>
<code class="text-xs">"Identify: concern, urgency, department"</code>
<div class="opacity-80 text-sm mt-2">Specific, structured output</div>
</div>

<div v-click class="p-4 bg-red-500/20 rounded">
<div class="font-bold mb-3"><mdi-close-circle /> No Format</div>
<code class="text-xs">"What's this about?"</code>
<div class="opacity-80 text-sm mt-2">Free-form response, hard to process</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-3"><mdi-check-circle /> Structured Format</div>
<code class="text-xs">"Provide as bullet points"</code>
<div class="opacity-80 text-sm mt-2">Easy to parse and use</div>
</div>

</div>

<div v-click class="mt-6 p-4 bg-blue-500/20 rounded">
<mdi-lightbulb /> <strong>Tip:</strong> Be specific about WHAT you want and HOW you want it formatted
</div>

---
transition: fade-out
---

# Step 3: Structure the Output <mdi-numeric-3-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-database class="text-3xl text-green-500" />
<div>
<div class="font-bold">Add "Set" node after AI</div>
<div class="opacity-80">Extract AI's response into structured fields</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-purple-500/20 rounded">
<div class="font-bold mb-3">Create Fields:</div>
<div class="space-y-2 text-sm">
<code class="block">summary: [AI response]</code>
<code class="block">urgency: [Extract urgency level]</code>
<code class="block">department: [Extract department]</code>
<code class="block">originalEmail: [Input email]</code>
</div>
</div>

<div v-click class="p-4 bg-blue-500/20 rounded">
<mdi-information /> <strong>Why?</strong> Structured data is easier to use in next steps (email, sheets, etc.)
</div>

</div>

---
transition: slide-left
---

# Step 4: Send Summary via Gmail <mdi-numeric-4-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-email class="text-3xl text-orange-500" />
<div>
<div class="font-bold">Add "Gmail" node</div>
<div class="opacity-80">Send the AI summary to staff</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-cog class="text-3xl text-blue-500" />
<div>
<div class="font-bold">Configure Email</div>
<div class="opacity-80">To: counselor@school.com</div>
<div class="opacity-80">Subject: "Parent Email - [urgency] priority"</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-gray-500/20 rounded">
<div class="font-bold mb-3">Email Body Template:</div>
<div class="text-sm">
<code>AI Summary: [summary]</code><br/>
<code>Urgency: [urgency]</code><br/>
<code>Recommended: [department]</code><br/>
<code>--- Original Email ---</code><br/>
<code>[originalEmail]</code>
</div>
</div>

</div>

---
transition: fade-out
---

# Step 5: Test with Different Emails <mdi-numeric-5-circle />

<div class="mt-6 space-y-4">

<div v-click class="p-4 bg-blue-500/20 rounded">
<div class="font-bold mb-2"><mdi-email /> Test Email 1: Urgent Issue</div>
<div class="text-sm italic opacity-90">"My child reported bullying today..."</div>
<div class="text-xs mt-2 opacity-70">Expected: High urgency, Counselor</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-2"><mdi-email /> Test Email 2: Academic</div>
<div class="text-sm italic opacity-90">"Can you explain the homework policy?"</div>
<div class="text-xs mt-2 opacity-70">Expected: Low urgency, Teacher</div>
</div>

<div v-click class="p-4 bg-purple-500/20 rounded">
<div class="font-bold mb-2"><mdi-email /> Test Email 3: Meeting Request</div>
<div class="text-sm italic opacity-90">"Would like to discuss my child's progress..."</div>
<div class="text-xs mt-2 opacity-70">Expected: Medium urgency, Teacher</div>
</div>

</div>

<div v-click class="mt-6 text-center text-lg">
<mdi-magic-staff /> Watch how AI understands different tones and contexts!
</div>

---
transition: slide-up
---

# What Just Happened? <mdi-thought-bubble />

<div class="mt-8 grid grid-cols-2 gap-6">

<div v-click class="p-6 bg-gradient-to-br from-blue-500/20 to-purple-500/20 rounded">
<div class="text-4xl mb-4"><mdi-brain /></div>
<div class="font-bold text-lg mb-3">AI Understood Context</div>
<div class="opacity-90 text-sm space-y-2">
<div>• Recognized "crying" = emotional issue</div>
<div>• "Excluding her" = social/bullying</div>
<div>• "Quite urgent" = high priority</div>
<div>• Meeting request = counselor appropriate</div>
</div>
</div>

<div v-click class="p-6 bg-gradient-to-br from-green-500/20 to-yellow-500/20 rounded">
<div class="text-4xl mb-4"><mdi-robot /></div>
<div class="font-bold text-lg mb-3">No Complex Rules Needed!</div>
<div class="opacity-90 text-sm space-y-2">
<div>• No keyword lists</div>
<div>• No multiple IF conditions</div>
<div>• Just one clear prompt</div>
<div>• Adapts to any writing style</div>
</div>
</div>

</div>

<div v-click class="mt-8 p-4 bg-blue-500/20 rounded text-center">
<mdi-sparkles class="text-2xl" /> <strong>This is the power of AI in workflows!</strong>
</div>

---
transition: fade-out
---

# Practice Challenge <mdi-trophy />

<div class="mt-8 p-6 bg-purple-500/20 rounded">

<div class="text-lg font-bold mb-4"><mdi-pencil /> Try This:</div>

<div class="space-y-3">
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> Modify prompt to also extract "parent contact preference" (email/phone/meeting)</div>
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> Add suggested response time (within 24hrs, 3 days, 1 week)</div>
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> Test with emails in different tones (angry, polite, confused)</div>
</div>

</div>

<div v-click class="mt-8 text-center text-xl opacity-80">
<mdi-timer-outline /> Time remaining: Check with instructor
</div>

---
transition: slide-left
layout: center
class: text-center
---

# Q&A <mdi-comment-question />

<div class="text-xl mt-8 opacity-80">
10 minutes • Questions about AI agents?
</div>

<div class="mt-12 grid grid-cols-3 gap-6 text-left">
<div v-click class="p-4 border border-main rounded">
<mdi-brain class="text-3xl mb-2" />
<div class="text-sm opacity-80">How AI agents work?</div>
</div>

<div v-click class="p-4 border border-main rounded">
<mdi-message-text class="text-3xl mb-2" />
<div class="text-sm opacity-80">Writing better prompts?</div>
</div>

<div v-click class="p-4 border border-main rounded">
<mdi-flask class="text-3xl mb-2" />
<div class="text-sm opacity-80">Lab questions?</div>
</div>
</div>
