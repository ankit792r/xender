{
    description = "Vaikuntha - The abode of Lord Vishnu";
    inputs = {
        vrindavan.url = "path:./machines/vrindavan";
        gokul.url = "path:./machines/gokul";
        barsana.url = "path:./machines/barsana";
        mathura.url = "path:./machines/mathura";
    };
    outputs = { self, vrindavan, gokul, barsana, mathura, ... }: {
        nixosConfigurations = {
            gokul = gokul.nixosConfigurations.gokul;
            vrindavan = vrindavan.nixosConfigurations.vrindavan;
            barsana = barsana.nixosConfigurations.barsana;
            mathura = mathura.nixosConfigurations.mathura;
        };
    };
}
