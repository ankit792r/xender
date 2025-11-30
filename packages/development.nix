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
        user.name = var.name;
        user.email = var.gitEmail;
        
        settings = {
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