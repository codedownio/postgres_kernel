{ python3 }:

python3.pkgs.buildPythonPackage rec {
  pname = "postgres_kernel";
  version = "0.1";

  src = ./.;

  propagatedBuildInputs = with python3.pkgs; [jupyter_client psycopg2 tabulate ipykernel];

  doCheck = false;

  meta = {
    description = "A simple Jupyter kernel for PostgreSQL";
    homepage = https://github.com/bgschiller/postgres_kernel;
  };
}
