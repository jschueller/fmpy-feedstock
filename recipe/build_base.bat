cd native
%PYTHON% download_binaries.py
set "PYTHONPATH=%CWD%\..\src"
%PYTHON% build_binaries.py

%PYTHON% -m build --wheel --skip-dependency-check --no-isolation
%PYTHON% -m installer dist\*.whl
