#### Function Explanation: `check_availability`

The `check_availability` function performs the following tasks:

1. **Writes the header for the report**, including the current date and time, to the report file.
2. **Iterates over each URL** in the `URLS` array.
3. For each URL, it uses `curl` to measure the HTTP status code. The `curl` command is used with the following options:
   - `-o /dev/null`: Discards the output.
   - `-s`: Silent mode, which suppresses progress and error messages.
   - `-w "%{http_code}\n"`: Writes the HTTP status code to the variable.
   - `-L`: Follows redirects.
4. **Checks if the HTTP status code is `200`**. If it is, it appends a message stating the URL is available to the report file. Otherwise, it appends a message stating the URL is not available, along with the HTTP status code.
5. **Prints a message** indicating that the report has been saved.
