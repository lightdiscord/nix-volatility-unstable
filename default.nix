{ stdenv, fetchFromGitHub, pythonPackages }:

pythonPackages.buildPythonApplication rec {
  pname = "volatility-unstable";
  version = "2020-05-28";

  src = fetchFromGitHub {
    owner = "volatilityfoundation";
    repo = "volatility";
    rev = "5f685e56705611a589c689f374f5c5152eb57f86";
    sha256 = "1dvg38vwd7z5ym1f1sw9yalg576xpj57p1qlh3xrivbdj5nf88w1";
  };

  doCheck = false;

  propagatedBuildInputs = [ pythonPackages.pycrypto pythonPackages.distorm3 ];
}
