# Coding guide for AI Agents

This rules apply to python modules, scripts and notebooks alike.

* MOST IMPORTANT RULE: when developing a new feature, always plan first, ask clarifying questions to understand the requirements, wait for approval by a human before starting to code, make sure you and the human are aligned on the requirements and the plan.

* code should be dry (don't repeat yourself), clean code principles should be followed, solid principles should be followed. Always think about maintainability and readability of the code.
* follow best software engineering practices for modern python development (3.13+).
* everywhere where possible make sure to add type hints, for arguments and return types.
* make sure to enforce trailing commas everywhere possible (e.g. in function calls, function definitions, lists, dicts, etc.)
* use ruff format to automatically format the code and ruff check --fix to fix linting issues and autosort imports.
* use uv as package manager. add dependencies using `uv add <package>` command, install dependencies with `uv sync` command. Modules should be run with `uv run <module>` command.
* code shoud be readable and well documented following google style for docstrings.
* we should use name parameters when calling functions wherever possible to increase readability.
* test should be written using pytest framework. Test should clearly follow Arrange Act Assert pattern, marking the start of each section with a comment like `# Arrange: what we are setting up`, `# Act: what we are doing`, `# Assert: what we are checking`, tests should also be Dry, readable, mantainable, clean, following solid principles
* each directory should contain a README.md file explaining the purpose of the directory and any important information about its contents, for humans and agents alike.
* when working, use sub agents extensively to delegate tasks to specialized agents, improving efficiency and effectiveness.
* leverage memory capabilities to retain important information and context over time, enhancing interactions and decision-making.
