---
title: "JupyterLab"
summary: "Comprehensive tutorial covering installation, configuration, kernels, workflows, extensions, debugging, exporting, and best practices for using JupyterLab professionally."
date: 2026-02-16 00:10:00 +0530
categories:
  - doc-code
tags:
  - jupyterlab
  - python
  - notebook
  - research
  - development
permalink: /jupyterlab-guide/
hidden: true
---
JupyterLab is a modern, web-based interactive development environment for Python and other languages. It combines notebooks, terminals, file management, and interactive tools into one unified workspace.

## Launch JupyterLab

```python
python -m jupyter lab
```

A browser window will open automatically.


## Interface Overview

JupyterLab consists of:

- File Browser (left panel)
- Notebook tabs (main area)
- Terminal
- Python console
- Output viewer

You can open:

- New Notebook
- New Terminal
- Text file
- Markdown file


**Notebook Basics**

Each notebook consists of **cells**.

>Cell Types
- Code Cell → Executes Python
- Markdown Cell → Documentation
- Raw Cell → Unprocessed text

**Run Cells**

- `Shift + Enter` → Run and move next
- `Ctrl + Enter` → Run and stay
- `Alt + Enter` → Run and insert new cell


## Confirm Python Kernel

Inside a cell:

```python
import sys
print(sys.executable)
```
Ensures correct Python environment.


**Managing Kernels**

Install kernel for your environment:
```bash
pip install ipykernel
python -m ipykernel install --user --name physics-env --display-name "Python (physics-env)"
```
Switch kernel from:

Kernel → Change Kernel

## Installing Packages Inside Notebook

Inside notebook cell:
```bash
!pip install sympy
```
Recommended (safer):
```python
import sys
!{sys.executable} -m pip install sympy
```

## Working with Files

List files:
```python
import os
os.listdir()
```
Change directory:
```python
os.chdir("folder_name")
```

## Plotting & Visualization

Install matplotlib:
```python
pip install matplotlib
```
Example:
```python
import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.plot(x, y)
plt.show()
```
Graphs appear inline automatically.



## Exporting Notebooks

Export to Python script:
```python
jupyter nbconvert --to script notebook.ipynb
```
Export to PDF:
```python
jupyter nbconvert --to pdf notebook.ipynb
```
Export to HTML:
```python
jupyter nbconvert --to html notebook.ipynb
```

## Using Terminal Inside JupyterLab

Open:

File → New → Terminal

You can run:
```python
git status
python script.py
pip install package
```

## Extensions (Optional)

Install extensions:
```python
pip install jupyterlab-git
```
Enable if required:
```python
jupyter labextension list
```

## Running as Background Server

Start without auto browser:
```python
jupyter lab --no-browser
```
Specify port:
```python
jupyter lab --port 8889
```

## Configuration File

Generate config:
```python
jupyter lab --generate-config
```
Config location:
`~/.jupyter/jupyter_lab_config.py`

## Security & Password Setup

Generate password:

```python
jupyter server password
```

