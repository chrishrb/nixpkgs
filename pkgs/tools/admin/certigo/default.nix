{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "certigo";
  version = "1.15.1";

  src = fetchFromGitHub {
    owner = "square";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-XGR6xIXdFLnJTFd+mJneRb/WkLmi0Jscta9Bj3paM1M=";
  };

  vendorSha256 = "sha256-qS/tIi6umSuQcl43SI4LyL0k5eWfRWs7kVybRPGKcbs=";

  doCheck = false;

  meta = with lib; {
    description = "A utility to examine and validate certificates in a variety of formats";
    homepage = "https://github.com/square/certigo";
    license = licenses.asl20;
    maintainers = [ maintainers.marsam ];
  };
}
