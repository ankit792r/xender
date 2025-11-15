{
    description = "Vrindavan";
    inputs = {
        krishna.url = "path:./machines/krishna";
        radha.url = "path:./machines/radha";
    };
    outputs = { self, krishna, radha, ... }: {
        nixosConfigurations = {
            krishna = krishna.nixosConfigurations.krishna;
            radha = radha.nixosConfigurations.radha;
        };
    };
}