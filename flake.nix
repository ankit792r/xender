{
    description = "Vrindavan";
    inputs = {
        krishna.url = "path:./machines/krishna";
        radha.url = "path:./machines/radha";
        temp.url = "path:./machines/temp";
    };
    outputs = { self, krishna, radha, temp, ... }: {
        nixosConfigurations = {
            krishna = krishna.nixosConfigurations.krishna;
            radha = radha.nixosConfigurations.radha;
	        temp = temp.nixosConfigurations.temp;
        };
    };
}
