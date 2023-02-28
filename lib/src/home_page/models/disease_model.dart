import 'package:hive/hive.dart';

part 'disease_model.g.dart';

@HiveType(typeId: 0)
class Disease extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  late String possibleCauses;

  @HiveField(2)
  late String possibleSolution;

  @HiveField(3)
  late String imagePath;

  @HiveField(4)
  late DateTime dateTime;

  Disease({required this.name, required this.imagePath}) {
    dateTime = DateTime.now();

    switch (name) {
      case "MonkeyPox":
        possibleCauses =
            "Caused by the MonkeyPox virus of the genus Orthopoxvirus. Spread by human or animal contact ";
        possibleSolution =
            "Anti-viral medication Tecovirimat along with supportive care. Contact a doctor immediately and isolate.";
        break;

      case "Actinic Keratosis":
        possibleCauses = "Actinic keratosis is a disorder of epidermal keratinocytes that is induced by ultraviolet (UV) light exposure";
        possibleSolution = "Topical medications are often recommended for areas where multiple or ill-defined AKs are present.";
        break;

      case "Basal Cell Carcinoma":
        possibleCauses =
            "The most common type of skin cancer. Often caused by sun exposure. Biopsy required for certain diagnosis. ";
        possibleSolution =
            "Contact a doctor. Treatment may include excision, chemotherapy, radiation therapy. ";
        break;

      case "Dermatofibroma":
        possibleCauses = "A benign nodule in the skin, typically on the legs, elbows and chest of an adult. It is usually painless";
        possibleSolution = "Usually no treatment is needed. It can remain unchanged for years, but can resolve spontaneously. Confirm with a doctor.";
        break;

      case "Melanoma":
        possibleCauses =
            "A type of skin cancer that develops from the pigment-producing cells known as melanocytes";
        possibleSolution =
            "Typically requires surgical removal. Contact a doctor.";
        break;

      case "Nevus":
        possibleCauses =
            "A nonspecific medical term for a visible, circumscribed, chronic lesion of the skin or mucosa. Often called a 'birthmark' but may develop after birth.";
        possibleSolution =
            "No treatment required. Confirm with a doctor.";
        break;

      case "Pigmented Benign Keratosis":
        possibleCauses =
            "A non-cancerous (benign) skin tumour that originates from cells in the outer layer of the skin and is marked by a discoloration.";
        possibleSolution =
            "No treatment required. Confirm with a doctor.";
        break;

      case "Seborrheic Keratosis":
        possibleCauses = " A non-cancerous (benign) skin tumour that originates from cells in the outer layer of the skin. Like liver spots, seborrheic keratoses are seen more often as people age";
        possibleSolution = "No treatment required. Confirm with a doctor.";
        break;

      case "Squamous Cell Carcinoma":
        possibleCauses = "Squamous cell carcinoma is the second-most common cancer of the skin. Sunlight exposure and immunosuppression are risk factors for SCC of the skin, with chronic sun exposure being the strongest environmental risk factor.";
        possibleSolution = "Surgery. Consult a doctor.";
        break;

      case "Vascular Lesion":
        possibleCauses = "Vascular lesions are relatively common abnormalities of the skin and underlying tissues, more commonly known as birthmarks";
        possibleSolution =
            "No treatment required. Confirm with a doctor.";
        break;

      case "Lyme Disease":
        possibleCauses =
            "Lyme disease, also known as Lyme borreliosis, is a vector-borne disease caused by the Borrelia bacterium, which is spread by ticks in the genus Ixodes.";
        possibleSolution =
            "Antibiotics. Seek medical help.";
        break;

      case "Acne and Rosacea":
        possibleCauses =
            "A long-term skin condition that occurs when dead skin cells and oil from the skin clog hair follicles.";
        possibleSolution =
            "Skin care regime.";
        break;

      case "Bacterial Infections":
        possibleCauses =
            "Bacterial infections are common with skin abrasions and cuts. ";
        possibleSolution =
            "Wash the affected area and treat with antibiotics. Seek medical help.";
        break;

      case "Eczema":
        possibleCauses =
            "The exact cause of the condition is often unclear. Cases may involve a combination of allergy and poor venous return";
        possibleSolution =
            "Bathing once or more a day is recommended. Moisturizing agents (emollients) may reduce eczema. Steroids may only be required when flares occur.";
        break;

      case "Vasculitis":
        possibleCauses =
            "A group of disorders that destroy blood vessels by inflammation";
        possibleSolution =
            "Treatments are generally directed toward stopping the inflammation and suppressing the immune system. Typically, corticosteroids such as prednisone are used.";
        break;

      case "Viral Infections and Warts":
        possibleCauses =
        "Warts are caused by infection with a type of human papillomavirus (HPV).";
        possibleSolution =
        "Topical removal with salicylic acid or cryotherapy ";
        break;

      case "Sebaceous Hyperplasia":
        possibleCauses =
        "The sebaceous glands become enlarged, producing flesh-colored or yellowish, shiny, often umbilicated bumps on the face and often swell with sweating ";
        possibleSolution =
        "May improve with time or can be removed with laser therapy. This may cause scarring.";
        break;

      case "Healthy":
        possibleCauses =
        "Health skin without apparent disorder.";
        possibleSolution =
        "Enjoy your lovely skin but take care of it!";
        break;


      default:
        possibleCauses = "N/A";
        possibleSolution = "N/A";
        break;
    }
  }
}
