{
    description = "Vrindavan";
    inputs = {
        vrindavan.url = "path:./machines/vrindavan";
        gokul.url = "path:./machines/gokul";
    };
    outputs = { self, vrindavan, gokul, ... }: {
        nixosConfigurations = {
            gokul = gokul.nixosConfigurations.gokul;
            vrindavan = vrindavan.nixosConfigurations.vrindavan;
        };
    };
}
