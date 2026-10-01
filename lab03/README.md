OpenAI

Prompt
can i do with vi
Post the script you prepared.
Continue with Exercise 2
whats was the question?
Look at the patterns first, then the numbers—is there a problem with that?
Send terminal screenshot
what do i need again for README

AI Assistance and Revisions
I used OpenAI Codex to understand the experiment requirements, obtain explanations, and learn how to use the vi editor.

I provided code to Codex, asking it to check the syntax and guide the testing process. Based on the feedback received, I adjusted command line breaks, the output text specified in the requirements, code comments, and input validation. In subsequent versions, I also removed the process list header, implemented timestamped log appending for Exercise 2, and added an option to choose between screen output and log output for Exercise 3.

I tested scenarios where the number of processes exceeded the limit and where it did not, using a Linux virtual machine, and verified both the screen output and log appending. Codex assisted me in reviewing the results shown in terminal screenshots.

Learning Reflection
The script requires two input parameters. a keyword ("screen" or "log") and a number. It checks whether these parameters have been provided. if not, it displays usage instructions and terminates.
Next, it counts the number of programs currently running on the computer and compares this count with the provided number. If the current count exceeds that number, it indicates that the limit has been exceeded; otherwise, it indicates that the limit has not been exceeded.
If you select "screen," the relevant information is displayed on the screen; if you select "log," the information is written to a file. When writing to the file, each entry is prefixed with the current date and time. The script writes to the file in append mode, ensuring existing content is not overwritten.
To test this: run the script with "screen" and a number, and you will see the information displayed on the screen while the file content remains unchanged; run it with "log" and a number, then open the file to see two new records containing the date and time; running it again adds another two records. If the input is incorrect, an error message appears on the screen, and no new content is added to the file.

