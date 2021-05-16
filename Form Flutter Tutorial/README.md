The app shows a simple screen displaying an Appbar and a Form.
Appbar is pretty simple -- showing just a title.

The Form shows a sign up heading, three form fields, a submit button and a linear progress indicator. 
The form fields each shows a label text and a hint text if you click it. Each form field has a validator which verifies that the fields should be non-empty to submit the form. Form fields show a warning message if you try to submit an invalid form. Each form field has a controller which is used to track changes in the form and update accordingly. The form also has a global key which is used to tracks its changes and verify it.

The linear progress indicator shows the progress of the form. It shows the progress in different colors (harcoded right now) depending on the progress. The progress indicator is linked with fields and update dynamically wrt fields progres, so if you add text to fields, it increases the progress and if you remove text from a field, it decreased the progress. The progress is increased/decreased in proportion to the progress. The color coding of indicator follow same color coding as https://github.com/hitesh19426/flutter-app-dart-codes/tree/main/Linear%20Progress%20Bar.

The form also has a submit button which allows you to submit the form if all fields are non-empty. It directs you to welcome screen which shows a appabr and a welcome screen. You can go back to the previous screen using appbar back button.
