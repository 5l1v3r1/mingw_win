Need to build something using mingw on windows? Me too!

Works real good with dockermachine etc

- `git clone https://github.com/c-sto/mingw_win`
- `docker build -t mingw_win .`
- `docker run -it -v C:$(pwd):C:$(pwd) mingw_win powershell`