import './Login.css';

function CadastroUsuario() {
    return (
        <div className="App">
            <header className="App-header">
                <img src='img/logo.png' className="App-logo" alt="logo"/>
                <form id="formulario"
                    autoComplete='off'>
                    <label> Usuário: </label><br/>
                    <input class="user" type='user'/> <br/>
                    <label> Senha: </label><br/>
                    <input class="senha" type='password'/> <br/>
                    <button type='submit'>
                        <img src="img/login.png" className='imgButton' alt="login"/> Cadastrar
                    </button>
                </form>
            </header>
        </div>
    );
}

export default CadastroUsuario;