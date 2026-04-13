## Name : Karan Verma

## Roll Number : 23EACAD058

## Experiment Title : GUI Application – Calculator

## Aim :

To design a simple GUI-based calculator using Flutter widgets.

---

## Procedure

* Install Flutter SDK

  * Download and install the Flutter SDK from the official website and set up environment variables.

* Install Android Studio

  * Install Android Studio and configure it with the Flutter and Dart plugins.

* Create a New Flutter Project

  * Open Android Studio
  * Click on **New Flutter Project**
  * Select **Flutter Application**
  * Enter project name and location
  * Click **Finish**

* Write the Source Code

  * Open the `main.dart` file and replace the existing code with the calculator program.
  * Create input fields using `TextField` for numbers and operator.
  * Use `TextEditingController` to capture user inputs.
  * Implement a `calculate()` function to perform arithmetic operations (+, -, *, /).
  * Display the result dynamically on the screen.

* Connect Device/Emulator

  * Start an Android emulator or
  * Connect a physical Android device with USB debugging enabled

* Run the Application

  * Click the **Run** button or use the command:

    ```bash
    flutter run
    ```

* Observe the Output

  * Verify that the app displays:

    * Input fields for two numbers and an operator
    * A "Calculate" button
    * Correct result based on the entered operation
    * Result displayed on the screen

---

## Output

A calculator interface is displayed where the user enters two numbers and an operator (+, -, *, /). Upon clicking the **Calculate** button, the correct result is shown below. Division by zero is handled safely by displaying 0.

* <img width="1918" height="1030" alt="output_Experiment_3" src="https://github.com/user-attachments/assets/b5a83611-7215-4211-a9a0-aeff7e1096a8" />


---

## Conclusion

The experiment was successfully completed by developing a simple calculator application using Flutter. It demonstrated handling user input, performing arithmetic operations, and updating the UI dynamically using StatefulWidget. The application produced correct results and handled edge cases like division by zero effectively.
