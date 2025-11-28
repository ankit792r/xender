{
    description = "Vaikuntha - The abode of Lord Vishnu";
    inputs = {
        vrindavan.url = "path:./machines/vrindavan";
    };
    outputs = { self, vrindavan, ... }: {
        nixosConfigurations = {
            vrindavan = vrindavan.nixosConfigurations.vrindavan;
        };
    };
}
