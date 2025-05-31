+++
date = '2025-05-31T12:30:40+05:30'
draft = false
title = "When AI Aced India's Toughest Exam: LLMs Take JEE Advanced 2025"
+++


### *How Google's Gemini 2.5 Pro achieved 90.6% on an exam where 50% is considered exceptional*
---
##### Disclaimer: Parts of this blog article were written with the help of LLM. The author takes final responsibility for every word.
---

The Joint Entrance Examination (JEE) Advanced stands as one of the world's most intellectually demanding undergraduate entrance tests. Designed to identify India's brightest minds for admission to the prestigious Indian Institutes of Technology (IITs), this exam has humbled brilliant students for decades. **A score above 50% marks you as exceptionally gifted. Above 60%? You're in rare company.**

So when I decided to benchmark leading Large Language Models on the complete JEE Advanced 2025 exam—all 96 questions across mathematics, physics, and chemistry—I wasn't expecting how far AI capabilities have progressed.

## Results of the experiment

Lakhs of Indian students gave the exam on May 18th 2025. After the official key was released I wanted to see how well latest LLM's will perform. Link to the provisional [solution keys](https://jeeadv.ac.in/). Here's what happened when I gave the same exam to today's most capable AI systems:

| Model | Questions Correct | Accuracy | Total Marks |
|-------|------------------|----------|-------------|
| **Gemini 2.5 Pro** | **87/96** | **90.6%** | **319/360** |
| Gemini 2.5 Flash | 83/96 | 86.5% | 302/360 |
| OpenAI o4-mini | 81/96 | 84.4% | 300/360 |
| DeepSeek R1 0528 | 78/96 | 81.2% | 282/360 |
| Grok 3 Mini | 78/96 | 81.2% | 284/360 |
| Gemini 2.0 Flash | 70/96 | 72.9% | 238/360 |
| gpt-4o mini | 38/96 | 39.6% | 111/360 |

To put this in perspective: **Gemini 2.5 Pro performance puts it in AIR single digit rank territory**

## Perfect marks in mathematics

Perhaps the most striking discovery was the **perfect mathematical reasoning** displayed by multiple models. Gemini 2.5 Flash, Gemini 2.5 Pro, and now DeepSeek R1 have all achieved a flawless **32/32 (100%)** on mathematics questions.

### Subject-wise Performance Breakdown:

| Model | Mathematics | Physics | Chemistry |
|-------|-------------|---------|-----------|
| Gemini 2.5 Pro | **32/32 (100%)** | **29/32 (90.6%)** | 26/32 (81.2%) |
| Gemini 2.5 Flash | **32/32 (100%)** | 24/32 (75.0%) | **27/32 (84.4%)** |
| DeepSeek R1 | **32/32 (100%)** | 23/32 (71.9%) | 23/32 (71.9%) |
| OpenAI o4-mini | 30/32 (93.8%) | 24/32 (75.0%) | **27/32 (84.4%)** |
| Grok 3 Mini | 30/32 (93.8%) | 23/32 (71.9%) | 25/32 (78.1%) |
| Gemini 2.0 Flash | 26/32 (81.2%) | 23/32 (71.9%) | 21/32 (65.6%) |
| GPT-4o Mini | 13/32 (40.6%) | 14/32 (43.8%) | 11/32 (34.4%) |

This aligns perfectly with recent advances in post-training techniques like **Reinforcement Learning with Verifiable Rewards (RLVR)**, where mathematical and coding tasks serve as ideal training grounds for improving reasoning capabilities.

## Why This Experiment Matters

Unlike established benchmarks such as GPQA Diamond or MMLU Pro—whose questions might have inadvertently leaked into training datasets—JEE Advanced 2025 represents a true **zero-shot evaluation**. These questions were crafted just months ago, making this evaluation noteworthy


## The Acceleration That Should Concern Us All

The progression within just Google's model family tells a sobering story:

- **Gemini 2.0 Flash**: 72.9% accuracy
- **Gemini 2.5 Flash**: 86.5% accuracy
- **Gemini 2.5 Pro**: 90.6% accuracy

This represents a **17.7 percentage point improvement** in a single generation—equivalent to jumping from "very good student" to "Exam topper"

## The Education Conundrum

We've officially entered a world where **homework and traditional testing have become trivial exercises** for AI. The implications extend far beyond individual classrooms:

### The Uncomfortable Questions
- How do we assess learning when AI can solve all homework and tests?
- How do we maintain academic integrity in this new landscape?
- Should we keep following the same educational techniques?

## Beyond Pre-College: The Coming Wave

This isn't limited to high school mathematics. The reasoning capabilities demonstrated here suggest that **most undergraduate coursework—and significant portions of graduate-level material—will be solvable by AI within the next 12 months.**


## The Path Forward

Rather than pretending everything remains the same, we need fundamental reimagining:

**Education must shift from:**
- Teaching *what* to think → Teaching *how* to think with AI
- Memorizing information → Developing judgment and wisdom
- Individual problem-solving → Human-AI collaboration
- Testing recall → Evaluating creative synthesis


The transformation ahead isn't just technological—it's cultural. The educational institutions that adapt to this reality will thrive. Those clinging to obsolete assessment methods risk irrelevance.


**Parting Note**
The question is not whether AI will reshape education. It's whether we'll have the wisdom to guide that transformation thoughtfully.

---

**Technical Details**: All models evaluated using pass@1 methodology (single attempt per question) with structured prompting via DSPy framework. Complete dataset, benchmarking code, and detailed results available on [GitHub](https://github.com/naveenreddy61/jeeadv2025-benchmark).

**About JEE Advanced 2025**: Conducted by IIT Kanpur on May 18, 2025. Two papers, 96 total questions, 360 maximum marks. Covers Physics, Chemistry, and Mathematics with various question types including MCQs, Numerical Answer Type, and Match the Following.
