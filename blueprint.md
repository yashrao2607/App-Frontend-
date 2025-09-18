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

### Current Task: Implement Expense & Profit Tracker Screen

#### Plan:
1.  **Create `lib/tracker_screen.dart`:** This file will contain the UI for the "Expense & Profit Tracker" screen.
2.  **Implement the UI:**
    *   Use a `Scaffold` with a dark theme.
    *   Create a custom `AppBar`.
    *   Add the "Expense & Profit Tracker" title and subtitle.
    *   Include "Add Transaction" and "Back to Dashboard" buttons.
    *   Create cards for "Total Income," "Total Expense," and "Net Profit / Loss."
    *   Add a "Recent Transactions" section.
    *   Add an "Income vs. Expense" chart placeholder.
    *   Include a floating action button.
3.  **Update Navigation:**
    *   In `lib/dashboard_screen.dart`, wrap the "Tracker" card with a `GestureDetector` to navigate to the new screen on tap.
