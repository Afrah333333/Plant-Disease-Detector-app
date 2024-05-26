class PlantDiseaseInfo {
  final String labelName;
  final String suggestions;
  final String causes;
  final String symptoms;

  PlantDiseaseInfo({
    required this.labelName,
    required this.suggestions,
    required this.causes,
    required this.symptoms,
  });
}

class PlantDiseaseInfoProvider {
  static List<PlantDiseaseInfo> diseases = [
    PlantDiseaseInfo(
      labelName: 'apple apple scab',
      suggestions: 'Apply fungicide. Remove and destroy fallen leaves to reduce disease pressure.',
      causes: 'Fungus (Venturia inaequalis)',
      symptoms: 'Olive-green to black leaf spots, often with a velvety texture.',
    ),
    PlantDiseaseInfo(
      labelName: 'apple black rot',
      suggestions: 'Prune infected parts. Apply fungicide. Ensure good air circulation.',
      causes: 'Fungus (Botryosphaeria obtusa)',
      symptoms: 'Dark, sunken lesions on fruits. Brown, rotting spots on leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'apple cedar apple rust',
      suggestions: 'Remove infected leaves. Apply fungicide during the early stages of infection.',
      causes: 'Fungus (Gymnosporangium juniperi-virginianae)',
      symptoms: 'Orange-yellow spots on leaves. Rust-colored lesions on fruits.',
    ),
    PlantDiseaseInfo(
      labelName: 'apple healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'blueberry healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'cherry including sour powdery mildew',
      suggestions: 'Apply fungicide containing sulfur or potassium bicarbonate.',
      causes: 'Fungus (Podosphaera clandestina)',
      symptoms: 'White powdery patches on leaves and fruits.',
    ),
    PlantDiseaseInfo(
      labelName: 'cherry including sour healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'corn maize cercospora leaf spot gray leaf spot',
      suggestions: 'Use resistant varieties. Apply fungicide. Rotate crops.',
      causes: 'Fungus (Cercospora zeae-maydis)',
      symptoms: 'Small, oval lesions on leaves with gray centers and dark borders.',
    ),
    PlantDiseaseInfo(
      labelName: 'corn maize common rust',
      suggestions: 'Plant resistant varieties. Apply fungicide. Remove infected plants.',
      causes: 'Fungus (Puccinia sorghi)',
      symptoms: 'Orange to reddish-brown powdery pustules on leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'corn maize northern leaf blight',
      suggestions: 'Rotate crops. Apply fungicide. Remove and destroy crop debris.',
      causes: 'Fungus (Exserohilum turcicum)',
      symptoms: 'Large, elliptical lesions with tan centers and dark borders on leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'corn maize healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'cordana',
      suggestions: 'Remove affected leaves. Apply fungicide. Prune affected areas.',
      causes: 'Fungus (Cordana musae)',
      symptoms: 'Large, irregular-shaped spots with yellow halos on leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'sigatoka',
      suggestions: 'Remove affected leaves. Apply fungicide. Ensure proper drainage.',
      causes: 'Fungus (Mycosphaerella fijiensis)',
      symptoms: 'Yellow specks on upper leaf surface with dark brown to black spots on lower surface.',
    ),
    PlantDiseaseInfo(
      labelName: 'pestalotiopsis',
      suggestions: 'Prune affected areas. Apply fungicide. Maintain good air circulation.',
      causes: 'Fungus (Pestalotiopsis spp.)',
      symptoms: 'Small, water-soaked lesions on leaves that turn tan or brown with age.',
    ),
    PlantDiseaseInfo(
      labelName: 'healthy',
      suggestions: 'Continue good plant care practices. Monitor for pests and diseases regularly.',
      causes: 'N/A',
      symptoms: 'No visible signs of disease or damage.',
    ),

    PlantDiseaseInfo(
      labelName: 'grape black rot',
      suggestions: 'Prune infected parts. Apply fungicide. Promote good air circulation.',
      causes: 'Fungus (Guignardia bidwellii)',
      symptoms: 'Brown spots on leaves and fruits with black rings.',
    ),
    PlantDiseaseInfo(
      labelName: 'grape esca black measles',
      suggestions: 'Prune infected parts. Apply fungicide. Promote good air circulation.',
      causes: 'Fungus (Phaeomoniella chlamydospora)',
      symptoms: 'Black streaks in the wood and black spots on leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'grape leaf blight isariopsis leaf spot',
      suggestions: 'Remove infected leaves. Apply fungicide. Improve air circulation.',
      causes: 'Fungus (Isariopsis viticola)',
      symptoms: 'Circular spots on leaves with gray centers and dark borders.',
    ),
    PlantDiseaseInfo(
      labelName: 'grape healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'orange haunglongbing citrus greening',
      suggestions: 'Remove infected trees. Control psyllid insects. Apply nutritional sprays.',
      causes: 'Bacterium (Candidatus Liberibacter asiaticus)',
      symptoms: 'Yellow shoots, mottled leaves, and bitter, misshapen fruits.',
    ),
    PlantDiseaseInfo(
      labelName: 'peach bacterial spot',
      suggestions: 'Prune infected parts. Apply copper-based fungicides. Promote good air circulation.',
      causes: 'Bacterium (Xanthomonas arboricola pv. pruni)',
      symptoms: 'Dark lesions with water-soaked margins on leaves and fruits.',
    ),
    PlantDiseaseInfo(
      labelName: 'peach healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'pepper bell bacterial spot',
      suggestions: 'Remove infected plants. Apply copper-based fungicides. Rotate crops.',
      causes: 'Bacterium (Xanthomonas campestris pv. vesicatoria)',
      symptoms: 'Dark, water-soaked lesions on leaves and fruits with white centers.',
    ),
    PlantDiseaseInfo(
      labelName: 'pepper bell healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'potato early blight',
      suggestions: 'Remove infected leaves. Apply fungicides. Practice crop rotation.',
      causes: 'Fungus (Alternaria solani)',
      symptoms: 'Dark brown spots with concentric rings on leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'potato late blight',
      suggestions: 'Remove infected plants. Apply fungicides. Avoid overhead irrigation.',
      causes: 'Fungus (Phytophthora infestans)',
      symptoms: 'Dark lesions on leaves that may appear water-soaked.',
    ),
    PlantDiseaseInfo(
      labelName: 'potato healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'raspberry healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'soybean healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'squash powdery mildew',
      suggestions: 'Prune affected areas. Apply fungicides. Improve air circulation.',
      causes: 'Fungus (Podosphaera xanthii)',
      symptoms: 'White powdery spots on leaves and stems.',
    ),
    PlantDiseaseInfo(
      labelName: 'strawberry leaf scorch',
      suggestions: 'Prune infected leaves. Apply fungicides. Ensure proper watering.',
      causes: 'Fungus (Diplocarpon earlianum)',
      symptoms: 'Reddish-brown spots on leaves with yellow margins.',
    ),
    PlantDiseaseInfo(
      labelName: 'strawberry healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato bacterial spot',
      suggestions: 'Remove infected leaves. Apply copper-based fungicides. Rotate crops.',
      causes: 'Bacterium (Xanthomonas campestris pv. vesicatoria)',
      symptoms: 'Dark, water-soaked spots on leaves and fruits with yellow halos.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato early blight',
      suggestions: 'Remove infected leaves. Apply fungicides. Mulch around plants.',
      causes: 'Fungus (Alternaria solani)',
      symptoms: 'Dark brown spots with concentric rings on lower leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato late blight',
      suggestions: 'Remove infected plants. Apply fungicides. Avoid overhead irrigation.',
      causes: 'Fungus (Phytophthora infestans)',
      symptoms: 'Dark lesions on leaves that may appear water-soaked.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato leaf mold',
      suggestions: 'Improve air circulation. Avoid overhead irrigation. Apply fungicides.',
      causes: 'Fungus (Fulvia fulva)',
      symptoms: 'Yellowish-gray patches on lower leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato septoria leaf spot',
      suggestions: 'Remove infected leaves. Apply fungicides. Mulch around plants.',
      causes: 'Fungus (Septoria lycopersici)',
      symptoms: 'Dark spots with white centers on lower leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato spider mites two spotted spider mite',
      suggestions: 'Use insecticidal soap or neem oil. Apply predatory mites. Keep plants well-watered.',
      causes: 'Spider mites (Tetranychus urticae)',
      symptoms: 'Fine webbing on leaves, yellowing, and stippling.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato target spot',
      suggestions: 'Remove infected leaves. Apply fungicides. Rotate crops.',
      causes: 'Fungus (Corynespora cassiicola)',
      symptoms: 'Dark lesions with concentric rings on leaves.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato yellow leaf curl virus',
      suggestions: 'Use resistant varieties. Control whiteflies. Remove infected plants.',
      causes: 'Virus (Tomato yellow leaf curl virus)',
      symptoms: 'Yellowing and upward curling of leaves, stunted growth.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato mosaic virus',
      suggestions: 'Use disease-free seeds. Control aphids. Remove infected plants.',
      causes: 'Virus (Tomato mosaic virus)',
      symptoms: 'Mottled yellow patterns on leaves, stunted growth.',
    ),
    PlantDiseaseInfo(
      labelName: 'tomato healthy',
      suggestions: 'No specific suggestions available.',
      causes: 'Healthy plant.',
      symptoms: 'No visible symptoms of disease.',
    ),
    // Add more diseases here...
  ];

  static PlantDiseaseInfo getInfoByLabel(String label) {
    print('Searching for disease info with label: $label');
    var diseaseInfo = diseases.firstWhere(
          (info) => info.labelName.trim().toLowerCase() == label.trim().toLowerCase(),
      orElse: () {
        print('No disease info found for label: $label');
        return PlantDiseaseInfo(
          labelName: label,
          suggestions: 'No specific suggestions available.',
          causes: 'Unknown',
          symptoms: 'Unknown',
        );
      },
    );
    print('Found disease info: $diseaseInfo');
    return diseaseInfo;
  }


}
