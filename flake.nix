{
    description = "Vrindavan";
    inputs = {
        vrindavan.url = "path:./machines/vrindavan";
        gokul.url = "path:./machines/gokul";
        barsana.url = "path:./machines/barsana";
    };
    outputs = { self, vrindavan, gokul, barsana, ... }: {
        nixosConfigurations = {
            gokul = gokul.nixosConfigurations.gokul;
            vrindavan = vrindavan.nixosConfigurations.vrindavan;
            barsana = barsana.nixosConfigurations.barsana;
        };
    };  
}
