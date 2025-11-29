{ config, lib, pkgs, ... }: {
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
            
            # GitHub CLI integration
            credential.helper = "store";
            
            # Better diff and merge
            diff.algorithm = "patience";
            merge.conflictstyle = "diff3";
        };
    };
}