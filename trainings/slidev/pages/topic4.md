---
transition: slide-left
layout: center
---

# Topic 4: Complete Workflow <mdi-rocket />

<div class="text-xl mt-8 opacity-80">
60 minutes • Putting it all together • Advanced AI workflow
</div>

---
transition: fade-out
layout: center
---

# <mdi-flask /> Hands-on Lab 5

<div class="text-2xl mt-6 mb-12">
Intelligent Parent-Teacher Conference Scheduler
</div>

<div class="text-xl opacity-80">
30 minutes • AI + Google + Gmail • Real-world complexity
</div>

---
transition: slide-up
---

# Lab 5 Overview <mdi-calendar-check />

<div v-click class="text-lg mt-6 mb-8 opacity-80">
Complete automation: Parent emails → AI extracts details → Books meeting → Sends confirmation
</div>

<div v-click>

```mermaid {theme: 'dark'}
graph TD
    A[Manual Trigger<br/>Parent Email] --> B[AI Agent 1<br/>Extract Details]
    B --> C[IF Node<br/>All Info Present?]
    C -->|Yes| D[Google Sheets<br/>Log Booking]
    C -->|No| E[AI Agent 2<br/>Request Missing Info]
    D --> F[AI Agent 3<br/>Draft Confirmation]
    F --> G[Gmail<br/>Send Email]
    E --> H[Gmail<br/>Send Request]

    style A fill:#065f46,stroke:#10b981,stroke-width:2px,color:#fff
    style B fill:#581c87,stroke:#a78bfa,stroke-width:2px,color:#fff
    style C fill:#92400e,stroke:#fbbf24,stroke-width:2px,color:#fff
    style D fill:#1e3a5f,stroke:#60a5fa,stroke-width:2px,color:#fff
    style E fill:#581c87,stroke:#a78bfa,stroke-width:2px,color:#fff
    style F fill:#581c87,stroke:#a78bfa,stroke-width:2px,color:#fff
    style G fill:#92400e,stroke:#fbbf24,stroke-width:2px,color:#fff
    style H fill:#92400e,stroke:#fbbf24,stroke-width:2px,color:#fff
```

</div>

---
transition: fade-out
---

# Sample Parent Emails <mdi-email />

<div class="mt-6 space-y-4">

<div v-click class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-2"><mdi-check-circle /> Complete Request</div>
<div class="text-sm italic">
"Hi! I'm John's mom, Sarah Martinez. He's in 9th grade. I'd like to meet with his teacher Ms. Johnson next Tuesday or Wednesday afternoon to discuss his math progress. Thanks!"
</div>
<div class="text-xs mt-2 opacity-70">Has: parent, student, grade, dates, reason</div>
</div>

<div v-click class="p-4 bg-orange-500/20 rounded">
<div class="font-bold mb-2"><mdi-alert /> Incomplete Request</div>
<div class="text-sm italic">
"Hello, I'd like to schedule a meeting about my daughter's behavior. Can we meet sometime next week?"
</div>
<div class="text-xs mt-2 opacity-70">Missing: parent name, student name, grade, specific dates</div>
</div>

</div>

---
transition: slide-left
---

# Step 1: Setup & First AI Agent <mdi-numeric-1-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-gesture-tap class="text-3xl text-green-500" />
<div>
<div class="font-bold">Manual Trigger + Set Node</div>
<div class="opacity-80">Paste the sample "complete request" email</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-brain class="text-3xl text-blue-500" />
<div>
<div class="font-bold">Add AI Agent Node</div>
<div class="opacity-80">Extract structured booking information</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-blue-500/20 rounded">
<div class="font-bold mb-4">AI Agent Prompt:</div>
<div class="text-sm font-mono p-3 bg-black/20 rounded">
"Extract from this email:<br/>
- Parent name<br/>
- Student name<br/>
- Grade<br/>
- Preferred dates/times<br/>
- Reason for meeting<br/>
<br/>
If any information is missing, list what's needed."
</div>
</div>

</div>

---
transition: fade-out
---

# Step 2: Decision Logic <mdi-numeric-2-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-call-split class="text-3xl text-orange-500" />
<div>
<div class="font-bold">Add IF Node</div>
<div class="opacity-80">Check if all required info is present</div>
</div>
</div>

<div v-click class="mt-6 grid grid-cols-2 gap-6">

<div class="p-6 bg-green-500/20 rounded">
<div class="text-3xl mb-3"><mdi-check-circle /></div>
<div class="font-bold mb-3">Path A: Complete Info</div>
<div class="text-sm space-y-2 opacity-80">
<div>→ Log to Google Sheets</div>
<div>→ Draft confirmation email</div>
<div>→ Send confirmation</div>
</div>
</div>

<div class="p-6 bg-orange-500/20 rounded">
<div class="text-3xl mb-3"><mdi-alert /></div>
<div class="font-bold mb-3">Path B: Missing Info</div>
<div class="text-sm space-y-2 opacity-80">
<div>→ AI drafts reply</div>
<div>→ Request missing details</div>
<div>→ Send request email</div>
</div>
</div>

</div>

<div v-click class="mt-6 p-4 bg-blue-500/20 rounded">
<mdi-lightbulb /> <strong>Smart routing:</strong> Workflow adapts based on input quality
</div>

</div>

---
transition: slide-up
---

# Step 3: Path A - Complete Info <mdi-numeric-3-circle />

<div class="mt-6 space-y-4">

<div v-click class="font-bold text-lg mb-4"><mdi-arrow-right /> When all info is present:</div>

<div v-click class="flex items-start gap-4">
<mdi-file-table class="text-3xl text-green-500" />
<div>
<div class="font-bold">Google Sheets Node: Log Booking</div>
<div class="opacity-80">Add row with: parent, student, grade, date, reason, status</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-brain class="text-3xl text-blue-500" />
<div>
<div class="font-bold">AI Agent Node: Draft Confirmation</div>
<div class="opacity-80">Generate professional confirmation email</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-blue-500/20 rounded">
<div class="font-bold mb-4">Confirmation Email Prompt:</div>
<div class="text-sm font-mono p-3 bg-black/20 rounded">
"Write a friendly confirmation email including:<br/>
- Confirmed date and time<br/>
- Teacher name: Ms. Johnson<br/>
- Location: Room 305<br/>
- What to bring: Student progress report<br/>
- Contact info if they need to reschedule"
</div>
</div>

</div>

---
transition: fade-out
---

# Step 4: Send Confirmation <mdi-numeric-4-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-email class="text-3xl text-orange-500" />
<div>
<div class="font-bold">Gmail Node: Send Confirmation</div>
<div class="opacity-80">Deliver the AI-generated email</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-gray-500/20 rounded">
<div class="font-bold mb-3">Email Configuration:</div>
<div class="space-y-2 text-sm">
<code class="block">To: [parent email]</code>
<code class="block">Subject: "Conference Confirmed - [student name]"</code>
<code class="block">Body: [AI-generated confirmation email]</code>
</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<mdi-check-circle /> <strong>Result:</strong> Parent receives professional confirmation automatically!
</div>

</div>

---
transition: slide-left
---

# Step 5: Path B - Missing Info <mdi-numeric-5-circle />

<div class="mt-6 space-y-4">

<div v-click class="font-bold text-lg mb-4"><mdi-arrow-right /> When info is incomplete:</div>

<div v-click class="flex items-start gap-4">
<mdi-brain class="text-3xl text-purple-500" />
<div>
<div class="font-bold">AI Agent Node: Request Details</div>
<div class="opacity-80">Generate friendly request for missing info</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-purple-500/20 rounded">
<div class="font-bold mb-4">Request Email Prompt:</div>
<div class="text-sm font-mono p-3 bg-black/20 rounded">
"Write a polite email requesting these missing details:<br/>
[List of missing info from AI Agent 1]<br/>
<br/>
Be friendly and helpful. Explain we need this to schedule the meeting."
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-email class="text-3xl text-orange-500" />
<div>
<div class="font-bold">Gmail Node: Send Request</div>
<div class="opacity-80">Ask parent for more details</div>
</div>
</div>

</div>

---
transition: fade-out
---

# Step 6: Test Both Scenarios <mdi-test-tube />

<div class="mt-6 space-y-4">

<div v-click class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-3"><mdi-numeric-1-circle /> Test 1: Complete Request</div>
<div class="text-sm opacity-90">Use the complete email → Should log to Sheets and send confirmation</div>
</div>

<div v-click class="p-4 bg-orange-500/20 rounded">
<div class="font-bold mb-3"><mdi-numeric-2-circle /> Test 2: Incomplete Request</div>
<div class="text-sm opacity-90">Use the incomplete email → Should request missing details</div>
</div>

<div v-click class="p-4 bg-purple-500/20 rounded">
<div class="font-bold mb-3"><mdi-numeric-3-circle /> Test 3: Your Own Email</div>
<div class="text-sm opacity-90">Write a casual meeting request → See how AI handles it</div>
</div>

</div>

<div v-click class="mt-6 text-center text-xl">
<mdi-sparkles /> Watch the workflow make intelligent decisions!
</div>

---
transition: slide-up
---

# What Makes This Powerful? <mdi-lightning-bolt />

<div class="mt-6 grid grid-cols-2 gap-6">

<div v-click class="p-6 bg-blue-500/20 rounded">
<div class="text-4xl mb-3"><mdi-brain /></div>
<div class="font-bold text-lg mb-3">AI Flexibility</div>
<div class="text-sm opacity-90 space-y-2">
<div>• Handles any email format</div>
<div>• Understands casual language</div>
<div>• Extracts structured data</div>
<div>• Generates professional responses</div>
</div>
</div>

<div v-click class="p-6 bg-green-500/20 rounded">
<div class="text-4xl mb-3"><mdi-account-check /></div>
<div class="font-bold text-lg mb-3">Smart Logic</div>
<div class="text-sm opacity-90 space-y-2">
<div>• Validates completeness</div>
<div>• Routes intelligently</div>
<div>• Handles errors gracefully</div>
<div>• Maintains context</div>
</div>
</div>

<div v-click class="p-6 bg-purple-500/20 rounded">
<div class="text-4xl mb-3"><mdi-google /></div>
<div class="font-bold text-lg mb-3">Integration Power</div>
<div class="text-sm opacity-90 space-y-2">
<div>• Logs to Google Sheets</div>
<div>• Sends via Gmail</div>
<div>• All automated</div>
<div>• No manual work</div>
</div>
</div>

<div v-click class="p-6 bg-orange-500/20 rounded">
<div class="text-4xl mb-3"><mdi-clock-fast /></div>
<div class="font-bold text-lg mb-3">Time Savings</div>
<div class="text-sm opacity-90 space-y-2">
<div>• Instant processing</div>
<div>• Consistent quality</div>
<div>• No missed details</div>
<div>• 24/7 availability</div>
</div>
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
transition: slide-left
---

# AI Agent Best Practices <mdi-star />

<div class="text-xl mt-8 mb-8">
Tips for writing effective AI prompts
</div>

---
transition: fade-out
---

# 1. Be Specific <mdi-bullseye />

<div class="mt-8 grid grid-cols-2 gap-6">

<div class="p-6 bg-red-500/20 rounded">
<div class="text-3xl mb-3"><mdi-close-circle class="text-red-500" /></div>
<div class="font-bold mb-3">❌ Vague</div>
<code class="text-sm">"Analyze this email"</code>
<div class="mt-3 text-sm opacity-80">Too open-ended, unpredictable results</div>
</div>

<div class="p-6 bg-green-500/20 rounded">
<div class="text-3xl mb-3"><mdi-check-circle class="text-green-500" /></div>
<div class="font-bold mb-3">✓ Specific</div>
<code class="text-sm">"Extract: name, date, reason"</code>
<div class="mt-3 text-sm opacity-80">Clear expectations, consistent output</div>
</div>

<div class="p-6 bg-red-500/20 rounded">
<div class="text-3xl mb-3"><mdi-close-circle class="text-red-500" /></div>
<div class="font-bold mb-3">❌ General</div>
<code class="text-sm">"Make it sound good"</code>
<div class="mt-3 text-sm opacity-80">Subjective, inconsistent</div>
</div>

<div class="p-6 bg-green-500/20 rounded">
<div class="text-3xl mb-3"><mdi-check-circle class="text-green-500" /></div>
<div class="font-bold mb-3">✓ Clear</div>
<code class="text-sm">"Write in friendly, professional tone"</code>
<div class="mt-3 text-sm opacity-80">Defined style, predictable</div>
</div>

</div>

---
transition: slide-up
---

# 2. Provide Format Examples <mdi-format-list-bulleted />

<div class="mt-6 space-y-4">

<div v-click class="p-6 bg-blue-500/20 rounded">
<div class="font-bold mb-3"><mdi-lightbulb /> Better Prompts Include Format:</div>
<div class="text-sm font-mono p-3 bg-black/20 rounded">
"Respond in this format:<br/>
- Summary: [2-3 sentences]<br/>
- Urgency: [low/medium/high]<br/>
- Department: [specific department name]"
</div>
</div>

<div v-click class="p-6 bg-green-500/20 rounded">
<div class="font-bold mb-3"><mdi-check-circle /> Why This Helps:</div>
<div class="space-y-2 text-sm opacity-90">
<div>• Easier to parse in next nodes</div>
<div>• Consistent structure every time</div>
<div>• Reduced errors in data extraction</div>
<div>• Predictable workflow behavior</div>
</div>
</div>

</div>

---
transition: fade-out
---

# 3. When to Use AI vs Traditional Nodes <mdi-scale-balance />

<div class="mt-6 grid grid-cols-2 gap-6">

<div class="space-y-4">
<div class="text-lg font-bold mb-4"><mdi-brain /> Use AI When:</div>

<div v-click class="p-4 bg-green-500/20 rounded text-sm">
<mdi-text /> <strong>Unstructured data</strong><br/>
<span class="opacity-80">Emails, documents, free text</span>
</div>

<div v-click class="p-4 bg-green-500/20 rounded text-sm">
<mdi-file-document-edit /> <strong>Content generation</strong><br/>
<span class="opacity-80">Writing emails, summaries</span>
</div>

<div v-click class="p-4 bg-green-500/20 rounded text-sm">
<mdi-message-text /> <strong>Context understanding</strong><br/>
<span class="opacity-80">Tone, intent, sentiment</span>
</div>

<div v-click class="p-4 bg-green-500/20 rounded text-sm">
<mdi-lightbulb-variant /> <strong>Classification</strong><br/>
<span class="opacity-80">Categorizing by meaning</span>
</div>

</div>

<div class="space-y-4">
<div class="text-lg font-bold mb-4"><mdi-cog /> Use Traditional Nodes When:</div>

<div v-click class="p-4 bg-blue-500/20 rounded text-sm">
<mdi-calculator /> <strong>Math operations</strong><br/>
<span class="opacity-80">Calculations, formulas</span>
</div>

<div v-click class="p-4 bg-blue-500/20 rounded text-sm">
<mdi-compare /> <strong>Exact matching</strong><br/>
<span class="opacity-80">Known strings, IDs</span>
</div>

<div v-click class="p-4 bg-blue-500/20 rounded text-sm">
<mdi-clock /> <strong>Date/time logic</strong><br/>
<span class="opacity-80">Scheduling, timestamps</span>
</div>

<div v-click class="p-4 bg-blue-500/20 rounded text-sm">
<mdi-database /> <strong>Data operations</strong><br/>
<span class="opacity-80">Filtering, sorting, lookups</span>
</div>

</div>

</div>

---
transition: slide-left
---

# 4. Cost Considerations <mdi-currency-usd />

<div class="mt-8 space-y-6">

<div v-click class="p-6 bg-yellow-500/20 rounded">
<div class="flex items-center gap-3 mb-3">
<mdi-alert class="text-3xl" />
<span class="font-bold text-lg">AI Calls Cost Money</span>
</div>
<div class="text-sm opacity-90">Each AI Agent node uses API tokens (usually cents per call)</div>
</div>

<div v-click class="grid grid-cols-2 gap-6">

<div class="p-4 bg-red-500/20 rounded">
<div class="font-bold mb-3"><mdi-close-circle /> Expensive Pattern</div>
<div class="text-sm">Using AI for every small task</div>
<div class="text-sm opacity-80 mt-2">Example: AI to check if number > 5</div>
</div>

<div class="p-4 bg-green-500/20 rounded">
<div class="font-bold mb-3"><mdi-check-circle /> Cost-Effective Pattern</div>
<div class="text-sm">AI for complex understanding only</div>
<div class="text-sm opacity-80 mt-2">Example: AI to understand email intent</div>
</div>

</div>

<div v-click class="p-4 bg-blue-500/20 rounded">
<mdi-lightbulb /> <strong>Tip:</strong> Use AI where it adds real value, use traditional nodes for simple logic
</div>

</div>

---
transition: fade-out
---

# 5. Testing & Iteration <mdi-sync />

<div class="mt-6 space-y-4">

<div v-click class="p-4 bg-purple-500/20 rounded">
<div class="flex items-center gap-3 mb-2">
<mdi-numeric-1-circle class="text-2xl" />
<span class="font-bold">Test with diverse inputs</span>
</div>
<div class="text-sm opacity-80">Different email styles, tones, completeness</div>
</div>

<div v-click class="p-4 bg-purple-500/20 rounded">
<div class="flex items-center gap-3 mb-2">
<mdi-numeric-2-circle class="text-2xl" />
<span class="font-bold">Check edge cases</span>
</div>
<div class="text-sm opacity-80">Missing data, unclear requests, multiple issues in one email</div>
</div>

<div v-click class="p-4 bg-purple-500/20 rounded">
<div class="flex items-center gap-3 mb-2">
<mdi-numeric-3-circle class="text-2xl" />
<span class="font-bold">Refine your prompts</span>
</div>
<div class="text-sm opacity-80">Add examples, clarify expectations based on results</div>
</div>

<div v-click class="p-4 bg-purple-500/20 rounded">
<div class="flex items-center gap-3 mb-2">
<mdi-numeric-4-circle class="text-2xl" />
<span class="font-bold">Monitor over time</span>
</div>
<div class="text-sm opacity-80">Review actual workflow results, adjust as needed</div>
</div>

</div>

---
transition: slide-up
---

# Real-World Tips <mdi-bookmark-check />

<div class="mt-6 space-y-4">

<div v-click class="p-4 bg-blue-500/20 rounded">
<mdi-human-greeting /> <strong>Always review AI output initially</strong>
<div class="text-sm opacity-80 mt-2">Don't go fully automated until you've tested thoroughly</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<mdi-content-save /> <strong>Save successful prompts</strong>
<div class="text-sm opacity-80 mt-2">Document what works for future workflows</div>
</div>

<div v-click class="p-4 bg-purple-500/20 rounded">
<mdi-account-multiple /> <strong>Get feedback from end users</strong>
<div class="text-sm opacity-80 mt-2">Are the emails professional? Is categorization accurate?</div>
</div>

<div v-click class="p-4 bg-orange-500/20 rounded">
<mdi-update /> <strong>Update prompts as needs change</strong>
<div class="text-sm opacity-80 mt-2">School processes evolve, so should your workflows</div>
</div>

</div>

---
transition: fade-out
---

# Practice Challenge <mdi-trophy />

<div class="mt-8 p-6 bg-purple-500/20 rounded">

<div class="text-lg font-bold mb-4"><mdi-pencil /> Advanced Challenge:</div>

<div class="space-y-3">
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> Add a third AI agent to detect if email is urgent (bypass normal booking)</div>
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> Modify to check teacher availability in a "Teachers Schedule" sheet</div>
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> Add calendar invite generation for confirmed bookings</div>
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

# Final Q&A <mdi-comment-question />

<div class="text-xl mt-8 opacity-80">
10 minutes • Any questions about the full session?
</div>

<div class="mt-12 grid grid-cols-4 gap-4 text-left">
<div v-click class="p-4 border border-main rounded">
<mdi-robot class="text-3xl mb-2" />
<div class="text-sm opacity-80">N8N basics?</div>
</div>

<div v-click class="p-4 border border-main rounded">
<mdi-google class="text-3xl mb-2" />
<div class="text-sm opacity-80">Google integration?</div>
</div>

<div v-click class="p-4 border border-main rounded">
<mdi-brain class="text-3xl mb-2" />
<div class="text-sm opacity-80">AI agents?</div>
</div>

<div v-click class="p-4 border border-main rounded">
<mdi-rocket class="text-3xl mb-2" />
<div class="text-sm opacity-80">Next steps?</div>
</div>
</div>

---
transition: fade-out
layout: center
---

# What You've Learned Today <mdi-school />

<div class="mt-8 grid grid-cols-2 gap-8">

<div v-click class="p-6 bg-green-500/20 rounded">
<div class="text-4xl mb-3"><mdi-puzzle /></div>
<div class="font-bold text-lg mb-2">N8N Fundamentals</div>
<div class="text-sm opacity-80">Workflows, nodes, triggers, testing</div>
</div>

<div v-click class="p-6 bg-blue-500/20 rounded">
<div class="text-4xl mb-3"><mdi-google /></div>
<div class="font-bold text-lg mb-2">Google Integration</div>
<div class="text-sm opacity-80">Sheets, Gmail, credentials, automation</div>
</div>

<div v-click class="p-6 bg-purple-500/20 rounded">
<div class="text-4xl mb-3"><mdi-brain /></div>
<div class="font-bold text-lg mb-2">AI Agents</div>
<div class="text-sm opacity-80">Smart understanding, prompts, content generation</div>
</div>

<div v-click class="p-6 bg-orange-500/20 rounded">
<div class="text-4xl mb-3"><mdi-rocket /></div>
<div class="font-bold text-lg mb-2">Complete Workflows</div>
<div class="text-sm opacity-80">Multi-step automation, intelligent routing</div>
</div>

</div>

---
transition: slide-up
layout: center
---

# Next Steps <mdi-map-marker-path />

<div class="mt-8 space-y-6">

<div v-click class="p-6 bg-blue-500/20 rounded">
<div class="flex items-center gap-4 mb-3">
<mdi-flask class="text-3xl" />
<span class="font-bold text-lg">Practice</span>
</div>
<div class="opacity-80">Build workflows for YOUR school's actual needs</div>
</div>

<div v-click class="p-6 bg-green-500/20 rounded">
<div class="flex items-center gap-4 mb-3">
<mdi-account-group class="text-3xl" />
<span class="font-bold text-lg">Share</span>
</div>
<div class="opacity-80">Show colleagues, gather more automation ideas</div>
</div>

<div v-click class="p-6 bg-purple-500/20 rounded">
<div class="flex items-center gap-4 mb-3">
<mdi-book-open class="text-3xl" />
<span class="font-bold text-lg">Explore</span>
</div>
<div class="opacity-80">N8N has 400+ integrations - what else can you connect?</div>
</div>

</div>

---
transition: fade-out
layout: center
class: text-center
---

# You're Now Automation Heroes! <mdi-trophy />

<div class="text-2xl mt-8 opacity-80">
Thank you for your attention and enthusiasm
</div>

<div class="mt-12 text-xl opacity-60">
Happy automating! 🚀
</div>
