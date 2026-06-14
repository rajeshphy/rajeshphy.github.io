---
title: "TikZ Diagram Prompts"
summary: "A reusable prompt page for generating mathematically correct, editable TikZ/PGF physics diagrams with consistent textbook styling."
date: 2026-05-06 12:00:00 +0530
categories:
  - doc-tech
tags:
  - tikz
  - pgf
permalink: /tikz-physics-diagram-prompts/
hidden: true
---
For TikZ/PGF physics diagrams, the most reliable workflow is to use AI to generate **editable TikZ code** rather than a final image. This preserves mathematical correctness, enables systematic refinement, and supports consistent styling across an entire textbook with export-ready output (PDF/SVG/PNG).

<div style="border-left:5px solid #0f766e; background:#f0fdfa; padding:1rem 1.2rem; border-radius:14px; margin:1.2rem 0;">
<strong>Preferred Model</strong><br>
Use <strong>GPT-5.5 Thinking</strong> (or an equivalent model strong in LaTeX, TikZ/PGF, geometry, and physics reasoning).<br>
Request <strong>compilable TikZ code</strong>, not “an image.”
</div>

## Master Prompt Template

<div style="background:#0b1220; color:#e6edf3; padding:18px 18px; border-radius:16px; border:1px solid rgba(255,255,255,0.10); box-shadow:0 12px 28px rgba(0,0,0,0.22); margin:18px 0;">
  <div style="font-weight:900; margin-bottom:12px;">Copy-Paste Prompt</div>

  <p style="margin:0 0 10px 0;"><strong>Act as an expert physics illustrator and LaTeX TikZ/PGF diagram designer.</strong></p>
  <p style="margin:0 0 12px 0;">I am preparing a publication-quality applied physics textbook. Generate a clean, editable, black-and-white academic TikZ diagram for the following physics problem.</p>

  <p style="margin:0 0 8px 0;"><strong>Problem:</strong><br>[Write the full physics problem here]</p>

  <p style="margin:0 0 8px 0;"><strong>Diagram requirements:</strong></p>
  <ol style="margin:0 0 12px 18px; padding:0; line-height:1.6;">
    <li>Use TikZ/PGF only.</li>
    <li>Output complete compilable LaTeX code.</li>
    <li>Use the standalone document class.</li>
    <li>Keep the diagram clean, minimal, and suitable for a printed physics textbook.</li>
    <li>Use mathematically correct geometry.</li>
    <li>Use clear labels with LaTeX notation.</li>
    <li>Use arrows for vectors and forces.</li>
    <li>Use dashed construction lines where needed.</li>
    <li>Mark important angles, radii, axes, and reference directions.</li>
    <li>Avoid decorative or artistic elements.</li>
    <li>Use consistent line thickness.</li>
    <li>Keep labels well separated and readable.</li>
    <li>Do not use external images.</li>
    <li>Do not use unnecessary colors unless asked.</li>
    <li>Output only the LaTeX code.</li>
  </ol>

  <p style="margin:0 0 6px 0;"><strong>Style preference:</strong></p>
  <ul style="margin:0 0 0 18px; padding:0; line-height:1.6;">
    <li>White background</li>
    <li>Black lines</li>
    <li>Textbook-style force diagram</li>
    <li>Large readable labels</li>
    <li>Minimal but conceptually complete</li>
    <li>Suitable for export as PDF/SVG</li>
  </ul>
</div>

<div style="background:linear-gradient(135deg,#f8fafc,#eef2ff); border:1px solid #cbd5e1; padding:1.1rem 1.2rem; border-radius:16px; margin:1.2rem 0;">
  <strong>Best Prompt Formula</strong><br><br>
  Physics situation<br>
  + exact objects to draw<br>
  + physical labels<br>
  + required forces/vectors<br>
  + construction lines<br>
  + angle/radius markings<br>
  + visual style<br>
  + output format
</div>

## Worked Prompt Examples

<div style="background:#f8fafc; border:1px solid #e5e7eb; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(15,23,42,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#0f172a; margin-bottom:10px;">Example 1: Ball Sliding on a Fixed Sphere</div>
  <div style="line-height:1.65; color:#0f172a;">
    Act as an expert physics illustrator and LaTeX TikZ/PGF diagram designer.<br>
    Generate a clean, editable, black-and-white TikZ diagram for a classical mechanics problem.<br><br>

    <strong>Problem:</strong><br>
    A small ball slides without friction on the outside surface of a large fixed sphere of radius R. The ball starts near the top and loses contact with the sphere at an angle theta measured from the vertical through the centre of the sphere.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Draw a large fixed sphere as a circle of radius R.</li>
      <li>Mark its centre as O.</li>
      <li>Place a small ball on the upper-right surface of the sphere.</li>
      <li>Draw the vertical radius from O to the top of the sphere as a dashed reference line.</li>
      <li>Draw the radius from O to the small ball.</li>
      <li>Mark the angle theta between the vertical radius and the radius to the ball.</li>
      <li>Draw the weight mg vertically downward from the small ball.</li>
      <li>Draw the normal reaction N radially outward from the sphere.</li>
      <li>Draw the velocity v tangentially downward along the surface.</li>
      <li>Label the radius R.</li>
      <li>Keep all labels readable and non-overlapping.</li>
      <li>Use black lines only.</li>
      <li>Use arrows with proper arrowheads.</li>
      <li>Use a clean academic textbook style.</li>
      <li>Output complete compilable LaTeX code using standalone class.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#fff7ed; border:1px solid #fed7aa; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(124,45,18,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#7c2d12; margin-bottom:10px;">Example 2: Block on an Inclined Plane</div>
  <div style="line-height:1.65; color:#7c2d12;">
    Act as an expert physics illustrator and LaTeX TikZ/PGF diagram designer.<br>
    Generate a clean TikZ force diagram for the following mechanics problem.<br><br>

    <strong>Problem:</strong><br>
    A block of mass m is placed on a rough inclined plane making an angle theta with the horizontal. The coefficient of friction is mu. Draw the free-body diagram and show all relevant force components.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Draw an inclined plane at angle theta.</li>
      <li>Place a rectangular block on the plane.</li>
      <li>Draw weight mg vertically downward from the block.</li>
      <li>Draw normal reaction N perpendicular to the plane.</li>
      <li>Draw friction f along the plane opposite possible motion.</li>
      <li>Resolve weight into mg sin theta along the plane and mg cos theta perpendicular to the plane.</li>
      <li>Mark angle theta at the base of the inclined plane.</li>
      <li>Use dashed lines for component construction.</li>
      <li>Use clear LaTeX labels.</li>
      <li>Keep the figure uncluttered.</li>
      <li>Use black-and-white textbook style.</li>
      <li>Output complete compilable LaTeX code using standalone class.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#eff6ff; border:1px solid #bfdbfe; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(30,58,138,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#1e3a8a; margin-bottom:10px;">Example 3: Simple Pendulum</div>
  <div style="line-height:1.65; color:#1e3a8a;">
    Act as an expert physics illustrator and LaTeX TikZ/PGF diagram designer.<br>
    Generate a clean academic TikZ diagram for a simple pendulum problem.<br><br>

    <strong>Problem:</strong><br>
    A simple pendulum of length l is displaced by an angle theta from the vertical. The bob has mass m. Show the forces acting on the bob and the angular displacement.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Draw a fixed pivot point.</li>
      <li>Draw a dashed vertical reference line from the pivot.</li>
      <li>Draw the string of length l making angle theta with the vertical.</li>
      <li>Draw the bob at the end of the string.</li>
      <li>Draw tension T along the string toward the pivot.</li>
      <li>Draw weight mg vertically downward.</li>
      <li>Show the tangential component mg sin theta.</li>
      <li>Show the radial component mg cos theta if space permits.</li>
      <li>Mark angle theta clearly near the pivot.</li>
      <li>Label the length l.</li>
      <li>Use clean black lines.</li>
      <li>Avoid unnecessary decoration.</li>
      <li>Output complete standalone LaTeX TikZ code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#f5f3ff; border:1px solid #ddd6fe; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(76,29,149,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#4c1d95; margin-bottom:10px;">Example 4: Convex Lens Ray Diagram</div>
  <div style="line-height:1.65; color:#4c1d95;">
    Act as an expert physics illustrator and LaTeX TikZ/PGF diagram designer.<br>
    Generate a clean TikZ ray diagram for geometrical optics.<br><br>

    <strong>Problem:</strong><br>
    An object is placed beyond twice the focal length of a convex lens. Show image formation using principal rays.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Draw the principal axis.</li>
      <li>Draw a convex lens at the centre.</li>
      <li>Mark optical centre O.</li>
      <li>Mark focal points F and 2F on both sides.</li>
      <li>Draw an upright object on the left side beyond 2F.</li>
      <li>Draw the real inverted image between F and 2F on the right side.</li>
      <li>Draw one ray parallel to the principal axis refracting through the focus.</li>
      <li>Draw one ray through the optical centre undeviated.</li>
      <li>Use arrowheads on rays.</li>
      <li>Label object, image, F, 2F, and O.</li>
      <li>Keep the diagram clean and textbook-like.</li>
      <li>Use black-and-white style.</li>
      <li>Output complete compilable standalone LaTeX code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#fefce8; border:1px solid #fde68a; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(113,63,18,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#713f12; margin-bottom:10px;">Example 5: Charged Particle in Magnetic Field</div>
  <div style="line-height:1.65; color:#713f12;">
    Act as an expert physics illustrator and LaTeX TikZ/PGF diagram designer.<br>
    Generate a clean TikZ diagram for an electromagnetism problem.<br><br>

    <strong>Problem:</strong><br>
    A positive charged particle enters a uniform magnetic field directed into the plane of the page with velocity v. Show the magnetic force and resulting circular motion.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Draw a rectangular region containing crosses to represent magnetic field into the page.</li>
      <li>Label the region as B into the page.</li>
      <li>Draw a positive charged particle entering from the left.</li>
      <li>Draw its initial velocity v to the right.</li>
      <li>Draw magnetic force F = qvB upward or downward according to the right-hand rule.</li>
      <li>Draw a circular arc showing the beginning of circular motion.</li>
      <li>Mark the radius r of the circular path if space permits.</li>
      <li>Use clean arrowheads.</li>
      <li>Use black-and-white academic style.</li>
      <li>Output complete standalone LaTeX TikZ code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#ecfdf5; border:1px solid #bbf7d0; padding:18px; border-radius:14px; box-shadow:0 6px 18px rgba(22,101,52,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#166534; margin-bottom:10px;">
    Example 6: Rutherford Scattering Geometry
  </div>

  <div style="line-height:1.65; color:#166534;">
    <strong>Role:</strong><br>
    Act as an expert nuclear physics illustrator and LaTeX TikZ/PGF diagram designer. Generate a clean, publication-quality black-and-white TikZ diagram for Rutherford scattering.<br><br>

    <strong>Problem:</strong><br>
    An alpha particle approaches a heavy nucleus with impact parameter <em>b</em> and is scattered through an angle <em>theta</em>. Show the incoming asymptotic direction, smooth Coulomb-deflected trajectory, impact parameter <em>b</em>, forward reference direction, scattering angle <em>theta</em>, and outgoing scattered direction clearly.<br><br>

    <strong>Image assets:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Use nucleus.png for the heavy nucleus.</li>
      <li>Use alpha.png for the alpha particle.</li>
      <li>Assume both image files are placed in the same folder as the .tex file.</li>
      <li>Include \usepackage{graphicx}.</li>
    </ol><br>

    <strong>Main correction required:</strong><br>
    The trajectory must look like a natural repulsive Coulomb-scattering orbit. It must not look like a wave, an S-shaped bend, or a straight line suddenly joined to a curve. The alpha particle should be smoothly repelled by the nucleus, not drawn as if it first dips toward the nucleus and then turns away.<br><br>

    <strong>Strict trajectory rules:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Draw the complete alpha-particle path as one single smooth continuous Bézier curve.</li>
      <li>The incoming branch should approach horizontally from the far left at height <em>b</em>.</li>
      <li>The bending should begin gradually before the closest-approach region.</li>
      <li>The particle must bend away from the nucleus due to repulsive Coulomb interaction.</li>
      <li>The curve should pass above or beside the nucleus without crossing the nucleus icon.</li>
      <li>The closest-approach region should be smooth, convex, and free from kinks.</li>
      <li>The outgoing branch should smoothly approach an upward-right asymptotic direction.</li>
      <li>The outgoing arrowhead must be tangent to the final curved segment.</li>
      <li>Do not add a separate straight outgoing arrow unless it is exactly tangent and visually seamless.</li>
      <li>Do not allow any sharp corner, cusp, visible join, or unnatural downward dip near the nucleus.</li>
    </ol><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Use the standalone document class.</li>
      <li>Place the heavy nucleus at the origin using \includegraphics{nucleus.png}.</li>
      <li>Label the nucleus as <strong>heavy nucleus</strong> below the icon with enough spacing.</li>
      <li>Place an alpha.png icon near the incoming branch and label it as <em>alpha particle</em>.</li>
      <li>Place a rotated alpha.png icon along the outgoing branch.</li>
      <li>Label the outgoing direction as <strong>scattered path</strong> near the final arrowhead.</li>
      <li>Show the impact parameter <em>b</em> as a vertical double-arrow from the nucleus level to the incoming asymptote.</li>
      <li>Place the label <em>b</em> beside the double-arrow, away from the nucleus label.</li>
      <li>Draw a dashed horizontal forward reference line on the right side only.</li>
      <li>The forward reference line must start from a point on the outgoing asymptotic region, not from the nucleus.</li>
      <li>Mark <em>theta</em> between the forward reference line and the outgoing tangent direction.</li>
      <li>Place the angle arc on the right side, away from the nucleus and away from the closest-approach region.</li>
      <li>Use clean black lines, proper Stealth arrowheads, and minimal dashed construction lines.</li>
      <li>Use a spacious academic textbook style.</li>
    </ol><br>

    <strong>Suggested Bézier construction:</strong>
    <pre style="background:#f0fdf4; border:1px solid #bbf7d0; padding:10px; border-radius:10px; overflow:auto; color:#166534; line-height:1.45; margin-top:8px;">\draw[curvepath]
(-5.5,1.4)
.. controls (-4.0,1.4) and (-2.5,1.42) .. (-1.45,1.35)
.. controls (-0.65,1.25) and (-0.15,1.05) .. (0.25,1.12)
.. controls (1.25,1.32) and (2.8,2.25) .. (4.8,3.25);</pre>

    <strong>Preferred visual layout:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Nucleus at <em>(0,0)</em>.</li>
      <li>Incoming asymptote at height <em>b</em> above the nucleus.</li>
      <li>Incoming branch approaches horizontally from the far left.</li>
      <li>Deflection begins gradually before the closest-approach region.</li>
      <li>The curve passes above or beside the nucleus without touching it.</li>
      <li>The outgoing direction goes upward to the right as the natural tangent of the same curve.</li>
      <li>The scattering angle is drawn clearly on the right side between the forward reference line and the outgoing tangent direction.</li>
    </ol><br>

    <strong>Label-placement rules:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Do not place labels inside the nucleus.</li>
      <li>Do not place labels on top of the trajectory, alpha icons, construction lines, or angle arc.</li>
      <li>Do not place <em>theta</em> too close to the nucleus.</li>
      <li>Use white-filled label backgrounds through a labelstyle.</li>
    </ol><br>

    <strong>Technical requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.6;">
      <li>Use \documentclass[tikz,border=6pt]{standalone}.</li>
      <li>Use \usetikzlibrary{arrows.meta, angles, quotes, calc}.</li>
      <li>Define styles for trajectory, reference, measure, curvepath, and labelstyle.</li>
      <li>Do not use below=0.48cm of O unless the positioning library is loaded.</li>
      <li>Prefer coordinate-based placement, such as \node[labelstyle] at ($(O)+(0,-0.75)$) {heavy nucleus};.</li>
    </ol><br>

    <strong>Output:</strong><br>
    Output complete compilable standalone LaTeX TikZ code only. Do not explain the code.
  </div>
</div>

## Revision Prompts for Iterative Improvement

<div style="background:#0b1220; color:#e6edf3; padding:18px 18px; border-radius:16px; border:1px solid rgba(255,255,255,0.10); box-shadow:0 12px 28px rgba(0,0,0,0.22); margin:18px 0;">
  <div style="font-weight:900; margin-bottom:10px;">Correction Prompt After TikZ Output</div>
  <div style="line-height:1.75;">
    Improve the previous TikZ diagram.<br>
    <strong>Problems to fix:</strong><br>
    1. [Mention issue 1]<br>
    2. [Mention issue 2]<br>
    3. [Mention issue 3]<br><br>

    <strong>Correction requirements:</strong><br>
    1. Keep the same physical meaning.<br>
    2. Keep the code compilable.<br>
    3. Improve spacing and label readability.<br>
    4. Avoid overlapping labels.<br>
    5. Make arrows more physically accurate.<br>
    6. Keep black-and-white textbook style.<br>
    7. Output the complete corrected LaTeX code.<br>
    8. Output only the code.
  </div>
</div>

<div style="background:#f8fafc; border:1px solid #e5e7eb; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(15,23,42,0.06); margin:18px 0;">
  <div style="font-weight:900; color:#0f172a; margin-bottom:10px;">Prompt for Book-Wide Style Consistency</div>
  <div style="line-height:1.75; color:#0f172a;">
    Create a reusable TikZ style system for a physics textbook.<br>
    <strong>Requirements:</strong><br>
    1. Define consistent styles for:<br>
    &nbsp;&nbsp;- force arrows<br>
    &nbsp;&nbsp;- velocity arrows<br>
    &nbsp;&nbsp;- acceleration arrows<br>
    &nbsp;&nbsp;- dashed construction lines<br>
    &nbsp;&nbsp;- angle arcs<br>
    &nbsp;&nbsp;- bodies<br>
    &nbsp;&nbsp;- labels<br>
    &nbsp;&nbsp;- coordinate axes<br>
    2. Use black-and-white academic style.<br>
    3. Make the styles suitable for mechanics, electromagnetism, optics, and nuclear physics diagrams.<br>
    4. Keep the style minimal and publication-ready.<br>
    5. Provide one example diagram using the styles.<br>
    6. Output complete compilable standalone LaTeX code.<br>
    7. Output only the code.
  </div>
</div>