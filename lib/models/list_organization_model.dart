class ListOrganizationModel{
    final String colores;
    final int iconNumber;
    final int iconColor;
    final String title;
    final String description;

    ListOrganizationModel(this.colores, this.iconNumber, this.iconColor, this.title, this.description);

}

final List<ListOrganizationModel> listOrganizationModels = [
    ListOrganizationModel('0XFFE3F2FD',0xf43e, 0xFF2196F3,'Me gusta', '40 organizaciones'),
    ListOrganizationModel('0XFFE3F2FD',0xf1c9, 0xFF2196F3,'Pitches enviados', '11 talentos'),
    ListOrganizationModel('0XFFE3F2FD',0xf1dd, 0xFF2196F3,'En lo que invertiria', '5 organizaciones'),
    ListOrganizationModel('0XFFE3F2FD',0xf4b1, 0xFF2196F3,'Aplicar después', '6 organizaciones'),
    ListOrganizationModel('0XFFE3F2FD',0xf334, 0xFF2196F3,'My playlist guardado', '6 playlist'),
    ListOrganizationModel('0XFFE3F2FD',0xeee2, 0xFF2196F3,'Organizaciones guardadas', '6 Organizaciones'),
];