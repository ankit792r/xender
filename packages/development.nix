{ config, lib, pkgs, var, ... }: {
    home.packages = with pkgs; [     
        rustc
        cargo
        rustfmt
        clippy
        rust-analyzer   

        docker
        docker-compose
    ];

    programs.git = {
        enable = true;
        settings = {
            user.name = var.name;
            user.email = var.gitEmail;
            init.defaultBranch = "main";
            pull.rebase = true;
            push.autoSetupRemote = true;
            core.editor = "nvim";
            diff.tool = "vimdiff";
            merge.tool = "vimdiff";
            
            credential.helper = "store";
            
            diff.algorithm = "patience";
            merge.conflictstyle = "diff3";
        };
    };
}