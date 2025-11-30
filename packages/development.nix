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
        userName = var.name;
        userEmail = var.gitEmail;

        extraConfig = {            
            init.defaultBranch = "main";
            pull.rebase = true;
            push.autoSetupRemote = true;
            core.editor = "nvim";
            diff.tool = "vimdiff";
            merge.tool = "vimdiff";
            
            credential.helper = "store";
            
            diff.algorithm = "patience";
            merge.conflictstyle = "diff3";
            alias = {
                hist = "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short";
            };
        };
    };
}