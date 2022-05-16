# OVERVIEW OF WIDGETS

> - [`MaterialApp:`]() normalmente este é o primeiro widget que colocamos na raiz, e este é responsável por criar toda a estrutura do projeto baseada no material design, podemos substituir por CurpetinoApp tbm.
>  - `title`
>  - debugShowCheckedModeBanner
>  - home: página principal
>  - theme:


> - Scaffold
>    - responsável pela estrutura da page

> - Container: agrega vários outros containers, widget complexo em sua estrutura. quando queremos apenas alguns espaços é aconselhável usar o SizedBox

> - Fonts
>    - O Flutter só suporta o .ttf e .otf
>    - package google_fonts


> - NAVEGAÇÃO: A navegação no Flutter funciona sob o conceito de stack, pilha.
>   - Formas:
>       - páginas: *Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PaginaFim()));*
>           - push
>           - pushAndRemoveUntil
>           - pushReplacement
>       - nomes: *Navigator.of(ctx).pushNamed('/rota');*
>           - pushNamed
>           - pushNamedAndRemoveUntil
>           - pushReplacementNamed
>       - ambos:
>           - popUntil
>           - pop


> - CUSTOMIZAÇÃO DE ROTAS - NAVEGAÇÃO
>   - serve apenas para rotas nomeadas
>   - customização
>   - Observer de Navegação

> - POPUPMENUBUTTON: são os pontinhos que ficam no appBar

> - Rows Columns


>  MEDIAQUERY
> - é uma classe que nos ajuda a recuperar/trabalhar com tamanhos da tela.
> - comando *MediaQuery.of(context)*
> - O que captamos:
>   - padding.top: capta a status bar
>   - width
>   - height
>   - orientation
>   - ...
> - Tamanho da AppBar: use a constante - *kToolbarHeight*, para tamanho default
>    - caso queira pegar quando o tamanho for customizado, separe em uma variável e pegue pelo preferredSize.height
> - Divisão da tela: compreende o size.height do MediaQuery
>   - statusBar
>   - appBar
>   - body


> Package Device Preview
> - servirá para testar em várias perspectiva de dispositivo.
> - coloca-se na raiz.

> **`Layout Builder    IMPORTANTE`** -  
> - ajuda com a manipulação do tamamnho do dispositivo.
> - `constrains` o flutter trabalha com este item, são os tamanho e quem define é o pai. ele já desconta o statusbar e o appbar. constraints.max, .min
> ``` sh 
> LayoutBuilder(
> builder: (ctx, constraints)=>Column()
> )
> ```


> BOTÕES E ROTAÇÃO DE TEXTO
> ``` sh 
> RotateBox(quarterTuns: int, child: widget)
> ```