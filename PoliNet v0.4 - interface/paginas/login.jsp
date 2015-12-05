<%-- 
    Document   : login
    Created on : 29/11/2015, 11:08:37
    Author     : Humberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/styles.css" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela de Login</title>
    </head>
    
    <body>
<%
    if ( request.getParameter("campo_controle") != null ) {
        // processa login
        String usuario  = request.getParameter("login");
        String passwd   = request.getParameter("senha");
        // metodo valida deve ser implementado
        //boolean v = valida(user, passwd);   --->  FALTA IMPLEMENTAR
        // simulacao: deve ser 123
        boolean v = "123".equals(passwd);
        if (v) {
           session.setAttribute("user_name", usuario);
           session.setAttribute("nusp", "123456");
           pageContext.forward("usuario.jsp");
        } else {
   %>
           Usuario ou Senha invalidos!
   <%
        }
    }
    // show login form
%>     
	<section id="body" class="width">
            <aside id="sidebar" class="column-left">

                <header>
                    <h1><a href="#">PoliNet</a></h1>
                    <h2>Seja bem vindo!</h2>
                </header>

                <nav id="mainnav"> <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li class="selected-item"><a href="login.jsp">Login</a></li>
                        <li><a href="sobreNos.jsp">Sobre n&oacute;s</a></li>
                </ul> </nav>
                
            </aside>
            <section id="content" class="column-right">

                <article>

                    <h1>Tela de Login</h1>&nbsp;&nbsp; 

                    <fieldset>
                        <legend>Fa&ccedil;a seu login</legend>
                        <FORM form="formLogin" onsubmit="validaEntrada()" method="post">

                            <p><label for="text">Login:</label>
                            <input type="text" name="login" id="login" value=""/><br /></p>

                            <p><label for="text">Senha:</label>
                            <input type="password" name="senha" id="senha" value=""/><br /></p>

                            <p><INPUT type="submit" class="formbutton" value="Entrar">
                            <INPUT type="reset" class="formbutton" value="Limpar dados"></p>

                            <p><a href="selecionaCadastro.jsp">Cadastrar novo usu&aacute;rio</a>
                                <br />
                            <a href="esqueciSenha.html">Esqueci a senha</a>
                            <input type="hidden" name="campo_controle" /></p>
                        </FORM>
                    </fieldset>	

                    <img src="images/usp_relogio_red.jpg" class="resize" alt="" />

                </article>

                <footer class="clear">
                    <p>&copy; 2015 PoliNet. Desenvolvido para a disciplina PMR 2490 - Sistemas de Informa&ccedil;&atilde;o</p>
                </footer>

            </section>
            <div class="clear"></div>
	</section>
	
	<script type="text/javascript">
            function validaEntrada() {
                var login = document.getElementById("login").value;
                    var senha = document.getElementById("senha").value;

                    if (login == "aluno")
                        document.formLogin.action = "aluno.html";
                    if (login == "professor")
                        document.formLogin.action = "professor.html";
            }
	</script>
	
    </body>
</html>
