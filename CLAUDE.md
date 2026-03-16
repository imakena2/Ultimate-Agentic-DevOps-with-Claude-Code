# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Current Date
Today's date is 2026-03-16.

## Project Overview

This repository contains a static portfolio website created for the DevOps Micro Internship (DMI).  
The website is designed to showcase a student's professional portfolio including profile information, blog links, courses, and contact details.

The project is built using only HTML and CSS and does not use any JavaScript frameworks or backend technologies.  
It is intended to be deployed on an Ubuntu Virtual Machine using Nginx as the web server.

Key characteristics:
- Static HTML/CSS website
- No JavaScript frameworks
- Designed for DevOps internship learning
- Deployment on Ubuntu VM using Nginx
- Footer must include ownership proof for assignment submission

## Architecture & Structure
- **Static Site**: No build pipeline, server-side rendering, or frameworks
- **File Structure**:
  - `index.html` (main page with ownership proof requirement)
  - `style.css` (all styling)
  - `images/` (logo assets)
  - `privacy.html`, `terms.html` (legal pages)
- **Ownership Proof Location**: Footer section in `index.html`

## Development Commands
1. **Local Serving**:
   ```bash
   python3 -m http.server 8000 --directory .
   ```
2. **Ownership Proof Modification**:
   - Edit footer in `index.html` to include required details
3. **Validation**:
   - Check footer contains "Deployed by:" text
   - Verify date format matches `dd-mm-yyyy`
   - Confirm rendering in browser

## Critical Requirements
**Ownership Proof Must Include**:
- DMI Cohort reference (e.g., "DMI Cohort 2")
- Full name format: `First Last`
- Group identifier (`Group X`)
- Week specification (`Week Y`)
- Submission date (`dd-mm-yyyy`)

**Deployment Verification**:
- After modification, verify footer renders correctly in browser
- Screenshot submission must show visible ownership proof

## Notes for Future Claude Instances
1. **No Build Pipeline**: This is a pure static site - edit files directly
2. **Ownership Proof Process**:
   - Edit `index.html` footer section
   - No automated validation - manual browser verification required
   - DMI submission requires exact format matching
3. **Future Improvements**:
   - Add CI/CD pipeline documentation
   - Create deployment validation checklist
   - Add safety checks for footer format compliance

## Key File Paths
- `index.html` (footer section)
- `style.css` (responsive design)
- `images/` (asset paths)

## Conventions

The following development rules must be followed in this project:

1. **No JavaScript allowed**
   - This project must remain a pure HTML/CSS static website.
   - No JavaScript frameworks such as React, Angular, or Vue should be added.

2. **Mobile-first CSS approach**
   - The layout should be designed for mobile devices first, then enhanced for larger screens.

3. **Images directory**
   - All image assets must be stored inside the `images/` folder.
   - Image paths must reference this directory.

4. **Static site structure**
   - Only HTML and CSS files should be used.
   - No backend code or server-side scripting is allowed.

5. **Ownership proof requirement**
   - The footer in `index.html` must include the required ownership proof before deployment.
