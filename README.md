# SUNote – CS310 Mobile Application Development Project

## Project Overview

SUNote is a mobile academic note-sharing platform developed as part of the **CS310 – Mobile Application Development** course at **Sabancı University**. The application is built using **Flutter** and **Firebase** and is designed exclusively for Sabancı University students.

The platform enables students to **upload, browse, purchase, download, rate, and comment on lecture notes** in a structured and secure environment. By centralizing course materials and introducing feedback mechanisms, SUNote transforms informal note sharing into a reliable, student-driven academic ecosystem.

---

## Motivation

University students frequently rely on peer-generated notes to supplement lectures; however, these materials are often scattered across messaging apps and cloud folders, making them difficult to organize, evaluate, and reuse. SUNote addresses this issue by providing a **centralized, verified, and structured platform** where students can access high-quality notes and contributors can receive recognition (and optional monetary compensation) for their work.

The project aims to demonstrate:
- Practical mobile application development with Flutter  
- Integration of Firebase services (Authentication, Firestore, Storage)  
- Effective state management using Provider  
- Secure data handling and user-based authorization  
- Team-based software development and documentation  

---

## Main Features

- **Sabancı Email Authentication**  
  User authentication is handled via Firebase Authentication, restricting access to verified Sabancı University students only.

- **Structured Note Browsing**  
  Notes are organized by **Course → Term → Week**, enabling fast and intuitive navigation.

- **Upload & Sell Notes**  
  Users can upload lecture notes (PDF/JPG), assign metadata, set a price, and make their notes available to others.

- **Purchase & Download System**  
  Users can purchase notes and re-download previously purchased materials without repetition.

- **Rating & Comment System**  
  Purchased notes can be rated and commented on, allowing quality evaluation and transparency.

- **User & TA Profiles**  
  Each user has a profile page displaying uploaded notes, total downloads, ratings, and a customizable “About” section.

- **Light / Dark Theme Support**  
  Theme preferences are saved locally and persist across app restarts.

---

## Technology Stack

- **Frontend:** Flutter  
- **Backend:** Firebase  
  - Firebase Authentication  
  - Cloud Firestore  
  - Firebase Storage  
- **State Management:** Provider  
- **Testing:** Flutter widget and unit tests  

---

## Firebase Usage Summary

- **Authentication:**  
  Firebase Authentication manages user login and session handling using email/password.

- **Cloud Firestore:**  
  Used to store structured data including:
  - Users (profiles, about section)
  - Notes (metadata, pricing, download counts)
  - Comments and ratings
  - Purchase records

- **Firebase Storage:**  
  Handles storage of uploaded note files (PDF/JPG).

- **Security Rules:**  
  Firestore rules ensure that:
  - Only authenticated users can read/write data  
  - Users can only modify their own content  
  - Commenting and rating are restricted to valid users  

---

## State Management Approach

SUNote uses the **Provider** package to manage application state. Separate providers handle:
- Authentication state  
- Notes data and Firestore streams  
- Theme preferences  

This structure ensures consistent state across screens, minimizes redundant data fetching, and enables real-time UI updates using Firestore streams.

---

## Setup & Run Instructions

### Prerequisites
- **Flutter SDK:** 3.x or newer  
- **Dart:** Compatible with Flutter version  
- **Firebase Project:** Configured for Android and/or iOS  
- **Android Studio / Xcode:** For emulator or device testing  

### Step-by-Step Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd SUNote
