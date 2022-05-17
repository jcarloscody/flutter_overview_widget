# OVERVIEW OF WIDGETS

> - **[`MaterialApp:`]**() normalmente este é o primeiro widget que colocamos na raiz, e este é responsável por criar toda a estrutura do projeto baseada no material design, podemos substituir por CurpetinoApp tbm.
>   - title
>   - debugShowCheckedModeBanner
>   - home: página principal
>   - theme:


> - **`Scaffold`**
>    - responsável pela estrutura da page

> - **`Container:`** agrega vários outros containers, widget complexo em sua estrutura. quando queremos apenas alguns espaços é aconselhável usar o SizedBox

> - **`Fonts`**
>    - O Flutter só suporta o .ttf e .otf
>    - package google_fonts


> - **`NAVEGAÇÃO:`** A navegação no Flutter funciona sob o conceito de stack, pilha.
>   - **`Formas:`**
>       - **páginas:** *Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PaginaFim()));*
>           - push
>           - pushAndRemoveUntil
>           - pushReplacement
>       - **nomes**: *Navigator.of(ctx).pushNamed('/rota');*
>           - pushNamed
>           - pushNamedAndRemoveUntil
>           - pushReplacementNamed
>       - **ambos**:
>           - popUntil
>           - pop


> - **`CUSTOMIZAÇÃO DE ROTAS - NAVEGAÇÃO`**
>   - serve apenas para rotas nomeadas
>   - customização
>   - Observer de Navegação

> - **`POPUPMENUBUTTON`**: são os pontinhos que ficam no appBar

> - **Rows Columns**


>  **`MEDIAQUERY`**
> - é uma classe que nos ajuda a recuperar/trabalhar com tamanhos da tela.
> - comando *MediaQuery.of(context)*
> - **O que captamos:**
>   - padding.top: capta a status bar
>   - width
>   - height
>   - orientation
>   - ...
> - **Tamanho da AppBar:** use a constante - *kToolbarHeight*, para tamanho default
>    - caso queira pegar quando o **tamanho for customizado**, separe em uma variável e pegue pelo `preferredSize.height`
> - **Divisão da tela:** compreende o size.height do MediaQuery
>   - statusBar
>   - appBar
>   - body


> **`Package Device Preview`**
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


> **`BOTÕES E ROTAÇÃO DE TEXTO`**
> - **Rotação**
> ``` sh 
> RotateBox(quarterTuns: int, child: widget)
> ```
> > - **Botão**
> ``` sh 
> TextButton(onPressed: (){}, child: widget, style: TextButton.styleFrom());
> 
> ElevatedButton(onPressed: (){}, child: widget, style: ElevatedButton.styleFrom());
> 
> ElevatedButton(onPressed: (){}, child: widget, 
> style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((state){
>       if (state.contains(MaterialState.pressed))
>            {return Cclors.black}
> )})));
> 
> ElevatedButton.icon(onPressed: (){}, icon: widget, label: label);
> 
> IconButton(onPressed: (){}, icon: widget);
> 
> InkWell(child: widget, onTap: (){})
> 
> GestureDetector(child:widget, onTap:(){}, onVerticalDragStart: (values){}, ...)
> ```


> **`SCROLL`** - rolagem
> - **Single Child**
> ``` sh 
> SingleChildScrollView(child: widget)
> 
> ```
> - **Vários** - **children**: usado muito quando temos valore dinâmicos. pelo construct builder é carregado apenas aqueles que é visto
> ``` sh 
> ListView(children: [widget])
> 
> ListView.builder(itemCount: length, itemBuilder: (ctx, index){})
> 
> ListView.separated(itemCount: length,separatorBuilder:(ctx,index){}, itemBuilder: (ctx, index){})
> 
> ```



> **`DIALOGS:`** é importante colocar um await caso queira receber algum dado, faz mais sentido por exemplo no showTimePicker
> - **Dialogs**
> ``` sh 
> 
> ```
> - **SimpleDialog**
> ``` sh 
>  showDialog(context: ctx, builder: (ctx){
> return SimpleDialog()
> })
> ```
>  - **AlertDialog**
> ``` sh 
>  showDialog(context: ctx, builder: (ctx){
> return AlertDialog()
> })
> ```
>   - **TimePicker**
> ``` sh 
>  showTimePicker (context: ctx, initialTime: TimeOfDay(),)
> ```
>   - **DatePicker**
> ``` sh 
>  showDatePicker (context: ctx, 
>    initialDate: DateTime.now(), 
>    firstDate:DateTime(2000),
>    lastDate: DateTime(2025)
> )
> ```



## Identificando a plataforma e mostrando o componente correto
- *Platform.isIOS*


# BuildContext
> é uma `class utilitária` dentro do flutter e onde está **registrado** todos os widgets da nossa estrutura. então ele   da árvore para ser acessado caso tenha necessidade. e **servirá para** encontrar um elemento/informação de forma mais simples.
> - **Por exemplo,** o MediaQuery.of usa o buildContext para capturar as informações da instância de MediaQuery que está mais próxima. bem como o Theme.of()
> - o **buildContext anterior(pai)** `não conhece` nada do buildContext `posterior(son)` abaixo dele. apenas o **filho buildContext conhece o buildContext pai**, mão de via única.
> - **em suma**, o contexto é uma árvore de componente que é registrado pelo contexto, **porém só é registrado dentro dele após o término da execução do método build**. `o mesmo ocorre no initState(), neste método o buildContext ainda não está construído`, por isto não poderás usar o contexto.
> > - 