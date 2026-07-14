---
layout: post
title: "Measurement of Optical-Fibre Patch-Cord Loss in dB"
date: 2026-06-13 21:00:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, electronics, optical-fibre, attenuation, patch-cord]
permalink: /practical/pg-iv/optical-fibre-patch-cord-loss/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To measure the insertion loss of an optical-fibre patch cord in decibels.

## Apparatus
LED or laser fibre source, optical power meter, reference patch cord, test patch cord, fibre connectors, and cleaning kit.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/fibre/fibre-arrangement.png' | relative_url }}" alt="Optical-fibre patch-cord loss measurement setup"><figcaption>The source is first connected to the power meter for reference power and then through the test patch cord for transmitted power.</figcaption></figure>

## Theory
Light power is reduced as it travels through a fibre because some energy is absorbed, scattered, radiated at bends, or lost at a connector. The power meter is first connected directly to the source to establish a reference, and the test patch cord is then inserted without changing the source setting. Optical attenuation is therefore defined by comparing the reference power with the transmitted power. If $P_{ref}$ is the reference power and $P_{out}$ is the power after inserting the patch cord,

$$L=10\log_{10}\left(\frac{P_{ref}}{P_{out}}\right)\,\text{dB}.$$

When both readings are displayed in dBm, the loss is simply $L=P_{ref}(\mathrm{dBm})-P_{out}(\mathrm{dBm})$. A clean connector and a gentle bend are essential because coupling and bend losses can be larger than the fibre attenuation itself.

## Observations

| Patch cord | Reference power (dBm) | Output power (dBm) | Loss (dB) |
|---|---:|---:|---:|
| 1 m multimode | -3.2 | -4.1 | 0.9 |
| 3 m multimode | -3.2 | -4.6 | 1.4 |
| 5 m multimode | -3.2 | -5.0 | 1.8 |

## Calculation

For the 1 m patch cord, the reference and output readings are $-3.2$ dBm and $-4.1$ dBm. Therefore,

$$L=P_{ref}-P_{out}=(-3.2)-(-4.1)=0.9\,\text{dB}.$$

For the 5 m cord,

$$L=(-3.2)-(-5.0)=1.8\,\text{dB}.$$

The loss therefore increases by $0.9$ dB between these two trial cords.

## Maxima Code

[Download the optical-fibre loss calculation]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).

## Result
The insertion loss increases with patch-cord length and connector number.

## Viva Questions
1. **Why is a reference reading taken?** To remove the source and meter baseline from the loss measurement.
2. **What is dBm?** Optical power expressed relative to 1 mW.
3. **Why should connectors be cleaned?** Dust produces additional coupling loss.
</div>
