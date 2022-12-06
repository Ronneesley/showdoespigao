function CadastroQuestoes() {
    return (
        <div className="App">
            <header className="App-header">
                <img src='img/logo.png' className="App-logo" alt="logo"/>
                <form id="formulario"
                    autoComplete='off'>
                    
                    <label for="i1"> Pergunta: </label><br/>
                    <input id="i1" name="pergunta" className="user" /> <br/>
                    <label for="i2"> Resposta 1: </label><br/>
                    <input id="i2" name="r1" className="user" /> <br/>
                    <label for="i3"> Resposta 2: </label><br/>
                    <input id="i3" name="r2" className="user" /> <br/>
                    <label for="i4"> Resposta 3: </label><br/>
                    <input id="i4" name="r3" className="user" /> <br/>
                    <label for="i5"> Resposta 4: </label><br/>
                    <input id="i5" name="r4" className="user" /> <br/>
                    <label for="select"> Opção correta: </label><br/>
                    <select id="select" className="select">
                        <option value="r1">Opção 1 correta</option>
                        <option value="r2">Opção 2 correta</option>
                        <option value="r3">Opção 3 correta</option>
                        <option value="r4">Opção 4 correta</option>
                    </select><br/>
                    <button type='submit'>
                        <img src="img/login.png" className='imgButton' alt="login"/> Cadastrar
                    </button>
                </form>
            </header>
        </div>
    );
}

export default CadastroQuestoes;