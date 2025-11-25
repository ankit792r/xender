{config, lib, ...}: {
    config.var = {
        username = "ankit";
    };

    options = {
        var = lib.mkOption {
            type = lib.types.attrs;
            default = {};
        };
  };
}