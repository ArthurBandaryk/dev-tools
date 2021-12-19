# dev-tools

Collection of developer scripts, files, etc, for improving the developer process.

You can use `bootstrap` to "install" some of these tools, e.g., the `pre-commit` hook.

Note that we currently use `ln -s` to "install" git hooks rather than just making a copy so that we can actually update it in the repository and everyone will benefit from the update).

#### ***So, before you start the work with some repo including this current repo as a submodule, we recommend you to run this file with the following command in the root directory (Linux & macOS):***

```
cd dev-tools && ./bootstrap
```

## `symlinks.ps1`

On `Windows` unix symlink doesn't not work as expected (check [this](https://github.com/3rdparty/eventuals/issues/153) issue). That's why we have created `symlinks.ps1` PowerShell script. To run this script do the following:

- Make sure if you are able to create symlinks on Windows:
    - Check [this](https://github.com/git-for-windows/git/wiki/Symbolic-Links) if you do not know how to allow non-admins to create symbolic links.
- Unblock the script
    - Right-click the script and choose Properties. In the Properties dialog, if available, select the Unblock checkbox and press OK.
- If it still doesn’t work, type the following in a PowerShell window: 
    - ```Set-ExecutionPolicy -ExecutionPolicy RemoteSigned```
- Run `symlinks.ps1` from the workspace containing the `dev-tools` submodule:
    - ```path\to\dev-tools\symlinks.ps1```
