# overlay.nix
self: super:

let
  inherit (super) callPackage kernelPatches;
in
{
  linux_pine64_4_14 = callPackage ./linux-pine64.nix {
    kernelPatches = [
      kernelPatches.bridge_stp_helper
      kernelPatches.modinst_arg_list_too_long
    ];
  };
  linuxPackages_pine64_4_14 = self.linuxPackagesFor self.linux_pine64_4_14;
}
