class PeriodicTableElements {
  List<PeriodicTableElement> _elements = [];

  PeriodicTableElements({List<PeriodicTableElement> elements = const []}) {
    this._elements = elements;
  }

  List<PeriodicTableElement> get elements => _elements;
  set elements(List<PeriodicTableElement> elements) => _elements = elements;

  PeriodicTableElements.fromJson(Map<String, dynamic> json) {
    if (json['elements'] != null) {
      _elements = [];
      json['elements'].forEach((element) {
        _elements.add(new PeriodicTableElement.fromJson(element));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._elements != null) {
      data['elements'] =
          this._elements.map((element) => element.toJson()).toList();
    }
    return data;
  }
}

class PeriodicTableElement {
  String? _name = "";
  String? _appearance = "";
  double? _atomicMass = 0;
  double? _boil = 0;
  String? _category = "";
  String? _color = "";
  double? _density = 0;
  String? _discoveredBy = "";
  double? _melt = 0;
  double? _molarHeat = 0;
  String? _namedBy = "";
  int? _number = 0;
  int? _period = 0;
  String? _phase = "";
  String? _source = "";
  String? _spectralImg = "";
  String? _summary = "";
  String? _symbol = "";
  int? _xpos = 0;
  int? _ypos = 0;
  List<int>? _shells = [];
  String? _electronConfiguration = "";
  String? _electronConfigurationSemantic = "";
  double? _electronAffinity = 0;
  double? _electronegativityPauling = 0;
  List<int>? _ionizationEnergies = [];
  String? _cpkHex = "";

  PeriodicTableElement({
    String? name = "",
    String? appearance = "",
    double? atomicMass = 0,
    double? boil = 0,
    String? category = "",
    String? color = "",
    double? density = 0,
    String? discoveredBy = "",
    double? melt = 0,
    double? molarHeat = 0,
    String? namedBy = "",
    int? number = 0,
    int? period = 0,
    String? phase = "",
    String? source = "",
    String? spectralImg = "",
    String? summary = "",
    String? symbol = "",
    int? xpos = 0,
    int? ypos = 0,
    List<int>? shells = const [],
    String? electronConfiguration = "",
    String? electronConfigurationSemantic = "",
    double? electronAffinity = 0,
    double? electronegativityPauling = 0,
    List<int>? ionizationEnergies = const [],
    String? cpkHex = "",
  }) {
    this._name = name;
    this._appearance = appearance;
    this._atomicMass = atomicMass;
    this._boil = boil;
    this._category = category;
    this._color = color;
    this._density = density;
    this._discoveredBy = discoveredBy;
    this._melt = melt;
    this._molarHeat = molarHeat;
    this._namedBy = namedBy;
    this._number = number;
    this._period = period;
    this._phase = phase;
    this._source = source;
    this._spectralImg = spectralImg;
    this._summary = summary;
    this._symbol = symbol;
    this._xpos = xpos;
    this._ypos = ypos;
    this._shells = shells;
    this._electronConfiguration = electronConfiguration;
    this._electronConfigurationSemantic = electronConfigurationSemantic;
    this._electronAffinity = electronAffinity;
    this._electronegativityPauling = electronegativityPauling;
    this._ionizationEnergies = ionizationEnergies;
    this._cpkHex = cpkHex;
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  String? get appearance => _appearance;
  set appearance(String? appearance) => _appearance = appearance;
  double? get atomicMass => _atomicMass;
  set atomicMass(double? atomicMass) {
    if (atomicMass is int)
      _atomicMass = atomicMass?.toDouble();
    else
      _atomicMass = atomicMass;
  }

  double? get boil => _boil;
  set boil(double? boil) {
    if (boil is int)
      _boil = boil?.toDouble();
    else
      _boil = boil;
  }

  String? get category => _category;
  set category(String? category) => _category = category;
  String? get color => _color;
  set color(String? color) => _color = color;
  double? get density => _density;
  set density(double? density) {
    if (density is int)
      _density = density?.toDouble();
    else
      _density = density;
  }

  String? get discoveredBy => _discoveredBy;
  set discoveredBy(String? discoveredBy) => _discoveredBy = discoveredBy;
  double? get melt => _melt;
  set melt(double? melt) {
    if (melt is int)
      _melt = melt?.toDouble();
    else
      _melt = melt;
  }

  double? get molarHeat => _molarHeat;
  set molarHeat(double? molarHeat) {
    if (molarHeat is int)
      _molarHeat = molarHeat?.toDouble();
    else
      _molarHeat = molarHeat;
  }

  String? get namedBy => _namedBy;
  set namedBy(String? namedBy) => _namedBy = namedBy;
  int? get number => _number;
  set number(int? number) => _number = number;
  int? get period => _period;
  set period(int? period) => _period = period;
  String? get phase => _phase;
  set phase(String? phase) => _phase = phase;
  String? get source => _source;
  set source(String? source) => _source = source;
  String? get spectralImg => _spectralImg;
  set spectralImg(String? spectralImg) => _spectralImg = spectralImg;
  String? get summary => _summary;
  set summary(String? summary) => _summary = summary;
  String? get symbol => _symbol;
  set symbol(String? symbol) => _symbol = symbol;
  int? get xpos => _xpos;
  set xpos(int? xpos) => _xpos = xpos;
  int? get ypos => _ypos;
  set ypos(int? ypos) => _ypos = ypos;
  List<int>? get shells => _shells;
  set shells(List<int>? shells) => _shells = shells;
  String? get electronConfiguration => _electronConfiguration;
  set electronConfiguration(String? electronConfiguration) =>
      _electronConfiguration = electronConfiguration;
  String? get electronConfigurationSemantic => _electronConfigurationSemantic;
  set electronConfigurationSemantic(String? electronConfigurationSemantic) =>
      _electronConfigurationSemantic = electronConfigurationSemantic;
  double? get electronAffinity => _electronAffinity;
  set electronAffinity(double? electronAffinity) {
    if (electronAffinity is int)
      _electronAffinity = double.parse(electronAffinity.toString());
    else
      _electronAffinity = electronAffinity;
  }

  double? get electronegativityPauling => _electronegativityPauling;
  set electronegativityPauling(double? electronegativityPauling) {
    if (electronegativityPauling is int)
      _electronegativityPauling = electronegativityPauling?.toDouble();
    else
      _electronegativityPauling = electronegativityPauling;
  }

  List<int>? get ionizationEnergies => _ionizationEnergies;
  set ionizationEnergies(List<int>? ionizationEnergies) =>
      _ionizationEnergies = ionizationEnergies;
  String? get cpkHex => _cpkHex;
  set cpkHex(String? cpkHex) => _cpkHex = cpkHex;

  PeriodicTableElement.fromJson(Map<String, dynamic> json) {
    try {
      _name = json['name'];
      _appearance = json['appearance'];
      _atomicMass = json['atomic_mass'];
      _boil = json['boil'];
      _category = json['category'];
      _color = json['color'];
      _density = json['density'];
      _discoveredBy = json['discovered_by'];
      _melt = json['melt'];
      _molarHeat = json['molar_heat'];
      _namedBy = json['named_by'];
      _number = json['number'];
      _period = json['period'];
      _phase = json['phase'];
      _source = json['source'];
      _spectralImg = json['spectral_img'];
      _summary = json['summary'];
      _symbol = json['symbol'];
      _xpos = json['xpos'];
      _ypos = json['ypos'];
      _shells = json['shells'].cast<int>();
      _electronConfiguration = json['electron_configuration'];
      _electronConfigurationSemantic = json['electron_configuration_semantic'];
      _electronAffinity = json['electron_affinity'];
      _electronegativityPauling = json['electronegativity_pauling'];
      _ionizationEnergies = json['ionization_energies'].cast<int>();
      _cpkHex = json['cpk-hex'];
    } catch (e) {}
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['appearance'] = this._appearance;
    data['atomic_mass'] = this._atomicMass;
    data['boil'] = this._boil;
    data['category'] = this._category;
    data['color'] = this._color;
    data['density'] = this._density;
    data['discovered_by'] = this._discoveredBy;
    data['melt'] = this._melt;
    data['molar_heat'] = this._molarHeat;
    data['named_by'] = this._namedBy;
    data['number'] = this._number;
    data['period'] = this._period;
    data['phase'] = this._phase;
    data['source'] = this._source;
    data['spectral_img'] = this._spectralImg;
    data['summary'] = this._summary;
    data['symbol'] = this._symbol;
    data['xpos'] = this._xpos;
    data['ypos'] = this._ypos;
    data['shells'] = this._shells;
    data['electron_configuration'] = this._electronConfiguration;
    data['electron_configuration_semantic'] =
        this._electronConfigurationSemantic;
    data['electron_affinity'] = this._electronAffinity;
    data['electronegativity_pauling'] = this._electronegativityPauling;
    data['ionization_energies'] = this._ionizationEnergies;
    data['cpk-hex'] = this._cpkHex;
    return data;
  }
}
