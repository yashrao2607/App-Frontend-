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
*   **E-Learning Hub Screen:** A screen for browsing farming guides and tutorials.
*   **Navigation Drawer:** A side navigation drawer for easy access to all screens.
*   **Live Weather Forecast Screen:** A screen to get live weather updates.
*   **Community Forum Screen:** A screen for farmers to connect and chat.
*   **Krishi Store Screen:** A screen for purchasing farming supplies.

### Current Task: Implement Application Settings Screen

#### Plan:
1.  **Create `lib/settings_screen.dart`:** This file will contain the UI for the "Application Settings" screen.
2.  **Implement the UI:**
    *   Use a `Scaffold` with a dark theme.
    *   Create a custom `AppBar`.
    *   Add the "Application Settings" title and subtitle.
    *   Include a "Back to Dashboard" button.
    *   Create sections for "About," "App Version," "Theme," etc.
    *   Include a floating action button.
3.  **Update Navigation:**
    *   In `lib/widgets/app_drawer.dart`, add a `ListTile` for "Settings" and navigate to the new screen on tap.
