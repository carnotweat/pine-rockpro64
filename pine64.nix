# linux-pine64.nix
{ fetchFromGitHub, buildLinux, ... } @ args:
buildLinux (args // rec {
  version = "4.14.23";
  modDirVersion = "4.14.23";
  extraMeta.branch = "4.14";
  src = fetchFromGitHub {
    owner = "CallMeFoxie";
    repo = "linux";
    rev = "f0899693d21e15ce32df4d4702f236dfe3e0eba7";
    sha256 = "043q7v7c5w84dnbgsmz117q712ljqrgay5707pz4vnvxl53czk4h";
  };
  extraMeta.platforms = [ "aarch64-linux" ];
  structuredExtraConfig = {
    # Options for HDMI.
    # Fixes this:
    #   sun4i-drm display-engine: master bind failed: -517
    SUN8I_DE2_CCU = "y";
  };
} // (args.argsOverride or {}))

