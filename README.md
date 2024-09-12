
# BookBazzar - Modular SwiftUI with MV(Model-View) Architecture Demo

## Overview

The **BookBazzar** demo project exemplifies the **Model-View (MV) architecture** in **SwiftUI** alongside a modular project structure. The primary focus of the project is to separate the user interface (View) from the data models (Model) while organizing different app features into independent modules. This separation enhances maintainability, scalability, and reusability in the codebase.

## Project Goals

- **Modular Design**: Features such as authentication, book listings, and user settings are organized into separate modules, allowing independent development, testing, and integration.
- **Model-View Architecture**: The project showcases how to implement the **Model-View (MV)** architecture in SwiftUI by keeping the data logic (Model) and UI (View) separate.
- **Core Features**:
  - **Authentication**: Login and registration views.
  - **Book Management**: Listing and displaying book details.
  - **Favorites**: Users can add and remove books from their favorites.
  - **Settings**: Allows users to manage profile and app preferences.

## Architecture Overview

The project follows a **Model-View (MV) architecture** with a strong emphasis on **modularity**. Each feature is organized as an independent module that follows the MV structure:

- **Model**: Responsible for handling the app’s data logic, including fetching and storing information (e.g., book listings, user sessions).
- **View**: Contains SwiftUI views responsible for rendering the user interface and displaying data provided by the Model.

### Modules Overview

1. **Core Modules**:
   - **Models**: Defines the core data models such as `Product` and `UserSession`.
   - **Services**: Handles API communication and business logic.
   - **Stores**: Manages state storage, including book listings and user session.

2. **Feature Modules**:
   - **Authentication**: Manages user login and registration.
   - **Favorites**: Handles favorites management for books.
   - **Book Management**: Contains the book listing and detailed views.
   - **Settings**: Provides the user interface for app settings.
   - **UIComponents**: Contains reusable components like buttons and text fields.

---

## File Structure

```
📦 BookBazzar
 ┣ 📂 App
 ┃ ┗ 📜 BookBazzarApp.swift
 ┣ 📂 Core
 ┃ ┣ 📂 Models
 ┃ ┃ ┗ 📜 Product.swift
 ┃ ┃ ┗ 📜 UserSession.swift
 ┃ ┣ 📂 Services
 ┃ ┃ ┗ 📜 ProductService.swift
 ┃ ┣ 📂 Stores
 ┃ ┃ ┗ 📜 ProductStore.swift
 ┣ 📂 DesignSystem
 ┃ ┗ 📜 Colors.swift
 ┃ ┗ 📜 Spacing.swift
 ┃ ┗ 📜 Typography.swift
 ┣ 📂 Features
 ┃ ┣ 📂 Authentication
 ┃ ┃ ┗ 📜 LoginView.swift
 ┃ ┃ ┗ 📜 RegisterView.swift
 ┃ ┣ 📂 Favorites
 ┃ ┃ ┗ 📜 FavoritesView.swift
 ┃ ┣ 📂 ProductDetail
 ┃ ┃ ┗ 📜 ProductDetailView.swift
 ┃ ┣ 📂 ProductList
 ┃ ┃ ┗ 📜 ProductListView.swift
 ┃ ┗ 📂 Settings
 ┃ ┃ ┗ 📜 SettingsView.swift
 ┣ 📂 UIComponents
 ┃ ┗ 📜 CustomButton.swift
 ┃ ┗ 📜 CustomTextField.swift
 ┣ 📂 Preview Content
 ┣ 📂 Tests
 ┃ ┣ 📂 AuthenticationTests
 ┃ ┣ 📂 FavoritesTests
 ┃ ┣ 📂 ProductDetailTests
 ┃ ┗ 📂 UIComponentsTests
 ┣ 📜 BookBazzar.entitlements
 ┗ 📜 README.md
```

### Key Components:

1. **App Module**:
   - **File**: `BookBazzarApp.swift`
   - **Purpose**: Acts as the entry point of the app. Sets up the navigation, tab views, and initializes the necessary environment objects for state management.

2. **Core Modules**:
   - **Models**: Contains core data models like `Product.swift` (defining book details) and `UserSession.swift` (handling session management).
   - **Services**: Manages the app’s business logic and API communication, such as `ProductService.swift`.
   - **Stores**: Manages application state (e.g., `ProductStore.swift` for book listing and caching).

3. **DesignSystem Module**:
   - **Files**: `Colors.swift`, `Spacing.swift`, `Typography.swift`
   - **Purpose**: Defines the app's design system, including reusable constants for colors, spacing, and typography to ensure consistent styling across the app.

4. **Features Modules**:
   - **Authentication**: Includes views for login (`LoginView.swift`) and registration (`RegisterView.swift`).
   - **Favorites**: Displays and manages the user's favorite books (`FavoritesView.swift`).
   - **Book Management**: Includes the book listing (`ProductListView.swift`) and detailed view (`ProductDetailView.swift`).
   - **Settings**: Provides user settings interface (`SettingsView.swift`).

5. **UIComponents Module**:
   - **Files**: `CustomButton.swift`, `CustomTextField.swift`
   - **Purpose**: Reusable UI components like buttons and text fields are stored here for use across various feature modules.

---

## Key Features

1. **Modular Design**:
   - Each feature (authentication, favorites, book listing) is organized into a separate module with its own models, views, and tests.

2. **Model-View Architecture**:
   - **Model**: Handles the core data logic, such as fetching and storing books and user sessions.
   - **View**: SwiftUI views display the user interface, binding directly to models to display data.

3. **Authentication**:
   - Provides a simple login and registration system. Includes password visibility toggles and basic validation.

4. **Favorites**:
   - Allows users to add books to their favorites and view their favorite books in a separate list.

5. **Book Management**:
   - Displays a list of books and detailed views for each book, simulating an online book marketplace.

6. **Settings**:
   - Allows users to modify their profile and app settings.

---

## Running the Project

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo-url.git
   cd BookBazzar
   ```

2. **Open the Project in Xcode**:
   - Open the project and ensure the target device or simulator is set to iOS 14.0 or later.

3. **Run the App**:
   - Once Xcode finishes building, you can run the app on the simulator or a physical device.

4. **Authenticate**
   - The usernamer is `user` and password is `password` 🫠	

---

## Conclusion

The **BookBazzar** project illustrates how to apply a **Model-View (MV)** architecture in a modular SwiftUI app. By organizing the app into independent modules and separating the UI (View) from the data (Model), the project remains scalable, maintainable, and easy to extend.
