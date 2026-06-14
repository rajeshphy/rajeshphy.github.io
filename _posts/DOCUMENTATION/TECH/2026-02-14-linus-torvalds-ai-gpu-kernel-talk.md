---
title: "Linus Torvalds on AI, GPUs, and Kernel Development"
summary: "A cleaned and structured transcript-style rewrite of the onstage conversation about AI-driven hardware, proprietary stacks, and whether AI can replace real maintainers."
date: 2026-02-14 10:00:00 +0530
categories:
  - doc-tech
tags:
  - linux-kernel
  - ai
  - gpu
  - open-source
  - maintainers
permalink: /linus-torvalds-ai-gpu-kernel-talk/
hidden: true
---
Let’s take a look at Linus Torvalds’ thoughts on the hardware industry shift from CPUs toward GPUs and AI-driven accelerators, what that means for kernel development, and whether AI tools might ever replace real maintainers.  

This comes from a recent on-stage conversation where Lena sits down with Durk, head of open-source efforts at Verizon, to discuss AI, hardware, and how Linux is evolving. [You can watch the full talk here.](https://www.youtube.com/watch?v=NjGHrDnPxwI)

<!-- Crux of the interview -->
> **Key takeaways:**
> Linux remains the foundation of modern computing even as attention shifts from CPUs to AI accelerators. Proprietary GPU stacks are not new in spirit—they are simply another layer running on top of the kernel.  
>  
> AI tools may help with patch flow, summaries, and onboarding newcomers, but they are still experimental and sometimes create noise through low-quality reports.  
>  
> Generating the first 90% of code is becoming easier; the final 10%—maintenance, integration, and long-term responsibility—still belongs to human developers.

**Interviewer:**  
If we look at the major changes in the industry, one of the biggest is clearly on the hardware side. For decades it was all about the CPU — who had the fastest one, the best architecture.  

In the last few years, companies like Nvidia, and to a lesser degree AMD, have taken the spotlight with accelerators, APUs, and AI processors. What’s interesting is that while all of this connects to Linux machines, it’s often not Linux running on those processors themselves.

How do you think about that evolution, where the center of attention has moved away from us?



**Linus Torvalds:**  
I don’t really see it that way. Partly because I still think the most interesting part remains the general-purpose CPU. It may not make headlines anymore because people take it for granted.  

Linux handles maintenance, bring-up, the UI layer, and everything you expect from a functioning system. The AI side is the new darling of the industry, and that’s fine. It’s not completely separate, but it’s a different environment that Linux helps foster. I don’t feel the kernel has to be the star of that show.



**Interviewer:**  
Linux is the launchpad, sure, but the software stack driving this hardware is again predominantly proprietary. The micro-kernels on GPUs, platforms like CUDA — those are closed.



**Linus Torvalds:**  
From a kernel perspective, that’s not new. People have always run commercial applications on top of Linux — databases, cloud systems, enterprise tools.  

The GPU is just another version of that model. You run your AI workload on top of the kernel. Yes, it has its own way of managing the hardware, but Linux still handles things like resource management and virtual memory, where we remain deeply involved.

One positive outcome of the AI boom is that vendors like Nvidia have become strong participants in kernel development. Twenty years ago that wasn’t true. Now Linux is so central to AI infrastructure that they care a lot, and we have maintainers coming from that ecosystem. I see that as very healthy.



**Interviewer:**  
Since we’ve now said “AI” many times, let’s talk about AI for development. Last year we discussed using generative AI for code review or explanation. Where do you think we are today?



**Linus Torvalds:**  
We’re not really there yet. People are experimenting, especially around helping maintainers manage patch flow or backport fixes.  

But from a practical standpoint, much of it is still experimental. Meanwhile AI has also been disruptive — crawlers hitting kernel infrastructure aggressively have been a real pain.

I’m looking forward to the day when AI becomes normal and boring instead of constant hype, but we’re not there.



**Interviewer:**  
Daniel Stenberg from cURL mentioned that AI-generated security reports can become almost a denial-of-service problem. Are you seeing that?



**Linus Torvalds:**  
We’ve seen some of it, yes, though not as severely. There are bug reports and notices clearly produced by people misusing AI, and they do consume maintainer time. Other projects have been hit harder than we have.



**Interviewer:**  
Another hot topic is AI for code generation. From strong autocomplete all the way to agentic systems where you ask for a feature and it builds it. Some people claim they can build products in a week.

Are you playing with this?



**Linus Torvalds:**  
I’m not. I’m sure others are, even for the kernel. But the kernel is insular and culturally different. I doubt many people are doing “vibe coding” there.

For personal projects, though, I see it as positive. When I grew up, people learned by typing programs from magazines. Today computers are vastly more complex, and expectations are higher, so getting started is harder.

If AI helps new people get excited and experiment, that’s wonderful.

Would I build a long-term product that way? Probably not. Real projects are about maintenance, and that’s where things get hard.



**Interviewer:**  
The tools can get you 90% of the way, amazingly fast. But the last 10%…



**Linus Torvalds:**  
…is the part that takes 34 years out of your 35-year project.



**Interviewer:**  
Exactly.



Thanks to the Linux Foundation for hosting the conference and the conversation. If you found this discussion around AI and the future of hardware interesting, check out the full talk.

What do you think? Has AI been a disruption to kernel development?
