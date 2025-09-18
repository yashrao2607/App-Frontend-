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
*   **Govt Schemes Screen:** A screen to find information about government schemes.
*   **Expense & Profit Tracker Screen:** A screen to track farm expenses and profits.

### Current Task: Implement E-Learning Hub Screen

#### Plan:
1.  **Create `lib/e_learning_screen.dart`:** This file will contain the UI for the "E-Learning Hub" screen.
2.  **Implement the UI:**
    *   Use a `Scaffold` with a dark theme.
    *   Create a custom `AppBar`.
    *   Add the "E-Learning Hub" title and subtitle.
    *   Include a "Back to Dashboard" button.
    *   Add a search bar and tabs.
    *   Create a list of articles.
    *   Include a floating action button.
3.  **Update Navigation:**
    *   In `lib/dashboard_screen.dart`, wrap the "E-Learning" card with a `GestureDetector` to navigate to the new screen on tap.
