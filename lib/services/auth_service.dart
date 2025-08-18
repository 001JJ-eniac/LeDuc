import '../constant/app_constant.dart';

class AuthService{
  static bool validadeCredencials(String codigo, String senha) {
    return codigo == AppConstant.codigoCorreto && senha == AppConstant.senhaCorreta;
  }
  
  static String getNomeUsuario() {
    return AppConstant.nomeDoUsuario;
  }
}