abstract class UseCaseBase<Type, Parms> {
  Future<Type> call(Parms params);
}
