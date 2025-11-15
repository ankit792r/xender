{
    description = "Vrindavan";
    inputs = {
        krishna.url = "path:./machines/krishna";
    };
    outputs = { self, krishna, ... }: {
        nixosConfigurations = {
            krishna = krishna.nixosConfigurations.krishna;
        };
    };
}