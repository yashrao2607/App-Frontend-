# Project Blueprint

## Overview

This is a Flutter application that provides farmers with AI-powered tools to diagnose crop diseases and get recommendations for their farms.

## Style, Design, and Features

### Implemented Features:
*   **Splash Screen:** A simple splash screen that appears when the app starts.
*   **Home Screen:** A basic home screen.
*   **Dashboard Screen:** A dashboard providing an overview of the farm and market, with access to different features.
*   **AI Crop Doctor Screen:** A screen to diagnose crop diseases by uploading an image.
*   **AI Crop Recommender Screen:** A screen to get crop recommendations based on farm details.
*   **Market Analyst Screen:** A screen to get market price analysis.

### Current Task: Implement Govt Schemes Screen

#### Plan:
1.  **Create `lib/govt_schemes_screen.dart`:** This file will contain the UI for the "Scheme & Information Hub" screen.
2.  **Implement the UI:**
    *   Use a `Scaffold` with a dark theme.
    *   Create a custom `AppBar`.
    *   Add the "Scheme & Information Hub" title and subtitle.
    *   Include a "Back to Dashboard" button.
    *   Create the "Key Government Schemes" section with cards for each scheme.
    *   Create the "Latest News & Updates" section.
    *   Create the "Find a Specific Scheme" section.
    *   Include a floating action button.
3.  **Update Navigation:**
    *   In `lib/dashboard_screen.dart`, wrap the "Govt Schemes" card with a `GestureDetector` to navigate to the new screen on tap.
