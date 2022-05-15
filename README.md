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