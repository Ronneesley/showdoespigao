import './Login.css';

function Login() {
    return ( <
        div className = "App" >
        <
        header className = "App-header" >
        <
        img src = 'img/logo.png'
        className = "App-logo"
        alt = "logo" / >
        <
        form id = "formulario"
        autoComplete = 'off' >
        <
        label > Usuário: < /label><br/ >
        <
        input class = "user"
        type = 'user' / > < br / >

        <
        label > Senha: < /label><br/ >
        <
        input class = "senha"
        type = 'password' / > < br / >
        <
        a href = '#'
        className = 'App-link' > Esqueceu a senha ? < /a><br/ >
        <
        button type = 'submit' >
        <
        img src = "img/login.png"
        className = 'imgButton'
        alt = "login" / > Login <
        /button>

        <
        /form> <
        /header> <
        /div>
    );
}

export default Login;