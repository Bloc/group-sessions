`git bisect`

1. Find a commit where things were working
2. Find a commit where things are not working.

    ```bash
    > git bisect start
    > git bisect good 123AFE
    > git bisect bad 345ABE
    ```

3. Git loads the middle commit, and you tell git wether the commit has the problem or not by typing
    ```bash
    > git bisect good|bad
    ```
4. Repeat until you find your problem!
5. Once you found your problem `git bisect reset`
