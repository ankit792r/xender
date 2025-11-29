{config, lib, ...}: {
    config.var = {
        username = "ankit";
        nixosVersion = "25.02";
        homeManagerVersion = "25.02";
    };

    options = {
        var = lib.mkOption {
            type = lib.types.attrs;
            default = {};
        };
  };
}