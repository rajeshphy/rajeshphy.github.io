---
title: "Asymptote Diagram Prompts"
summary: "A reusable prompt page for generating mathematically correct, editable Asymptote physics diagrams with clean 3D perspective."
date: 2026-05-06 12:00:00 +0530
categories:
  - doc-tech
tags:
  - asymptote
  - diagrams
permalink: /asymptote-physics-diagram-prompts/
hidden: true
---
For Asymptote physics diagrams, the most reliable workflow is to use AI to generate **editable Asymptote code** that you can refine, reuse, and export as publication-quality vector graphics (PDF/SVG/PNG). Asymptote is especially valuable when diagrams require 3D geometry, controlled perspective, surfaces, coordinate systems, spatial trajectories, or technical linework beyond typical 2D textbook schematics.

<div style="border-left:5px solid #7c2d12; background:#fff7ed; padding:1rem 1.2rem; border-radius:14px; margin:1.2rem 0;">
<strong>Preferred Model</strong><br>
Use <strong>GPT-5.5 Thinking</strong> (or an equivalent model strong in LaTeX, Asymptote, 3D geometry, vector calculus, and code correction).<br>
Request <strong>editable Asymptote code</strong>, not an image.
</div>

## When to Prefer Asymptote Over TikZ

<div style="display:grid; grid-template-columns:repeat(auto-fit,minmax(240px,1fr)); gap:14px; margin:16px 0;">
  <div style="background:#f0f9ff; border:1px solid #bae6fd; border-radius:14px; padding:14px 14px;">
    <div style="font-weight:900; color:#0369a1; margin-bottom:6px;">Prefer Asymptote</div>
    <ul style="margin:0 0 0 18px; padding:0; line-height:1.65; color:#0f172a;">
      <li>3D</li>
      <li>perspective-based</li>
      <li>surface-based</li>
      <li>coordinate-system-heavy</li>
      <li>spatially geometric</li>
      <li>involving rotations</li>
      <li>involving trajectories in space</li>
      <li>requiring technical vector graphics</li>
    </ul>
  </div>
  <div style="background:#f5f3ff; border:1px solid #ddd6fe; border-radius:14px; padding:14px 14px;">
    <div style="font-weight:900; color:#4c1d95; margin-bottom:6px;">Prefer TikZ</div>
    <ul style="margin:0 0 0 18px; padding:0; line-height:1.65; color:#0f172a;">
      <li>mainly 2D</li>
      <li>force-based</li>
      <li>label-heavy</li>
      <li>simple textbook schematic</li>
      <li>ordinary free-body diagram</li>
    </ul>
  </div>
</div>

## Master Prompt Template

<div style="background:#0b1220; color:#e6edf3; padding:18px 18px; border-radius:16px; border:1px solid rgba(255,255,255,0.10); box-shadow:0 12px 28px rgba(0,0,0,0.22); margin:18px 0;">
  <div style="font-weight:900; margin-bottom:12px;">Copy-Paste Prompt</div>

  <p style="margin:0 0 10px 0;"><strong>Act as an expert physics illustrator and Asymptote technical diagram designer.</strong></p>
  <p style="margin:0 0 12px 0;">I am preparing a publication-quality applied physics textbook. Generate a clean, editable Asymptote diagram for the following physics problem.</p>

  <p style="margin:0 0 8px 0;"><strong>Problem:</strong><br>[Write the full physics problem here]</p>

  <p style="margin:0 0 8px 0;"><strong>Diagram requirements:</strong></p>
  <ol style="margin:0 0 12px 18px; padding:0; line-height:1.65;">
    <li>Use Asymptote only.</li>
    <li>Output complete compilable Asymptote code.</li>
    <li>Use a clean academic textbook style.</li>
    <li>Use mathematically correct geometry.</li>
    <li>Use proper 2D or 3D perspective according to the problem.</li>
    <li>Use clear LaTeX-style labels.</li>
    <li>Mark important vectors, axes, angles, radii, surfaces, trajectories, and reference lines.</li>
    <li>Use arrows where vectors or directions are required.</li>
    <li>Use dashed construction lines where useful.</li>
    <li>Avoid decorative or artistic elements.</li>
    <li>Keep labels readable and non-overlapping.</li>
    <li>Use simple black-and-white style unless color is necessary.</li>
    <li>Do not use external images.</li>
    <li>Make the code easy to edit.</li>
    <li>Output only the Asymptote code.</li>
  </ol>

  <p style="margin:0 0 6px 0;"><strong>Style preference:</strong></p>
  <ul style="margin:0 0 0 18px; padding:0; line-height:1.65;">
    <li>White background</li>
    <li>Clean technical drawing</li>
    <li>Thin but visible lines</li>
    <li>Large readable labels</li>
    <li>Minimal shading</li>
    <li>Publication-quality vector output</li>
  </ul>
</div>

## Worked Prompt Examples

<div style="background:#f8fafc; border:1px solid #e5e7eb; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(15,23,42,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#0f172a; margin-bottom:10px;">Example 1: Spherical Polar Coordinates</div>
  <div style="line-height:1.7; color:#0f172a;">
    Act as an expert physics illustrator and Asymptote technical diagram designer.<br>
    Generate a clean 3D Asymptote diagram for spherical polar coordinates.<br><br>

    <strong>Problem:</strong><br>
    A point P in space is represented by spherical polar coordinates r, theta, and phi. Draw the coordinate system and show the geometrical meaning of r, theta, and phi.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.65;">
      <li>Draw 3D x, y, and z axes.</li>
      <li>Place point P in the first octant.</li>
      <li>Draw position vector r from the origin O to P.</li>
      <li>Draw the projection of P on the xy-plane.</li>
      <li>Draw a dashed line from P to its projection on the xy-plane.</li>
      <li>Mark polar angle theta between the positive z-axis and r.</li>
      <li>Mark azimuthal angle phi in the xy-plane from the positive x-axis to the projection of r.</li>
      <li>Label O, P, r, theta, phi, x, y, and z.</li>
      <li>Use a clean academic textbook style.</li>
      <li>Use black-and-white or very minimal color.</li>
      <li>Output complete compilable Asymptote code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#fff7ed; border:1px solid #fed7aa; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(124,45,18,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#7c2d12; margin-bottom:10px;">Example 2: Rigid Body Rotation</div>
  <div style="line-height:1.7; color:#7c2d12;">
    Act as an expert physics illustrator and Asymptote technical diagram designer.<br>
    Generate a clean 3D Asymptote diagram for rigid body rotation.<br><br>

    <strong>Problem:</strong><br>
    A rigid body rotates about a fixed axis. Show the angular velocity vector omega, angular momentum vector L, and torque vector tau.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.65;">
      <li>Draw a simple 3D rigid body as an ellipsoid or irregular solid.</li>
      <li>Draw a fixed rotation axis passing through the body.</li>
      <li>Draw angular velocity vector omega along the rotation axis.</li>
      <li>Draw angular momentum vector L.</li>
      <li>Draw torque vector tau in a different direction.</li>
      <li>Label all vectors clearly.</li>
      <li>Show a curved arrow around the rotation axis to indicate rotation.</li>
      <li>Use clean perspective.</li>
      <li>Keep the diagram suitable for a classical mechanics textbook.</li>
      <li>Avoid unnecessary artistic detail.</li>
      <li>Output complete compilable Asymptote code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#eff6ff; border:1px solid #bfdbfe; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(30,58,138,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#1e3a8a; margin-bottom:10px;">Example 3: Rutherford Scattering Geometry</div>
  <div style="line-height:1.7; color:#1e3a8a;">
    Act as an expert physics illustrator and Asymptote technical diagram designer.<br>
    Generate a clean Asymptote diagram for Rutherford scattering.<br><br>

    <strong>Problem:</strong><br>
    An alpha particle approaches a heavy nucleus with impact parameter b and is scattered through an angle theta. Show the incoming trajectory, outgoing trajectory, impact parameter, and scattering angle.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.65;">
      <li>Place the heavy nucleus at the origin.</li>
      <li>Draw the incoming alpha particle trajectory from the left.</li>
      <li>Draw the outgoing scattered trajectory.</li>
      <li>Show the impact parameter b as the perpendicular distance from the initial straight-line path to the nucleus.</li>
      <li>Mark the scattering angle theta between the initial and final asymptotic directions.</li>
      <li>Label alpha particle, nucleus, b, and theta.</li>
      <li>Use arrowheads to show direction of motion.</li>
      <li>Use dashed construction lines for asymptotic directions.</li>
      <li>Use clean black-and-white textbook style.</li>
      <li>Output complete compilable Asymptote code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#fefce8; border:1px solid #fde68a; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(113,63,18,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#713f12; margin-bottom:10px;">Example 4: Magnetic Field Around a Circular Current Loop</div>
  <div style="line-height:1.7; color:#713f12;">
    Act as an expert physics illustrator and Asymptote technical diagram designer.<br>
    Generate a clean 3D Asymptote diagram for electromagnetism.<br><br>

    <strong>Problem:</strong><br>
    A circular current loop carries current I. Show the magnetic field geometry around the loop and the axis of symmetry.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.65;">
      <li>Draw a circular current loop in 3D perspective.</li>
      <li>Indicate current direction using small arrows on the loop.</li>
      <li>Draw the symmetry axis passing through the centre of the loop.</li>
      <li>Draw magnetic field lines passing through the loop and curving around it.</li>
      <li>Label current I and magnetic field B.</li>
      <li>Label the axis of the loop.</li>
      <li>Use clean linework and minimal shading.</li>
      <li>Keep the figure suitable for an electromagnetism textbook.</li>
      <li>Avoid excessive field lines.</li>
      <li>Output complete compilable Asymptote code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#ecfdf5; border:1px solid #bbf7d0; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(22,101,52,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#166534; margin-bottom:10px;">Example 5: Particle Collision (Nuclear / Particle Physics)</div>
  <div style="line-height:1.7; color:#166534;">
    Act as an expert physics illustrator and Asymptote technical diagram designer.<br>
    Generate a clean Asymptote diagram for a particle collision.<br><br>

    <strong>Problem:</strong><br>
    Two incoming particles collide at an interaction point and produce three outgoing particles. Show the incoming and outgoing trajectories with scattering angles.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.65;">
      <li>Draw two incoming particle tracks approaching an interaction point.</li>
      <li>Draw three outgoing particle tracks leaving the interaction point.</li>
      <li>Label the interaction point as O.</li>
      <li>Label incoming particles p_1 and p_2.</li>
      <li>Label outgoing particles q_1, q_2, and q_3.</li>
      <li>Mark at least one scattering angle theta.</li>
      <li>Use arrows to show direction of motion.</li>
      <li>Keep the figure clean and schematic.</li>
      <li>Use a black-and-white academic style.</li>
      <li>Make it suitable for a nuclear or particle physics textbook.</li>
      <li>Output complete compilable Asymptote code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#f5f3ff; border:1px solid #ddd6fe; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(76,29,149,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#4c1d95; margin-bottom:10px;">Example 6: Wavefront and Ray Geometry</div>
  <div style="line-height:1.7; color:#4c1d95;">
    Act as an expert physics illustrator and Asymptote technical diagram designer.<br>
    Generate a clean Asymptote diagram for wavefront and ray geometry.<br><br>

    <strong>Problem:</strong><br>
    A plane wavefront is incident on a boundary surface. Show the incident ray, reflected ray, refracted ray, normal, and angles of incidence, reflection, and refraction.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.65;">
      <li>Draw the boundary plane separating two media.</li>
      <li>Label medium 1 and medium 2.</li>
      <li>Draw the normal at the point of incidence.</li>
      <li>Draw incident ray, reflected ray, and refracted ray.</li>
      <li>Mark angle of incidence i, angle of reflection r, and angle of refraction t.</li>
      <li>Add a few parallel wavefront lines perpendicular to the incident ray.</li>
      <li>Use arrows to show ray directions.</li>
      <li>Keep labels readable.</li>
      <li>Use a clean academic textbook style.</li>
      <li>Output complete compilable Asymptote code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

<div style="background:#f8fafc; border:1px solid #e5e7eb; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(15,23,42,0.06); margin:16px 0;">
  <div style="font-weight:900; color:#0f172a; margin-bottom:10px;">Example 7: Potential Surface</div>
  <div style="line-height:1.7; color:#0f172a;">
    Act as an expert physics illustrator and Asymptote technical diagram designer.<br>
    Generate a clean 3D Asymptote diagram of a potential energy surface.<br><br>

    <strong>Problem:</strong><br>
    A particle moves on a two-dimensional potential surface V(x,y). Draw a simple potential well surface and show a possible trajectory of the particle.<br><br>

    <strong>Diagram requirements:</strong>
    <ol style="margin:8px 0 0 18px; padding:0; line-height:1.65;">
      <li>Draw 3D coordinate axes x, y, and V.</li>
      <li>Draw a smooth potential well surface.</li>
      <li>Show a particle trajectory curve on the surface.</li>
      <li>Label the surface as V(x,y).</li>
      <li>Label the coordinate axes.</li>
      <li>Use minimal shading only if necessary.</li>
      <li>Keep the diagram mathematically clean.</li>
      <li>Make it suitable for a theoretical mechanics or quantum mechanics textbook.</li>
      <li>Output complete compilable Asymptote code.</li>
      <li>Output only the code.</li>
    </ol>
  </div>
</div>

## Revision Prompts for Iterative Improvement

<div style="background:#0b1220; color:#e6edf3; padding:18px 18px; border-radius:16px; border:1px solid rgba(255,255,255,0.10); box-shadow:0 12px 28px rgba(0,0,0,0.22); margin:18px 0;">
  <div style="font-weight:900; margin-bottom:10px;">Correction Prompt After Asymptote Output</div>
  <div style="line-height:1.75;">
    Improve the previous Asymptote diagram.<br>
    <strong>Problems to fix:</strong><br>
    1. [Mention issue 1]<br>
    2. [Mention issue 2]<br>
    3. [Mention issue 3]<br><br>

    <strong>Correction requirements:</strong><br>
    1. Preserve the same physical meaning.<br>
    2. Keep the code fully compilable.<br>
    3. Improve perspective and spatial clarity.<br>
    4. Improve label placement.<br>
    5. Avoid overlapping labels.<br>
    6. Make vectors and arrows physically meaningful.<br>
    7. Simplify the drawing if it looks crowded.<br>
    8. Keep the academic textbook style.<br>
    9. Output the complete corrected Asymptote code.<br>
    10. Output only the code.
  </div>
</div>

<div style="background:#f0f9ff; border:1px solid #bae6fd; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(3,105,161,0.06); margin:18px 0;">
  <div style="font-weight:900; color:#0369a1; margin-bottom:10px;">Prompt for 3D Diagram Quality</div>
  <div style="line-height:1.75; color:#0f172a;">
    Act as an expert Asymptote 3D scientific illustrator.<br>
    Generate a high-quality 3D physics diagram with correct perspective and clean vector geometry.<br>
    <strong>Requirements:</strong><br>
    1. Choose a camera angle that clearly shows all important objects.<br>
    2. Use dashed lines for hidden or construction lines.<br>
    3. Use solid lines for physical objects.<br>
    4. Use arrows for vectors and directions.<br>
    5. Avoid excessive shading.<br>
    6. Keep labels readable from the chosen view.<br>
    7. Use simple geometry rather than artistic complexity.<br>
    8. Make the code modular and easy to edit.<br>
    9. Output complete compilable Asymptote code only.
  </div>
</div>

<div style="background:#f5f3ff; border:1px solid #ddd6fe; padding:16px 16px; border-radius:14px; box-shadow:0 6px 18px rgba(76,29,149,0.06); margin:18px 0;">
  <div style="font-weight:900; color:#4c1d95; margin-bottom:10px;">Prompt for Book-Wide Style Consistency</div>
  <div style="line-height:1.75; color:#0f172a;">
    Create a reusable Asymptote style system for a physics textbook.<br>
    <strong>Requirements:</strong><br>
    1. Define consistent styles for:<br>
    &nbsp;&nbsp;- coordinate axes<br>
    &nbsp;&nbsp;- vectors<br>
    &nbsp;&nbsp;- dashed construction lines<br>
    &nbsp;&nbsp;- trajectories<br>
    &nbsp;&nbsp;- angle arcs<br>
    &nbsp;&nbsp;- surfaces<br>
    &nbsp;&nbsp;- particles<br>
    &nbsp;&nbsp;- labels<br>
    2. Use a clean black-and-white academic style.<br>
    3. Make the style suitable for mechanics, electromagnetism, nuclear physics, and particle physics diagrams.<br>
    4. Include one example 3D diagram using the style system.<br>
    5. Keep the code easy to reuse in future diagrams.<br>
    6. Output complete compilable Asymptote code.<br>
    7. Output only the code.
  </div>
</div>