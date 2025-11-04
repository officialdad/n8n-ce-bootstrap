---
transition: slide-left
layout: center
---

# Topic 2: Google Workspace Integration <mdi-google />

<div class="text-xl mt-8 opacity-80">
60 minutes • Connect Google • Work with Sheets • Real automation
</div>

---
transition: fade-out
---

# Why Google Workspace? <mdi-cloud />

<div v-click class="text-lg mt-8 mb-8 opacity-80">
Most schools already use Google - let's connect it to N8N!
</div>

<div class="grid grid-cols-3 gap-6">

<div v-click class="p-6 bg-green-500/20 rounded">
<div class="text-4xl mb-3"><mdi-file-table /></div>
<div class="font-bold">Google Sheets</div>
<div class="opacity-80 mt-2">Student data, attendance, schedules</div>
</div>

<div v-click class="p-6 bg-blue-500/20 rounded">
<div class="text-4xl mb-3"><mdi-email /></div>
<div class="font-bold">Gmail</div>
<div class="opacity-80 mt-2">Send automated emails</div>
</div>

<div v-click class="p-6 bg-red-500/20 rounded">
<div class="text-4xl mb-3"><mdi-google-drive /></div>
<div class="font-bold">Google Drive</div>
<div class="opacity-80 mt-2">Documents, forms, files</div>
</div>

</div>

<div v-click class="mt-8 p-4 bg-blue-500/20 rounded">
<mdi-lightbulb /> <strong>Goal:</strong> Make your existing Google tools work smarter, automatically
</div>

---
transition: slide-up
---

# Google API Integration <mdi-api />

<div v-click class="mt-8">

```mermaid {theme: 'dark', scale:0.85}
graph LR
    A[N8N Workflow] --> B[Google API]
    B --> C[Sheets]
    B --> D[Gmail]
    B --> E[Calendar]
    B --> F[Drive]

    style A fill:#1e3a5f,stroke:#60a5fa,stroke-width:2px,color:#fff
    style B fill:#065f46,stroke:#10b981,stroke-width:3px,color:#fff
    style C fill:#1e3a5f,stroke:#60a5fa,stroke-width:2px,color:#fff
    style D fill:#1e3a5f,stroke:#60a5fa,stroke-width:2px,color:#fff
    style E fill:#1e3a5f,stroke:#60a5fa,stroke-width:2px,color:#fff
    style F fill:#1e3a5f,stroke:#60a5fa,stroke-width:2px,color:#fff
```

</div>

<div v-click class="mt-8 p-4 bg-yellow-500/20 rounded">
<mdi-information /> <strong>One-time setup:</strong> Connect your Google account to N8N, then use it in all workflows
</div>

---
transition: fade-out
---

# Setting Up Google Credentials <mdi-key />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-numeric-1-circle class="text-3xl text-blue-500" />
<div>
<div class="font-bold">In N8N: Go to Credentials</div>
<div class="opacity-80">Settings → Credentials → Create New</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-numeric-2-circle class="text-3xl text-green-500" />
<div>
<div class="font-bold">Select "Google"</div>
<div class="opacity-80">Choose the Google service (Sheets, Gmail, etc.)</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-numeric-3-circle class="text-3xl text-purple-500" />
<div>
<div class="font-bold">Authenticate</div>
<div class="opacity-80">Login with your Google Workspace account</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-numeric-4-circle class="text-3xl text-orange-500" />
<div>
<div class="font-bold">Grant Permissions</div>
<div class="opacity-80">Allow N8N to access your Google data</div>
</div>
</div>

</div>

---
transition: slide-left
---

# Credentials Walkthrough <mdi-account-key />

<div class="mt-8 grid grid-cols-2 gap-8">

<div v-click class="p-6 border border-main rounded">
<div class="text-3xl mb-4"><mdi-shield-check /></div>
<div class="font-bold text-lg mb-3">Secure Connection</div>
<div class="opacity-80">OAuth 2.0 - Industry standard security</div>
</div>

<div v-click class="p-6 border border-main rounded">
<div class="text-3xl mb-4"><mdi-cached /></div>
<div class="font-bold text-lg mb-3">Reusable</div>
<div class="opacity-80">Set up once, use in all workflows</div>
</div>

<div v-click class="p-6 border border-main rounded">
<div class="text-3xl mb-4"><mdi-account-multiple /></div>
<div class="font-bold text-lg mb-3">Scoped Access</div>
<div class="opacity-80">Only access what you permit</div>
</div>

<div v-click class="p-6 border border-main rounded">
<div class="text-3xl mb-4"><mdi-cancel /></div>
<div class="font-bold text-lg mb-3">Revocable</div>
<div class="opacity-80">Remove access anytime in Google settings</div>
</div>

</div>

<div v-click class="mt-8 text-center text-xl">
<mdi-laptop /> <strong>Live Demo:</strong> Follow along as we connect Google
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

# <mdi-flask /> Hands-on Lab 2

<div class="text-2xl mt-6 mb-12">
Read & Write with Google Sheets
</div>

<div class="text-xl opacity-80">
25 minutes • Real school data • Automated monitoring
</div>

---
transition: fade-out
---

# Lab 2: Student Absence Monitoring <mdi-account-alert />

<div v-click class="text-lg mt-6 mb-8 opacity-80">
Check attendance sheet daily and flag students with 3+ consecutive absences
</div>

<div v-click>

```mermaid {theme: 'dark'}
graph LR
    A[Manual Trigger] --> B[Read Sheets<br/>Attendance Data]
    B --> C[IF Node<br/>Check Absences ≥ 3]
    C -->|Yes| D[Flag for<br/>Counselor]
    C -->|No| E[All Good]

    style A fill:#065f46,stroke:#10b981,stroke-width:2px,color:#fff
    style B fill:#1e3a5f,stroke:#60a5fa,stroke-width:2px,color:#fff
    style C fill:#92400e,stroke:#fbbf24,stroke-width:2px,color:#fff
    style D fill:#7f1d1d,stroke:#f87171,stroke-width:2px,color:#fff
    style E fill:#065f46,stroke:#10b981,stroke-width:2px,color:#fff
```

</div>

<div v-click class="mt-6 p-4 bg-green-500/20 rounded">
<mdi-lightbulb /> <strong>Real Impact:</strong> Early intervention for at-risk students, automated daily checks
</div>

---
transition: slide-left
---

# Prepare Google Sheet <mdi-file-table />

<div class="mt-6">

<div v-click class="mb-6 p-4 bg-blue-500/20 rounded">
<div class="font-bold mb-3">Sample Sheet Structure:</div>

| Student Name | Grade | Consecutive Absences | Last Absence Date |
|-------------|-------|---------------------|------------------|
| John Doe    | 9     | 4                   | 2024-11-03      |
| Jane Smith  | 10    | 1                   | 2024-11-02      |
| Bob Lee     | 9     | 5                   | 2024-11-03      |

</div>

<div v-click class="space-y-3">
<div class="flex items-start gap-3">
<mdi-link class="text-2xl text-green-500" />
<div class="opacity-80">Instructor will share a prepared Google Sheet</div>
</div>

<div class="flex items-start gap-3">
<mdi-content-copy class="text-2xl text-blue-500" />
<div class="opacity-80">Copy the Sheet ID from the URL</div>
</div>
</div>

</div>

---
transition: fade-out
---

# Step 1: Add Google Sheets Node <mdi-numeric-1-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-plus class="text-3xl text-green-500" />
<div>
<div class="font-bold">Add "Google Sheets" node</div>
<div class="opacity-80">After your Manual Trigger</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-cog class="text-3xl text-blue-500" />
<div>
<div class="font-bold">Configure Operation</div>
<div class="opacity-80">Select "Read" → "Get All Rows"</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-key class="text-3xl text-purple-500" />
<div>
<div class="font-bold">Select Credential</div>
<div class="opacity-80">Use the Google credential we just created</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-link class="text-3xl text-orange-500" />
<div>
<div class="font-bold">Paste Sheet ID</div>
<div class="opacity-80">From the shared Google Sheet URL</div>
</div>
</div>

</div>

---
transition: slide-up
---

# Step 2: Test the Connection <mdi-numeric-2-circle />

<div class="mt-8 space-y-6">

<div v-click class="flex items-start gap-4">
<mdi-play-circle class="text-4xl text-green-500" />
<div>
<div class="font-bold text-lg">Execute Node</div>
<div class="opacity-80">Click "Execute Node" to test</div>
</div>
</div>

<div v-click class="p-6 bg-gray-500/20 rounded">
<div class="font-bold mb-3">You should see:</div>
<div class="opacity-80">• All rows from your Google Sheet</div>
<div class="opacity-80">• Student names, grades, absence data</div>
<div class="opacity-80">• Data formatted as JSON</div>
</div>

<div v-click class="p-4 bg-green-500/20 rounded">
<mdi-check-circle /> <strong>Success!</strong> N8N can now read your Google Sheets
</div>

</div>

---
transition: fade-out
---

# Step 3: Add IF Node for Filtering <mdi-numeric-3-circle />

<div class="mt-6 space-y-4">

<div v-click class="flex items-start gap-4">
<mdi-call-split class="text-3xl text-orange-500" />
<div>
<div class="font-bold">Add "IF" node after Google Sheets</div>
<div class="opacity-80">Filter students based on absences</div>
</div>
</div>

<div v-click class="mt-6 p-6 bg-orange-500/20 rounded">
<div class="font-bold mb-4">Set Condition:</div>
<code class="block mb-2">Field: consecutiveAbsences</code>
<code class="block mb-2">Operation: Greater Than or Equal</code>
<code class="block">Value: 3</code>
</div>

<div v-click class="mt-6 grid grid-cols-2 gap-4">
<div class="p-4 bg-red-500/20 rounded">
<mdi-alert class="text-2xl" /> <strong>True Path:</strong> 3+ absences → Flag
</div>
<div class="p-4 bg-green-500/20 rounded">
<mdi-check class="text-2xl" /> <strong>False Path:</strong> Less than 3 → OK
</div>
</div>

</div>

---
transition: slide-left
---

# Step 4: View Filtered Results <mdi-numeric-4-circle />

<div class="mt-8 space-y-6">

<div v-click class="flex items-start gap-4">
<mdi-play-circle class="text-4xl text-green-500" />
<div>
<div class="font-bold text-lg">Execute Full Workflow</div>
<div class="opacity-80">Run from the start</div>
</div>
</div>

<div v-click class="flex items-start gap-4">
<mdi-eye class="text-4xl text-blue-500" />
<div>
<div class="font-bold text-lg">Check Both Paths</div>
<div class="opacity-80">See which students got flagged</div>
</div>
</div>

<div v-click class="p-6 bg-purple-500/20 rounded">
<div class="font-bold mb-3"><mdi-chart-bar /> Expected Results:</div>
<div class="opacity-80">• Students with ≥3 absences on True path</div>
<div class="opacity-80">• Others on False path</div>
<div class="opacity-80">• Count how many students need follow-up</div>
</div>

</div>

---
transition: fade-out
---

# What's Next? <mdi-arrow-right />

<div v-click class="mt-8 p-6 bg-blue-500/20 rounded">
<div class="text-lg font-bold mb-4"><mdi-lightbulb /> In a Real Workflow, You Could:</div>
<div class="space-y-3">
<div><mdi-email class="text-green-500" /> Send email to counselor with flagged students</div>
<div><mdi-file-document class="text-blue-500" /> Create a report in Google Docs</div>
<div><mdi-calendar class="text-purple-500" /> Schedule automatic daily checks</div>
<div><mdi-google-drive class="text-orange-500" /> Save results to another Sheet</div>
</div>
</div>

<div v-click class="mt-8 text-center text-xl opacity-80">
<mdi-rocket /> We'll build complete workflows in the next topics!
</div>

---
transition: slide-up
---

# Practice Challenge <mdi-trophy />

<div class="mt-8 p-6 bg-purple-500/20 rounded">

<div class="text-lg font-bold mb-4"><mdi-pencil /> Try This:</div>

<div class="space-y-3">
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> Change the threshold to 5 absences</div>
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> Add another condition: Grade = 9 only</div>
<div v-click><mdi-checkbox-marked-circle class="text-green-500" /> What if you want to check for "Last Absence Date" being recent?</div>
</div>

</div>

<div v-click class="mt-8 text-center text-xl opacity-80">
<mdi-timer-outline /> Time remaining: Check with instructor
</div>

---
transition: fade-out
layout: center
class: text-center
---

# Q&A <mdi-comment-question />

<div class="text-xl mt-8 opacity-80">
5 minutes • Questions about Google integration?
</div>

<div class="mt-12 grid grid-cols-3 gap-6 text-left">
<div v-click class="p-4 border border-main rounded">
<mdi-google class="text-3xl mb-2" />
<div class="text-sm opacity-80">Google setup issues?</div>
</div>

<div v-click class="p-4 border border-main rounded">
<mdi-file-table class="text-3xl mb-2" />
<div class="text-sm opacity-80">Sheets questions?</div>
</div>

<div v-click class="p-4 border border-main rounded">
<mdi-flask class="text-3xl mb-2" />
<div class="text-sm opacity-80">Lab challenges?</div>
</div>
</div>
