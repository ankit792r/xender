{
    description = "Vrindavan";
    inputs = {
        krishna.url = "path:./machines/krishna";
    };
    outputs = { krishna }: {
        nixosConfigurations = {
            krishna = krishna.nixosConfigurations.krishna;
        };
    }
};