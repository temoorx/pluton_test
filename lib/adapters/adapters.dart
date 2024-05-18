import 'package:hive/hive.dart';
import 'package:pluton_test/features/recipe/models/recipe_detail_dto.dart';

class RecipeDetailsAdapter extends TypeAdapter<RecipeDetails> {
  @override
  final int typeId = 0;

  @override
  RecipeDetails read(BinaryReader reader) {
    return RecipeDetails(
      id: reader.read(),
      title: reader.read(),
      image: reader.read(),
      readyInMinutes: reader.read(),
      servings: reader.read(),
      summary: reader.read(),
      instructions: reader.read(),
      sourceUrl: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, RecipeDetails obj) {
    writer.write(obj.id);
    writer.write(obj.title);
    writer.write(obj.image);
    writer.write(obj.readyInMinutes);
    writer.write(obj.servings);
    writer.write(obj.summary);
    writer.write(obj.instructions);
    writer.write(obj.sourceUrl);
  }
}
