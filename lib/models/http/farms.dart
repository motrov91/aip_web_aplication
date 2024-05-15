class Farm {
// you can also use id = null to auto increment

  int? id_farm;
  String? imgBeneficiario;
  String? firstName;
  String? secondName;
  String? firstSurname;
  String? secondSurname;
  String? nitProducer;
  String? expedition;
  String? birthdate;
  String? ethnicity;
  String? celphone1;
  String? celphone2;
  String? email;
  String? gender;
  String? scholarLevel;
  String? organization;
  String? maritalStatus;
  String? fullnameSpouse;
  String? nitSpouse;
  String? expeditionSpouse;
  String? dateSpouse;
  String? celphoneSpouse;
  String? emailSpouse;
  String? nameFarm;
  String? municipality;
  String? corregimiento;
  String? vereda;
  String? possession;
  String? totalExtension;
  String? cropsArea;
  String? freeArea;
  String? conservationArea;
  String? currentProjects;
  String? agrochemical;
  String? bestPractices;
  String? otherAreas;
  String? afluentes;
  String? vocationAndLandUse;
  String? productiveLine;
  String? certificationType;
  String? purlieuNorth;
  String? purlieuSouth;
  String? purlieuEast;
  String? purlieuWest;
  String? altura;
  String? latitudeLongitude;
  String? anosPropiedad;
  String? productiveLine1;
  String? productiveLine2;
  String? productiveLine3;
  String? knowProductiveLine1;
  String? knowProductiveLine2;
  String? knowPeoductiveLine3;
  String? comercializationType;
  String? biopreparadosProduction;
  String? waterAvailable;
  String? accessRoads;
  String? electricityAvailability;
  String? comunicationAvailable;
  String? projectParticipation;
  String? cropTools;
  String? firstAidKit;
  String? fumigateKit;
  String? irrigationSystem;
  String? machines;
  String? participateInProyects;
  String? workingCapital;
  String? implementationTecnologyLevel;
  String? productLine1;
  String? variety1;
  String? cantPlants1;
  String? ageCrop1;
  String? stageCrop1;
  String? cantKgProducedByYear1;
  String? cropStatus1;
  String? aproxArea1;
  String? coordenates1;
  String? useType;
  String? promKgComercializateValue;
  String? productLine2;
  String? variety2;
  String? cantPlants2;
  String? ageCrop2;
  String? stageCrop2;
  String? cantKgProducedByYear2;
  String? cropStatus2;
  String? aproxArea2;
  String? coordenates2;
  String? useType2;
  String? promKgComercializateValu2;
  String? productLine3;
  String? variety3;
  String? cantPlants3;
  String? ageCrop3;
  String? stageCrop3;
  String? cantKgProducedByYear3;
  String? cropStatus3;
  String? aproxArea3;
  String? coordenates3;
  String? useType3;
  String? promKgComercializateValu3;
  int? projectId;
  String? productLine4Pecuaria;
  String? breed;
  String? cantAnimals;
  String? numberPlaces;
  String? ageAverageAnimals;
  String? ageCrop4;
  String? cantKgProducedByYear4;
  String? cropStatus4;
  String? aproxArea4;
  String? coordenates4;
  String? nutritionType;
  String? promKgComercializateValu4;
  String? productLine5Pecuaria;
  String? breed5;
  String? cantAnimals5;
  String? numberPlaces5;
  String? ageAverageAnimals5;
  String? ageCrop5;
  String? cantKgProducedByYear5;
  String? cropStatus5;
  String? aproxArea5;
  String? coordenates5;
  String? nutritionType5;
  String? promKgComercializateValu5;
  String? productiveLine4;
  String? productiveLine5;
  String? imgSignature;
  String? creationDate;
  int? userId;
  String? comments;
  String? plantsDistance1;
  String? groovesDistance1;
  String? plantsDistance2;
  String? groovesDistance2;
  String? plantsDistance3;
  String? groovesDistance3;
  String? knowProductiveLine4;
  String? knowProductiveLine5;
  String? cantKgByYearLote4;
  String? priceKgSoldLote4;
  String? cantKgByYearLote5;
  String? priceKgSoldLote5;
  String? timeCreation;
  String? typeofanimal;
  String? typeofanimal5;

  Farm({
    this.id_farm,
    this.imgBeneficiario,
    this.firstName,
    this.secondName,
    this.firstSurname,
    this.secondSurname,
    this.nitProducer,
    this.expedition,
    this.birthdate,
    this.ethnicity,
    this.celphone1,
    this.celphone2,
    this.email,
    this.gender,
    this.scholarLevel,
    this.organization,
    this.maritalStatus,
    this.fullnameSpouse,
    this.nitSpouse,
    this.expeditionSpouse,
    this.dateSpouse,
    this.celphoneSpouse,
    this.emailSpouse,
    this.nameFarm,
    this.municipality,
    this.corregimiento,
    this.vereda,
    this.possession,
    this.totalExtension,
    this.cropsArea,
    this.freeArea,
    this.conservationArea,
    this.currentProjects,
    this.agrochemical,
    this.bestPractices,
    this.otherAreas,
    this.afluentes,
    this.vocationAndLandUse,
    this.productiveLine,
    this.certificationType,
    this.purlieuNorth,
    this.purlieuSouth,
    this.purlieuEast,
    this.purlieuWest,
    this.altura,
    this.latitudeLongitude,
    this.anosPropiedad,
    this.productiveLine1,
    this.productiveLine2,
    this.productiveLine3,
    this.knowProductiveLine1,
    this.knowProductiveLine2,
    this.knowPeoductiveLine3,
    this.comercializationType,
    this.biopreparadosProduction,
    this.waterAvailable,
    this.accessRoads,
    this.electricityAvailability,
    this.comunicationAvailable,
    this.projectParticipation,
    this.cropTools,
    this.firstAidKit,
    this.fumigateKit,
    this.irrigationSystem,
    this.machines,
    this.participateInProyects,
    this.workingCapital,
    this.implementationTecnologyLevel,
    this.productLine1,
    this.variety1,
    this.cantPlants1,
    this.ageCrop1,
    this.stageCrop1,
    this.cantKgProducedByYear1,
    this.cropStatus1,
    this.aproxArea1,
    this.coordenates1,
    this.useType,
    this.promKgComercializateValue,
    this.productLine2,
    this.variety2,
    this.cantPlants2,
    this.ageCrop2,
    this.stageCrop2,
    this.cantKgProducedByYear2,
    this.cropStatus2,
    this.aproxArea2,
    this.coordenates2,
    this.useType2,
    this.promKgComercializateValu2,
    this.productLine3,
    this.variety3,
    this.cantPlants3,
    this.ageCrop3,
    this.stageCrop3,
    this.cantKgProducedByYear3,
    this.cropStatus3,
    this.aproxArea3,
    this.coordenates3,
    this.useType3,
    this.promKgComercializateValu3,
    this.projectId,
    this.productLine4Pecuaria,
    this.breed,
    this.cantAnimals,
    this.numberPlaces,
    this.ageAverageAnimals,
    this.ageCrop4,
    this.cantKgProducedByYear4,
    this.cropStatus4,
    this.aproxArea4,
    this.coordenates4,
    this.nutritionType,
    this.promKgComercializateValu4,
    this.productLine5Pecuaria,
    this.breed5,
    this.cantAnimals5,
    this.numberPlaces5,
    this.ageAverageAnimals5,
    this.ageCrop5,
    this.cantKgProducedByYear5,
    this.cropStatus5,
    this.aproxArea5,
    this.coordenates5,
    this.nutritionType5,
    this.promKgComercializateValu5,
    this.productiveLine4,
    this.productiveLine5,
    this.imgSignature,
    this.creationDate,
    this.userId,
    this.comments,
    this.plantsDistance1,
    this.groovesDistance1,
    this.plantsDistance2,
    this.groovesDistance2,
    this.plantsDistance3,
    this.groovesDistance3,
    this.knowProductiveLine4,
    this.knowProductiveLine5,
    this.cantKgByYearLote4,
    this.priceKgSoldLote4,
    this.cantKgByYearLote5,
    this.priceKgSoldLote5,
    this.timeCreation,
    this.typeofanimal,
    this.typeofanimal5,
  });

  Map<String, dynamic> toMap() {
    return {
      "id_farm": id_farm,
      "imgBeneficiario": imgBeneficiario,
      "firstName": firstName,
      "secondName": secondName,
      "firstSurname": firstSurname,
      "secondSurname": secondSurname,
      "nitProducer": nitProducer,
      "expedition": expedition,
      "birthdate": birthdate,
      "ethnicity": ethnicity,
      "celphone1": celphone1,
      "celphone2": celphone2,
      "email": email,
      "gender": gender,
      "scholarLevel": scholarLevel,
      "organization": organization,
      "maritalStatus": maritalStatus,
      "fullnameSpouse": fullnameSpouse,
      "nitSpouse": nitSpouse,
      "expeditionSpouse": expeditionSpouse,
      "dateSpouse": dateSpouse,
      "celphoneSpouse": celphoneSpouse,
      "emailSpouse": emailSpouse,
      "nameFarm": nameFarm,
      "municipality": municipality,
      "corregimiento": corregimiento,
      "vereda": vereda,
      "possession": possession,
      "totalExtension": totalExtension,
      "cropsArea": cropsArea,
      "freeArea": freeArea,
      "conservationArea": conservationArea,
      "currentProjects": currentProjects,
      "agrochemical": agrochemical,
      "bestPractices": bestPractices,
      "otherAreas": otherAreas,
      "afluentes": afluentes,
      "vocationAndLandUse": vocationAndLandUse,
      "productiveLine": productiveLine,
      "certificationType": certificationType,
      "purlieuNorth": purlieuNorth,
      "purlieuSouth": purlieuSouth,
      "purlieuEast": purlieuEast,
      "purlieuWest": purlieuWest,
      "altura": altura,
      "latitudeLongitude": latitudeLongitude,
      "anosPropiedad": anosPropiedad,
      "productiveLine1": productiveLine1,
      "productiveLine2": productiveLine2,
      "productiveLine3": productiveLine3,
      "knowProductiveLine1": knowProductiveLine1,
      "knowProductiveLine2": knowProductiveLine2,
      "knowPeoductiveLine3": knowPeoductiveLine3,
      "comercializationType": comercializationType,
      "biopreparadosProduction": biopreparadosProduction,
      "waterAvailable": waterAvailable,
      "accessRoads": accessRoads,
      "electricityAvailability": electricityAvailability,
      "comunicationAvailable": comunicationAvailable,
      "projectParticipation": projectParticipation,
      "cropTools": cropTools,
      "firstAidKit": firstAidKit,
      "fumigateKit": fumigateKit,
      "irrigationSystem": irrigationSystem,
      "machines": machines,
      "participateInProyects": participateInProyects,
      "workingCapital": workingCapital,
      "implementationTecnologyLevel": implementationTecnologyLevel,
      "productLine1": productLine1,
      "variety1": variety1,
      "cantPlants1": cantPlants1,
      "ageCrop1": ageCrop1,
      "stageCrop1": stageCrop1,
      "cantKgProducedByYear1": cantKgProducedByYear1,
      "cropStatus1": cropStatus1,
      "aproxArea1": aproxArea1,
      "coordenates1": coordenates1,
      "useType": useType,
      "promKgComercializateValue": promKgComercializateValue,
      "productLine2": productLine2,
      "variety2": variety2,
      "cantPlants2": cantPlants2,
      "ageCrop2": ageCrop2,
      "stageCrop2": stageCrop2,
      "cantKgProducedByYear2": cantKgProducedByYear2,
      "cropStatus2": cropStatus2,
      "aproxArea2": aproxArea2,
      "coordenates2": coordenates2,
      "useType2": useType2,
      "promKgComercializateValu2": promKgComercializateValu2,
      "productLine3": productLine3,
      "variety3": variety3,
      "cantPlants3": cantPlants3,
      "ageCrop3": ageCrop3,
      "stageCrop3": stageCrop3,
      "cantKgProducedByYear3": cantKgProducedByYear3,
      "cropStatus3": cropStatus3,
      "aproxArea3": aproxArea3,
      "coordenates3": coordenates3,
      "useType3": useType3,
      "promKgComercializateValu3": promKgComercializateValu3,
      "projectId": projectId,
      "productLine4Pecuaria": productLine4Pecuaria,
      "breed": breed,
      "cantAnimals": cantAnimals,
      "numberPlaces": numberPlaces,
      "ageAverageAnimals": ageAverageAnimals,
      "ageCrop4": ageCrop4,
      "cantKgProducedByYear4": cantKgProducedByYear4,
      "cropStatus4": cropStatus4,
      "aproxArea4": aproxArea4,
      "coordenates4": coordenates4,
      "nutritionType": nutritionType,
      "promKgComercializateValu4": promKgComercializateValu4,
      "productLine5Pecuaria": productLine5Pecuaria,
      "breed5": breed5,
      "cantAnimals5": cantAnimals5,
      "numberPlaces5": numberPlaces5,
      "ageAverageAnimals5": ageAverageAnimals5,
      "ageCrop5": ageCrop5,
      "cantKgProducedByYear5": cantKgProducedByYear5,
      "cropStatus5": cropStatus5,
      "aproxArea5": aproxArea5,
      "coordenates5": coordenates5,
      "nutritionType5": nutritionType5,
      "promKgComercializateValu5": promKgComercializateValu5,
      "productiveLine4": productiveLine4,
      "productiveLine5": productiveLine5,
      "imgSignature": imgSignature,
      "creationDate": creationDate,
      "userId": userId,
      "comments": comments,
      "plantsDistance1": plantsDistance1,
      "groovesDistance1": groovesDistance1,
      "plantsDistance2": plantsDistance2,
      "groovesDistance2": groovesDistance2,
      "plantsDistance3": plantsDistance3,
      "groovesDistance3": groovesDistance3,
      "knowProductiveLine4": knowProductiveLine4,
      "knowProductiveLine5": knowProductiveLine5,
      "cantKgByYearLote4": cantKgByYearLote4,
      "priceKgSoldLote4": priceKgSoldLote4,
      "cantKgByYearLote5": cantKgByYearLote5,
      "priceKgSoldLote5": priceKgSoldLote5,
      "timeCreation": timeCreation,
      "typeofanimal": typeofanimal,
      "typeofanimal5": typeofanimal5,
    };
  }

  @override
  String toString() {
    return 'Farm { id_farm : $id_farm, imgBeneficiario : $imgBeneficiario, firstName : $firstName, secondName : $secondName, firstSurname : $firstSurname, secondSurname : $secondSurname, nitProducer : $nitProducer, expedition : $expedition, birthdate : $birthdate, ethnicity : $ethnicity, celphone1 : $celphone1, celphone2 : $celphone2, email : $email, gender : $gender, scholarLevel : $scholarLevel, organization : $organization, maritalStatus : $maritalStatus, fullnameSpouse : $fullnameSpouse, nitSpouse : $nitSpouse, expeditionSpouse : $expeditionSpouse, dateSpouse : $dateSpouse, celphoneSpouse : $celphoneSpouse, emailSpouse : $emailSpouse, nameFarm : $nameFarm, municipality : $municipality, corregimiento : $corregimiento, vereda : $vereda, possession : $possession, totalExtension : $totalExtension, cropsArea : $cropsArea, freeArea : $freeArea, conservationArea : $conservationArea, currentProjects : $currentProjects, agrochemical : $agrochemical, bestPractices : $bestPractices, otherAreas : $otherAreas, afluentes : $afluentes, vocationAndLandUse : $vocationAndLandUse, productiveLine : $productiveLine, certificationType : $certificationType, purlieuNorth : $purlieuNorth, purlieuSouth : $purlieuSouth, purlieuEast : $purlieuEast, purlieuWest : $purlieuWest, altura : $altura, latitudeLongitude : $latitudeLongitude, anosPropiedad : $anosPropiedad, productiveLine1 : $productiveLine1, productiveLine2 : $productiveLine2, productiveLine3 : $productiveLine3, knowProductiveLine1 : $knowProductiveLine1, knowProductiveLine2 : $knowProductiveLine2, knowPeoductiveLine3 : $knowPeoductiveLine3, comercializationType : $comercializationType, biopreparadosProduction : $biopreparadosProduction, waterAvailable : $waterAvailable, accessRoads : $accessRoads, electricityAvailability : $electricityAvailability, comunicationAvailable : $comunicationAvailable, projectParticipation : $projectParticipation, cropTools : $cropTools, firstAidKit : $firstAidKit, fumigateKit : $fumigateKit, irrigationSystem : $irrigationSystem, machines : $machines, participateInProyects : $participateInProyects, workingCapital : $workingCapital, implementationTecnologyLevel : $implementationTecnologyLevel, productLine1 : $productLine1, variety1 : $variety1, cantPlants1 : $cantPlants1, ageCrop1 : $ageCrop1, stageCrop1 : $stageCrop1, cantKgProducedByYear1 : $cantKgProducedByYear1, cropStatus1 : $cropStatus1, aproxArea1 : $aproxArea1, coordenates1 : $coordenates1, useType : $useType, promKgComercializateValue : $promKgComercializateValue, productLine2 : $productLine2, variety2 : $variety2, cantPlants2 : $cantPlants2, ageCrop2 : $ageCrop2, stageCrop2 : $stageCrop2, cantKgProducedByYear2 : $cantKgProducedByYear2, cropStatus2 : $cropStatus2, aproxArea2 : $aproxArea2, coordenates2 : $coordenates2, useType2 : $useType2, promKgComercializateValu2 : $promKgComercializateValu2, productLine3 : $productLine3, variety3 : $variety3, cantPlants3 : $cantPlants3, ageCrop3 : $ageCrop3, stageCrop3 : $stageCrop3, cantKgProducedByYear3 : $cantKgProducedByYear3, cropStatus3 : $cropStatus3, aproxArea3 : $aproxArea3, coordenates3 : $coordenates3, useType3 : $useType3, promKgComercializateValu3 : $promKgComercializateValu3, projectId : $projectId, productLine4Pecuaria : $productLine4Pecuaria, breed : $breed, cantAnimals : $cantAnimals, numberPlaces : $numberPlaces, ageAverageAnimals : $ageAverageAnimals, ageCrop4 : $ageCrop4, cantKgProducedByYear4 : $cantKgProducedByYear4, cropStatus4 : $cropStatus4, aproxArea4 : $aproxArea4, coordenates4 : $coordenates4, nutritionType : $nutritionType, promKgComercializateValu4 : $promKgComercializateValu4, productLine5Pecuaria : $productLine5Pecuaria, breed5 : $breed5, cantAnimals5 : $cantAnimals5, numberPlaces5 : $numberPlaces5, ageAverageAnimals5 : $ageAverageAnimals5, ageCrop5 : $ageCrop5, cantKgProducedByYear5 : $cantKgProducedByYear5, cropStatus5 : $cropStatus5, aproxArea5 : $aproxArea5, coordenates5 : $coordenates5, nutritionType5 : $nutritionType5, promKgComercializateValu5 : $promKgComercializateValu5, productiveLine4 : $productiveLine4, productiveLine5 : $productiveLine5, imgSignature : $imgSignature, creationDate : $creationDate, userId : $userId, comments : $comments, plantsDistance1 : $plantsDistance1, groovesDistance1 : $groovesDistance1, plantsDistance2 : $plantsDistance2, groovesDistance2 : $groovesDistance2, plantsDistance3 : $plantsDistance3, groovesDistance3 : $groovesDistance3, knowProductiveLine4 : $knowProductiveLine4, knowProductiveLine5 : $knowProductiveLine5, cantKgByYearLote4 : $cantKgByYearLote4, priceKgSoldLote4 : $priceKgSoldLote4, cantKgByYearLote5 : $cantKgByYearLote5, priceKgSoldLote5 : $priceKgSoldLote5, timeCreation : $timeCreation, typeofanimal : $typeofanimal, typeofanimal5 : $typeofanimal5 }';
  }

  factory Farm.fromJson(Map<String, dynamic> json) => Farm(
        id_farm: json["id_farm"],
        imgBeneficiario: json["img_beneficiario"],
        firstName: json["firstName"],
        secondName: json["secondName"],
        firstSurname: json["firstSurname"],
        secondSurname: json["secondSurname"],
        nitProducer: json["nitProducer"],
        expedition: json["expedition"],
        birthdate: json["birthdate"],
        ethnicity: json["ethnicity"],
        celphone1: json["celphone1"],
        celphone2: json["celphone2"],
        email: json["email"],
        gender: json["gender"],
        scholarLevel: json["scholarLevel"],
        organization: json["organization"],
        maritalStatus: json["maritalStatus"],
        fullnameSpouse: json["fullnameSpouse"],
        nitSpouse: json["nitSpouse"],
        expeditionSpouse: json["expeditionSpouse"],
        dateSpouse: json["dateSpouse"],
        celphoneSpouse: json["celphoneSpouse"],
        emailSpouse: json["emailSpouse"],
        nameFarm: json["nameFarm"],
        municipality: json["municipality"],
        corregimiento: json["corregimiento"],
        vereda: json["vereda"],
        possession: json["possession"],
        totalExtension: json["totalExtension"],
        cropsArea: json["cropsArea"],
        freeArea: json["freeArea"],
        conservationArea: json["conservationArea"],
        currentProjects: json["currentProjects"],
        agrochemical: json["agrochemical"],
        bestPractices: json["bestPractices"],
        otherAreas: json["otherAreas"],
        afluentes: json["afluentes"],
        vocationAndLandUse: json["vocationAndLandUse"],
        productiveLine: json["productiveLine"],
        certificationType: json["certificationType"],
        purlieuNorth: json["purlieuNorth"],
        purlieuSouth: json["purlieuSouth"],
        purlieuEast: json["purlieuEast"],
        purlieuWest: json["purlieuWest"],
        altura: json["altura"],
        latitudeLongitude: json["latitudeLongitude"],
        anosPropiedad: json["anosPropiedad"],
        productiveLine1: json["productiveLine1"],
        productiveLine2: json["productiveLine2"],
        productiveLine3: json["productiveLine3"],
        knowProductiveLine1: json["knowProductiveLine1"],
        knowProductiveLine2: json["knowProductiveLine2"],
        knowPeoductiveLine3: json["knowPeoductiveLine3"],
        comercializationType: json["comercializationType"],
        biopreparadosProduction: json["biopreparadosProduction"],
        waterAvailable: json["waterAvailable"],
        accessRoads: json["accessRoads"],
        electricityAvailability: json["electricityAvailability"],
        comunicationAvailable: json["ComunicationAvailable"],
        projectParticipation: json["projectParticipation"],
        cropTools: json["cropTools"],
        firstAidKit: json["firstAidKit"],
        fumigateKit: json["fumigateKit"],
        irrigationSystem: json["irrigationSystem"],
        machines: json["machines"],
        participateInProyects: json["ParticipateInProyects"],
        workingCapital: json["workingCapital"],
        implementationTecnologyLevel: json["implementationTecnologyLevel"],
        productLine1: json["productLine1"],
        variety1: json["variety1"],
        cantPlants1: json["cantPlants1"],
        ageCrop1: json["ageCrop1"],
        stageCrop1: json["stageCrop1"],
        cantKgProducedByYear1: json["cantKgProducedByYear1"],
        cropStatus1: json["cropStatus1"],
        aproxArea1: json["aproxArea1"],
        coordenates1: json["coordenates1"],
        useType: json["useType"],
        promKgComercializateValue: json["promKgComercializateValue"],
        productLine2: json["productLine2"],
        variety2: json["variety2"],
        cantPlants2: json["cantPlants2"],
        ageCrop2: json["ageCrop2"],
        stageCrop2: json["stageCrop2"],
        cantKgProducedByYear2: json["cantKgProducedByYear2"],
        cropStatus2: json["cropStatus2"],
        aproxArea2: json["aproxArea2"],
        coordenates2: json["coordenates2"],
        useType2: json["useType2"],
        promKgComercializateValu2: json["promKgComercializateValu2"],
        productLine3: json["productLine3"],
        variety3: json["variety3"],
        cantPlants3: json["cantPlants3"],
        ageCrop3: json["ageCrop3"],
        stageCrop3: json["stageCrop3"],
        cantKgProducedByYear3: json["cantKgProducedByYear3"],
        cropStatus3: json["cropStatus3"],
        aproxArea3: json["aproxArea3"],
        coordenates3: json["coordenates3"],
        useType3: json["useType3"],
        promKgComercializateValu3: json["promKgComercializateValu3"],
        projectId: json["projectId"],
        productLine4Pecuaria: json["productLine4Pecuaria"],
        breed: json["breed"],
        cantAnimals: json["cantAnimals"],
        numberPlaces: json["numberPlaces"],
        ageAverageAnimals: json["ageAverageAnimals"],
        ageCrop4: json["ageCrop4"],
        cantKgProducedByYear4: json["cantKgProducedByYear4"],
        cropStatus4: json["cropStatus4"],
        aproxArea4: json["aproxArea4"],
        coordenates4: json["coordenates4"],
        nutritionType: json["nutritionType"],
        promKgComercializateValu4: json["promKgComercializateValu4"],
        productLine5Pecuaria: json["productLine5Pecuaria"],
        breed5: json["breed5"],
        cantAnimals5: json["cantAnimals5"],
        numberPlaces5: json["numberPlaces5"],
        ageAverageAnimals5: json["ageAverageAnimals5"],
        ageCrop5: json["ageCrop5"],
        cantKgProducedByYear5: json["cantKgProducedByYear5"],
        cropStatus5: json["cropStatus5"],
        aproxArea5: json["aproxArea5"],
        coordenates5: json["coordenates5"],
        nutritionType5: json["nutritionType5"],
        promKgComercializateValu5: json["promKgComercializateValu5"],
        productiveLine4: json["productiveLine4"],
        productiveLine5: json["productiveLine5"],
        imgSignature: json["imgSignature"],
        creationDate: json["creationDate"],
        userId: json["userId"],
        comments: json["comments"],
        plantsDistance1: json["plantsDistance1"],
        groovesDistance1: json["groovesDistance1"],
        plantsDistance2: json["plantsDistance2"],
        groovesDistance2: json["groovesDistance2"],
        plantsDistance3: json["plantsDistance3"],
        groovesDistance3: json["groovesDistance3"],
        knowProductiveLine4: json["knowProductiveLine4"],
        knowProductiveLine5: json["knowProductiveLine5"],
        cantKgByYearLote4: json["cant_kg_by_year_lote4"],
        priceKgSoldLote4: json["price_kg_sold_lote4"],
        cantKgByYearLote5: json["cant_kg_by_year_lote5"],
        priceKgSoldLote5: json["price_kg_sold_lote5"],
        typeofanimal: json["typeofanimal"],
        typeofanimal5: json["typeofanimal5"],
      );

  static Future<List<Farm>> farmJsonToEntity(Map<String, dynamic> json) async {
    List<Farm> farmListCharacterization = [];

    await json["resultado"].forEach((item) {
      final itemFarm = Farm(
        id_farm: item['id_farm'],
        imgBeneficiario: item['img_beneficiario'],
        firstName: item['firstName'],
        secondName: item['secondName'],
        firstSurname: item['firstSurname'],
        secondSurname: item['secondSurname'],
        nitProducer: item['nitProducer'],
        expedition: item['expedition'],
        birthdate: item['birthdate'],
        ethnicity: item['ethnicity'],
        celphone1: item['celphone1'],
        celphone2: item['celphone2'],
        email: item['email'],
        gender: item['gender'],
        scholarLevel: item['scholarLevel'],
        organization: item['organization'],
        maritalStatus: item['maritalStatus'],
        fullnameSpouse: item['fullnameSpouse'],
        nitSpouse: item['nitSpouse'],
        expeditionSpouse: item['expeditionSpouse'],
        dateSpouse: item['dateSpouse'],
        celphoneSpouse: item['celphoneSpouse'],
        emailSpouse: item['emailSpouse'],
        nameFarm: item['nameFarm'],
        municipality: item['municipality'],
        corregimiento: item['corregimiento'],
        vereda: item['vereda'],
        possession: item['possession'],
        totalExtension: item['totalExtension'],
        cropsArea: item['cropsArea'],
        freeArea: item['freeArea'],
        conservationArea: item['conservationArea'],
        currentProjects: item['currentProjects'],
        agrochemical: item['agrochemical'],
        bestPractices: item['bestPractices'],
        otherAreas: item['otherAreas'],
        afluentes: item['afluentes'],
        vocationAndLandUse: item['vocationAndLandUse'],
        productiveLine: item['productiveLine'],
        certificationType: item['certificationType'],
        purlieuNorth: item['purlieuNorth'],
        purlieuSouth: item['purlieuSouth'],
        purlieuEast: item['purlieuEast'],
        purlieuWest: item['purlieuWest'],
        altura: item['altura'],
        latitudeLongitude: item['latitudeLongitude'],
        anosPropiedad: item['anosPropiedad'],
        productiveLine1: item['productiveLine1'],
        productiveLine2: item['productiveLine2'],
        productiveLine3: item['productiveLine3'],
        knowProductiveLine1: item['knowProductiveLine1'],
        knowProductiveLine2: item['knowProductiveLine2'],
        knowPeoductiveLine3: item['knowPeoductiveLine3'],
        comercializationType: item['comercializationType'],
        biopreparadosProduction: item['biopreparadosProduction'],
        waterAvailable: item['waterAvailable'],
        accessRoads: item['accessRoads'],
        electricityAvailability: item['electricityAvailability'],
        comunicationAvailable: item['ComunicationAvailable'],
        projectParticipation: item['projectParticipation'],
        cropTools: item['cropTools'],
        firstAidKit: item['firstAidKit'],
        fumigateKit: item['fumigateKit'],
        irrigationSystem: item['irrigationSystem'],
        machines: item['machines'],
        participateInProyects: item['ParticipateInProyects'],
        workingCapital: item['workingCapital'],
        implementationTecnologyLevel: item['implementationTecnologyLevel'],
        productLine1: item['productLine1'],
        variety1: item['variety1'],
        cantPlants1: item['cantPlants1'],
        ageCrop1: item['ageCrop1'],
        stageCrop1: item['stageCrop1'],
        cantKgProducedByYear1: item['cantKgProducedByYear1'],
        cropStatus1: item['cropStatus1'],
        aproxArea1: item['aproxArea1'],
        coordenates1: item['coordenates1'],
        useType: item['useType'],
        promKgComercializateValue: item['promKgComercializateValue'],
        productLine2: item['productLine2'],
        variety2: item['variety2'],
        cantPlants2: item['cantPlants2'],
        ageCrop2: item['ageCrop2'],
        stageCrop2: item['stageCrop2'],
        cantKgProducedByYear2: item['cantKgProducedByYear2'],
        cropStatus2: item['cropStatus2'],
        aproxArea2: item['aproxArea2'],
        coordenates2: item['coordenates2'],
        useType2: item['useType2'],
        promKgComercializateValu2: item['promKgComercializateValu2'],
        productLine3: item['productLine3'],
        variety3: item['variety3'],
        cantPlants3: item['cantPlants3'],
        ageCrop3: item['ageCrop3'],
        stageCrop3: item['stageCrop3'],
        cantKgProducedByYear3: item['cantKgProducedByYear3'],
        cropStatus3: item['cropStatus3'],
        aproxArea3: item['aproxArea3'],
        coordenates3: item['coordenates3'],
        useType3: item['useType3'],
        promKgComercializateValu3: item['promKgComercializateValu3'],
        projectId: item['projectId'],
        productLine4Pecuaria: item['productLine4Pecuaria'],
        breed: item['breed'],
        cantAnimals: item['cantAnimals'],
        numberPlaces: item['numberPlaces'],
        ageAverageAnimals: item['ageAverageAnimals'],
        ageCrop4: item['ageCrop4'],
        cantKgProducedByYear4: item['cantKgProducedByYear4'],
        cropStatus4: item['cropStatus4'],
        aproxArea4: item['aproxArea4'],
        coordenates4: item['coordenates4'],
        nutritionType: item['nutritionType'],
        promKgComercializateValu4: item['promKgComercializateValu4'],
        productLine5Pecuaria: item['productLine5Pecuaria'],
        breed5: item['breed5'],
        cantAnimals5: item['cantAnimals5'],
        numberPlaces5: item['numberPlaces5'],
        ageAverageAnimals5: item['ageAverageAnimals5'],
        ageCrop5: item['ageCrop5'],
        cantKgProducedByYear5: item['cantKgProducedByYear5'],
        cropStatus5: item['cropStatus5'],
        aproxArea5: item['aproxArea5'],
        coordenates5: item['coordenates5'],
        nutritionType5: item['nutritionType5'],
        promKgComercializateValu5: item['promKgComercializateValu5'],
        productiveLine4: item['productiveLine4'],
        productiveLine5: item['productiveLine5'],
        imgSignature: item['imgSignature'],
        creationDate: item['creationDate'],
        userId: item['userId'],
        comments: item['comments'],
        plantsDistance1: item['plantsDistance1'],
        groovesDistance1: item['groovesDistance1'],
        plantsDistance2: item['plantsDistance2'],
        groovesDistance2: item['groovesDistance2'],
        plantsDistance3: item['plantsDistance3'],
        groovesDistance3: item['groovesDistance3'],
        knowProductiveLine4: item['knowProductiveLine4'],
        knowProductiveLine5: item['knowProductiveLine5'],
        cantKgByYearLote4: item['cantKgByYearLote4'],
        priceKgSoldLote4: item['priceKgSoldLote4'],
        cantKgByYearLote5: item['cantKgByYearLote5'],
        priceKgSoldLote5: item['priceKgSoldLote5'],
        timeCreation: item['time_creation'],
        typeofanimal: item['typeofanimal'],
        typeofanimal5: item['typeofanimal5'],
      );

      farmListCharacterization.add(itemFarm);
    });

    return farmListCharacterization;
  }
}
