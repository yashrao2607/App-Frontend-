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

### Current Task: Implement Navigation Drawer

#### Plan:
1.  **Create `lib/widgets/app_drawer.dart`:** This file will define the navigation drawer widget.
2.  **Implement the UI of the drawer:**
    *   Add a header with the app name.
    *   Add `ListTile`s for each navigation item.
    *   Implement navigation to the respective screens.
3.  **Integrate the drawer into all existing screens:**
    *   Add the `drawer` property to the `Scaffold` of each screen.
    *   Update the menu icon's `onPressed` callback to open the drawer.
