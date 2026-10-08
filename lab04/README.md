Lab04: Counting CPUs
GenAI used
I used OpenAI ChatGPT/Codex for guidance, debugging my Bash code, vi editing instructions, and advice on fixing logic errors. AI was strictly used as an assistant to improve my original code, not to generate new content.

Prompts
My main prompts included:

"I am getting this error in my Bash script, what does it mean?"

"Can you help me debug why my exit code is not returning correctly?"

"How do I show line numbers in vi?"

"I want to keep my current solution, but how can I fix this specific part?"

"Can you give me advice on how to improve the clarity of my code?"

"What was the problem with my original logic here?"

I also supplied screenshots of my code and terminal output for feedback.

Code suggestions and changes
After writing my original script, I used AI to help me debug and refine specific parts of my logic. Based on AI's advice and explanations, I made the following improvements to my own code:

Replaced my original CPU counting method with num-cpu=$(nproc) for better accuracy.

Refined my comparison logic using -lt and the first argument, $1.

Improved my usage function and argument-count check.

Switched to read -r -p for interactive input.

Implemented printf for better formatted output.

Added a regular expression to reject invalid CPU requirements.

Introduced a status variable to preserve the exit code while printing explanations.

Testing
My VM reported 2 available CPU cores.

Exercise 1: requiring 2 printed OK; requiring 4 printed ERROR.

Exercise 2: no argument displayed usage instructions; 2 and 4 produced the expected results.

Exercise 3: interactive input of 2 worked.

The final Exercise 3 script returned 0 for 2, 1 for 4, and 1 for hello.

Learning reflection
I wrote the original script and tested the output after making changes based on AI feedback. I explored help read and help printf. I practised using variables, command-line arguments, numeric comparisons, functions, interactive input, input validation, and exit codes. Debugging the misplaced exit command helped me understand why command order matters.

