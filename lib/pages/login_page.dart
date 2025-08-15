import 'package:flutter/material.dart';
import '../constant/app_constant.dart';
import '../style/app_styles.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/clickable_text.dart';
import '../services/auth_service.dart';
import '../InicioProf.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _codigoController;
  late final TextEditingController _senhaController;

  @override
  void initState() {
    super.initState();
    _codigoController = TextEditingController();
    _senhaController = TextEditingController();
  }

  @override
  void dispose() {
    _codigoController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    final String codigo = _codigoController.text.trim();
    final String senha = _senhaController.text.trim();

    if (AuthService.validadeCredencials(codigo, senha)) {
      _navigateToHome();
    } else {
      _showErrorDialog();
    }
  }

  void _navigateToHome() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InicioProf(
          userName: AuthService.getNomeUsuario(),
        ),
      ),
    );
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(AppConstant.loginErrorTitle),
        content: const Text(AppConstant.loginErrorContent),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(AppConstant.okButtonLabel),
          ),
        ],
      ),
    );
  }

  void _handleCodigoLinkTap() {
    // TODO: Implementar navegação para descobrir código
    debugPrint('Link "aqui" do código foi tocado!');
  }

  void _handleEsqueceuSenha() {
    // TODO: Implementar recuperação de senha
    debugPrint('Link "Esqueceu a senha?" foi tocado!');
  }

  void _handleOrganizacaoLinkTap() {
    // TODO: Implementar navegação para página da organização
    debugPrint('Link "aqui" da organização foi tocado!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          _buildMainContent(),
          _buildBackButton(),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppStyles.defaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppStyles.topSpacing),
            _buildCodigoField(),
            const SizedBox(height: AppStyles.mediumSpacing),
            _buildSenhaField(),
            const SizedBox(height: AppStyles.largeSpacing),
            _buildLoginButton(),
            const SizedBox(height: AppStyles.largeSpacing),
            _buildOrganizacaoInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildCodigoField() {
    return CustomTextField(
      label: AppConstant.codVerificadorLabel,
      placeholder: AppConstant.codigoPlaceholder,
      controller: _codigoController,
      helperWidget: ClickableText(
        normalText: AppConstant.descobrirCodigoText,
        linkText: AppConstant.descobrirCodigoUrl,
        onLinkTap: _handleCodigoLinkTap,
      ),
    );
  }

  Widget _buildSenhaField() {
    return CustomTextField(
      label: AppConstant.senhaLabel,
      placeholder: AppConstant.senhaPlaceholder,
      controller: _senhaController,
      obscureText: true,
      helperWidget: GestureDetector(
        onTap: _handleEsqueceuSenha,
        child: const Text(
          AppConstant.esqueceuSenha,
          style: AppStyles.linkStyle,
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: AppStyles.buttonWidth,
        child: ElevatedButton(
          onPressed: _handleLogin,
          style: AppStyles.primaryButtonStyle,
          child: const Text(
            AppConstant.loginButtonLabel,
            style: AppStyles.buttonTextStyle,
          ),
        ),
      ),
    );
  }

  Widget _buildOrganizacaoInfo() {
    return Center(
      child: ClickableText(
        normalText: AppConstant.organizacaoText,
        linkText: AppConstant.organizacaoLink,
        onLinkTap: _handleOrganizacaoLinkTap,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildBackButton() {
    return Positioned(
      top: 40,
      left: 10,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}