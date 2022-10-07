import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_live_map/data/dto/coding_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fiaccola_stage.freezed.dart';
part 'fiaccola_stage.g.dart';

@freezed
class FiaccolaStage with _$FiaccolaStage {
  const factory FiaccolaStage({
    required String id,
    required String region,
    required String label,
    @MyTimestampConverter() required DateTime startTime,
    @MyTimestampConverter() required DateTime endTime,
    @GeoPointConverter() required GeoPoint location,
  }) = _FiaccolaStage;


  factory FiaccolaStage.fromJson(Map<String, Object?> json) =>
      _$FiaccolaStageFromJson(json);
}

// extension FiaccolaStageX on FiaccolaStage {
//   DateTime get endTime => startTime.add(duration ?? const Duration(hours: 1));
// }


class MyTimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const MyTimestampConverter();

  @override
  DateTime fromJson(Timestamp data) {
    return data.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

/*

final stages = [
  FiaccolaStage(
    region: 'TOSCANA',
    label: "Istituto Comprensivo \"J. Lennon\" - Sinalunga (SI)",
    startTime: DateTime(2022, 10, 10, 9, 0),
    lat: 43.213359,
    long: 11.734465,
  ),
  FiaccolaStage(
    region: 'MARCHE',
    label: "ITET \"Carducci-Galilei\" Fermo (FM)",
    startTime: DateTime(2022, 10, 10, 10, 0),
    lat: 43.168771381396205,
    long: 13.731502354665144,
  ),
  FiaccolaStage(
    region: 'Veneto',
    label: "IC San Fior TV",
    startTime: DateTime(2022, 10, 10, 11, 0),
    lat: 45.908804,
    long: 12.398826,
  ),
  FiaccolaStage(
    region: 'Sicilia',
    label: "ICS Michelangelo Buonarroti",
    startTime: DateTime(2022, 10, 10, 12, 0),
    lat: 38.12518146016103,
    long: 13.307760728863034,
  ),
  FiaccolaStage(
    region: 'Lazio',
    label: "I.C. Visconti Roma Sede: \"Sant'Agata de' Goti\"",
    startTime: DateTime(2022, 10, 10, 13, 0),
    lat: 41.89581026941088,
    long: 12.489409942327368,
  ),
  FiaccolaStage(
    region: 'Lombardia',
    label: "I.C. Nord 1 (BS)",
    startTime: DateTime(2022, 10, 10, 14, 0),
    lat: 41.89581026941088,
    long: 12.489409942327368,
  ),

  //11 Ottobre
  FiaccolaStage(
    region: 'Toscana',
    label: "ITIS G.Galilei di Arezzo",
    startTime: DateTime(2022, 10, 11, 9, 0),
    lat: 43.46497545718181,
    long: 11.873315169695195,
  ),
  FiaccolaStage(
    region: 'Veneto',
    label: "IS Carlo Anti Villafranca Verona	",
    startTime: DateTime(2022, 10, 11, 10, 0),
    lat: 45.35770793561748,
    long: 10.839807324413867,
  ),
  FiaccolaStage(
    region: 'Calabria',
    label: "I.I.S. I.T.G. E I.T.I. Vibo Valentia (VV)",
    startTime: DateTime(2022, 10, 11, 11, 0),
    lat: 38.68584576698726,
    long: 16.11679414259604,
  ),
  FiaccolaStage(
    region: 'Lazio',
    label: "IC Antonio Sebastiani LT",
    startTime: DateTime(2022, 10, 11, 12, 0),
    lat: 41.24539211006948,
    long: 13.738896552954857,
  ),
  FiaccolaStage(
    region: 'Lazio',
    label: "I.C.Parco degli Acquedotti, Roma",
    startTime: DateTime(2022, 10, 11, 13, 0),
    lat: 41.85063164113781,
    long: 12.560490518797305,
  ),

  //12 Ottobre
  FiaccolaStage(
    region: 'Basilicata',
    label: "IC-BELLA PZ",
    startTime: DateTime(2022, 10, 12, 9, 0),
    lat: 40.75537432219895,
    long: 15.53531836663617,
  ),
  FiaccolaStage(
    region: 'Piemonte',
    label: "IC Santarosa, Savigliano (CN)",
    startTime: DateTime(2022, 10, 12, 10, 0),
    lat: 44.65331,
    long: 7.65868,
  ),
  FiaccolaStage(
    region: 'Campania',
    label: "Liceo Scientifico \"Emilio Segrè\" - Marano di napoli (NA)",
    startTime: DateTime(2022, 10, 12, 11, 0),
    lat: 41.00426358057148,
    long: 14.120542656602746,
  ),
  FiaccolaStage(
    region: 'Piemonte',
    label: "IC Cavallermaggiore, Caramagna (CN)",
    startTime: DateTime(2022, 10, 12, 12, 0),
    lat: 44.77968,
    long: 7.74119,
  ),
  FiaccolaStage(
    region: 'Veneto',
    label: "IC Monteforte D'alpone VR",
    startTime: DateTime(2022, 10, 12, 13, 0),
    lat: 45.4479431,
    long: 11.2893239,
  ),
  FiaccolaStage(
    region: 'Piemonte',
    label: "IC Santarosa, Levaldigi (CN)",
    startTime: DateTime(2022, 10, 12, 14, 0),
    lat: 44.5568446,
    long: 7.6238156,
  ),

  //13 Ottobre
  FiaccolaStage(
    region: 'Puglia',
    label: "IIS Fermi Lecce",
    startTime: DateTime(2022, 10, 13, 9, 0),
    lat: 40.34752031527431,
    long: 18.18601281313708,
  ),
  FiaccolaStage(
    region: 'Lazio',
    label: "Liceo Scientifico Statale G.B. Grassi di Latina",
    startTime: DateTime(2022, 10, 13, 10, 0),
    lat: 41.45899060990754,
    long: 12.895290497806373,
  ),
  FiaccolaStage(
    region: 'Lombardia',
    label: "Liceo Scientifico Einstein (MI)",
    startTime: DateTime(2022, 10, 13, 11, 0),
    lat: 45.45051181024588,
    long: 9.216381733579219,
  ),
  FiaccolaStage(
    region: 'Lazio',
    label: "Liceo Scientifico e Linguistico Innocenzo XII Anzio, RM",
    startTime: DateTime(2022, 10, 13, 12, 0),
    lat: 41.46699013619921,
    long: 12.60962157888043,
  ),
  FiaccolaStage(
    region: 'Toscana',
    label:
        "Istituto Statale di Istruzione Superiore \"Gobetti - Volta\" - Bagno a Ripoli (FI)",
    startTime: DateTime(2022, 10, 13, 13, 0),
    lat: 43.754296,
    long: 11.315869,
  ),
  FiaccolaStage(
    region: 'Piemonte',
    label: "IC La Loggia, La Loggia (TO)",
    startTime: DateTime(2022, 10, 13, 14, 0),
    lat: 44.957513,
    long: 7.662364,
    duration: const Duration(minutes: 30),
  ),
  FiaccolaStage(
    region: 'Lazio',
    label: "I.C. Antonio Rosmini, Roma",
    startTime: DateTime(2022, 10, 13, 14, 30),
    lat: 41.89056301523428,
    long: 12.410601123777733,
    duration: const Duration(minutes: 30),
  ),

  //14 Ottobre
  FiaccolaStage(
    region: 'Sardegna',
    label: "I.C. Isili (CA)",
    startTime: DateTime(2022, 10, 14, 9, 0),
    lat: 39.7470112556392,
    long: 9.107254950700012,
  ),
  // FiaccolaStage(
  //   region: 'Lazio',
  //   label: "Liceo Scientifico Statale G.B. Grassi di Latina",
  //   startTime: DateTime(2022, 10, 14, 10, 0),
  //   lat: 41.45899060990754,
  //   long: 12.895290497806373,
  // ),
  FiaccolaStage(
    region: 'Veneto',
    label: "IC Ponso PD",
    startTime: DateTime(2022, 10, 14, 11, 0),
    lat: 45.223696,
    long: 11.613056,
  ),
  FiaccolaStage(
    region: 'Friuli Venezia Giulia',
    label: "ISIS DEGANUTTI (UD)",
    startTime: DateTime(2022, 10, 14, 12, 0),
    lat: 46.0698167983665,
    long: 13.242851889595558,
  ),
  FiaccolaStage(
    region: 'Molise',
    label: "ITST \"G. Marconi\" - Campobass",
    startTime: DateTime(2022, 10, 14, 13, 0),
    lat: 41.67666371530493,
    long: 15.0290668722794,
  ),
  FiaccolaStage(
    region: 'Campania',
    label: "Convitto Nazionale \"P. Colletta\" (AV)",
    startTime: DateTime(2022, 10, 14, 14, 0),
    lat: 40.91444748678802,
    long: 14.784386351887873,
  ),

  //17 Ottobre
  FiaccolaStage(
    region: 'Toscana',
    label: "Istituto Comprensivo 2 Poggibonsi (SI)",
    startTime: DateTime(2022, 10, 17, 9, 0),
    lat: 43.46550788229041,
    long: 11.159311875566358,
  ),
  FiaccolaStage(
    region: 'Sicilia',
    label:
        "Istituto Omnicompresivo Pestalozzi Villaggio Sant'Agata Zona A (CT)",
    startTime: DateTime(2022, 10, 17, 10, 0),
    lat: 37.48957733706796,
    long: 15.058952562376717,
  ),
  FiaccolaStage(
    region: 'Lombardia',
    label: "IC MARCALLO CASONE (MI)",
    startTime: DateTime(2022, 10, 17, 11, 0),
    lat: 46.82604643766606,
    long: 8.56775087853141,
  ),
  FiaccolaStage(
    region: 'Campania',
    label: "I.P.S.A.R. \"Le Streghe\" (BN)",
    startTime: DateTime(2022, 10, 17, 12, 0),
    lat: 41.118529144017245,
    long: 14.777789486282149,
  ),
  FiaccolaStage(
    region: 'Umbria',
    label: "Istituto Comprensivo Perugia",
    startTime: DateTime(2022, 10, 17, 13, 0),
    lat: 43.111073724019896,
    long: 12.445912784238098,
  ),
  FiaccolaStage(
    region: 'Sicilia',
    label: "SMS Virgilio di Paternò (CT)",
    startTime: DateTime(2022, 10, 17, 14, 0),
    lat: 37.57063513747002,
    long: 14.902465315456324,
    duration: const Duration(minutes: 30),
  ),
  FiaccolaStage(
    region: 'Calabria',
    label: "IC Montalto Uffugo Taverna (CS)",
    startTime: DateTime(2022, 10, 17, 14, 30),
    lat: 39.432015815199776,
    long: 16.226503589490783,
    duration: const Duration(minutes: 30),
  ),
  FiaccolaStage(
    region: 'Campania',
    label: "I.C. \"E. De Filippo\" di Sant'Egidio del Monte Albino",
    startTime: DateTime(2022, 10, 17, 15, 0),
    lat: 40.73327510756721,
    long: 14.60153551140465,duration: const Duration(minutes: 30),
  ),

  //18 Ottobre
  FiaccolaStage(
    region: 'Emilia Romagna',
    label: "IC Monte San Pietro (BO)",
    startTime: DateTime(2022, 10, 18, 9, 0),
    lat: 44.45717723490044,
    long: 11.19809759029778,
  ),
  FiaccolaStage(
    region: 'Veneto',
    label: "IC VITTORIO VENETO 1 DA PONTE(TV)",
    startTime: DateTime(2022, 10, 18, 10, 0),
    lat: 45.95863,
    long: 12.38880,
  ),
  FiaccolaStage(
    region: 'Emilia Romagna',
    label: "DD Ilaria Alpi di Fidenza (PC)",
    startTime: DateTime(2022, 10, 18, 11, 0),
    lat: 44.86284,
    long: 10.06432,
  ),
  FiaccolaStage(
    region: 'Sicilia',
    label: "IT Archimede - Catania",
    startTime: DateTime(2022, 10, 18, 12, 0),
    lat: 37.51280332782548,
    long: 15.079538363960237,
  ),
  FiaccolaStage(
    region: 'Emilia Romagna',
    label: "IC Zola Predosa (BO)",
    startTime: DateTime(2022, 10, 18, 13, 0),
    lat: 44.4886338826382,
    long: 11.215139660555415,
  ),
  FiaccolaStage(
    region: 'Abruzzo',
    label: "I.C.\"BUONARROTI\" - Ripa Teatina (CH)",
    startTime: DateTime(2022, 10, 18, 14, 0),
    lat: 42.35961256737255,
    long: 14.23162193497771,
  ),

  //19 Ottobre
  FiaccolaStage(
    region: 'Lombardia',
    label: "IC CREMONA 3 (CR)",
    startTime: DateTime(2022, 10, 19, 9, 0),
    lat: 45.1349125244382,
    long: 10.029243015587605,
  ),
  FiaccolaStage(
    region: 'Puglia',
    label: "IC BATTISTI - GIOVANNI XXIII - CORATO",
    startTime: DateTime(2022, 10, 19, 10, 0),
    lat: 41.154465422384256,
    long: 16.413042213089554,
  ),
  FiaccolaStage(
    region: 'Marche',
    label:
        "IC \"Mario Giacomelli\" - Scuola Primaria \"Cesano\" Senigallia (AN)",
    startTime: DateTime(2022, 10, 19, 11, 0),
    lat: 43.741831767363585,
    long: 13.183376570021508,
  ),
  FiaccolaStage(
    region: 'Friuli Venezia Giulia',
    label: "Scuola Primaria Anita Pittoni (TS)",
    startTime: DateTime(2022, 10, 19, 12, 0),
    lat: 45.64822808266252,
    long: 13.782857584862684,
  ),
  FiaccolaStage(
    region: 'Sicilia',
    label: "IC Ettore Romagnoli - Gela (CL)",
    startTime: DateTime(2022, 10, 19, 13, 0),
    lat: 37.06986867411631,
    long: 14.235698834756414,
  ),
  FiaccolaStage(
    region: 'CAMPANIA',
    label: "I.S. \"Nitti\" Portici (NA)",
    startTime: DateTime(2022, 10, 19, 14, 0),
    lat: 40.82140321787848,
    long: 14.327731926750602,
    duration: const Duration(minutes: 30),
  ),
  FiaccolaStage(
    region: 'Basilicata',
    label: "IC TORRACA-BONAVENTURA-Potenza",
    startTime: DateTime(2022, 10, 19, 14, 30),
    lat: 40.63462916845231,
    long: 15.802881441491783,
    duration: const Duration(minutes: 30),
  ),
  FiaccolaStage(
    region: 'Liguria',
    label: "IC Albenga II via Al Centa 117031 Albenga (SV)",
    startTime: DateTime(2022, 10, 19, 15, 0),
    lat: 44.04937816398692,
    long: 8.210572556880157,
    duration: const Duration(minutes: 30),
  ),
  FiaccolaStage(
    region: 'Liguria',
    label: "Polo Tecnologico Imperiese via Santa Lucia, 31, 18100 Imperia",
    startTime: DateTime(2022, 10, 19, 15, 30),
    lat: 43.8913725336356,
    long: 8.045747584136908,duration: const Duration(minutes: 30),
  ),

  //20 Ottobre
  FiaccolaStage(
    region: 'Lombardia',
    label: "ITIS PALEOCAPA (BG)",
    startTime: DateTime(2022, 10, 20, 9, 0),
    lat: 45.689759548718754,
    long: 9.681853491243425,
  ),
  FiaccolaStage(
    region: 'Abruzzo',
    label: "Mosciano Sant'Angelo (TE)",
    startTime: DateTime(2022, 10, 20, 10, 0),
    lat: 42.74586282894355,
    long: 13.889959872828863,
  ),
  FiaccolaStage(
    region: 'Puglia',
    label: "ITET DE VITI DE MARCO di Triggiano (BA)",
    startTime: DateTime(2022, 10, 20, 11, 0),
    lat: 41.06485106037414,
    long: 16.910804026164843,
  ),
  FiaccolaStage(
    region: 'Umbria',
    label: "IC FOLIGNO",
    startTime: DateTime(2022, 10, 20, 12, 0),
    lat: 42.96512995300611,
    long: 12.69387873025986,
  ),
  FiaccolaStage(
    region: 'Lombardia',
    label: "IIS DALLA CHIESA - Sesto Calende (VA)",
    startTime: DateTime(2022, 10, 20, 13, 0),
    lat: 45.73246295202848,
    long: 8.630577965094698,
  ),
  FiaccolaStage(
    region: 'Lazio',
    label: "I.C.“Paolo Ruffini” di Valentano (VT)",
    startTime: DateTime(2022, 10, 20, 14, 0),
    lat: 42.54403963962888,
    long: 11.75828827283137,
    duration: const Duration(minutes: 30),
  ),
  FiaccolaStage(
    region: 'Piemonte',
    label: "2° Circolo Didattico,Domodossola (VCO)",
    startTime: DateTime(2022, 10, 20, 14, 30),
    lat: 46.1246419,
    long: 8.2904015,duration: const Duration(minutes: 30),
  ),

  //21 Ottobre
  FiaccolaStage(
    region: 'Emilia Romagna',
    label: "DD S-Arcangelo di Romagna (RN)",
    startTime: DateTime(2022, 10, 21, 9, 0),
    lat: 44.58280770005355,
    long: 11.09167625639718,
  ),
  FiaccolaStage(
    region: 'Calabria',
    label: "IC MONTEBELLO J.- MOTTA S.G. (RC)",
    startTime: DateTime(2022, 10, 21, 10, 0),
    lat: 37.94287550992897,
    long: 15.715917006309102,
  ),
  FiaccolaStage(
    region: 'Puglia',
    label: "ITE PASCAL (FOGGIA",
    startTime: DateTime(2022, 10, 21, 11, 0),
    lat: 41.453965560950785,
    long: 15.520253767142895,
  ),
  // FiaccolaStage(
  //   region: 'Umbria',
  //   label: "IC FOLIGNO",
  //   startTime: DateTime(2022, 10, 21, 12, 0),
  //   lat: 42.96512995300611,
  //   long: 12.69387873025986,
  // ),
  FiaccolaStage(
    region: 'Sardegna',
    label: "IANAS Tortolì (Nu)",
    startTime: DateTime(2022, 10, 21, 13, 0),
    lat: 39.93033410523201,
    long: 9.656180468456306,
  ),
  FiaccolaStage(
    region: 'Campania',
    label: "Liceo Statale \"A. Manzoni\" (CE)",
    startTime: DateTime(2022, 10, 21, 14, 0),
    lat: 41.07894061595713,
    long: 14.338680169086988,
    duration: const Duration(minutes: 30),
  ),
  FiaccolaStage(
    region: 'Molise',
    label: "IPSEOA \"Federico di Svevia\" - Termoli (CB)",
    startTime: DateTime(2022, 10, 21, 14, 30),
    lat: 42.046199722039646,
    long: 14.990433750676747,duration: const Duration(minutes: 30),
  ),
];
*/
