class Burc {
  final String _burcAdi;
  final String _burcDetay;
  final String _burcTarihi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => this._burcAdi;

  get burcDetay => this._burcDetay;

  get burcTarihi => this._burcTarihi;

  get burcKucukResim => this._burcKucukResim;

  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi, this._burcDetay, this._burcTarihi, this._burcKucukResim, this._burcBuyukResim);
  @override
  String toString() {
    return "$_burcAdi - $_burcBuyukResim";
  }
}
