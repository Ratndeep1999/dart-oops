enum CompanyType {
  soleProprietorship("Sole Proprietorship"),
  partnership("Partnership"),
  corporation("Corporation"),
  limitedLiabilityCompany("Limited Liability Company");

  final String text;
  const CompanyType(this.text);
}

void main(){
  CompanyType soleProprietorship = CompanyType.soleProprietorship;
  print(soleProprietorship.text); // Sole Proprietorship
}