<h1 align="left">Desafio Back-End Mainô</h1>

###

<h5 align="left"> OBJETIVO: Criar um blog completo utilizando Ruby on Rails 7, HTML, CSS, JavaScript e Bootstrap (opcional).</h5>
<h2 align="left">🎯 2 - Deploy Fly.io.</h2>
<h3>:earth_americas: https://my-blog-maino.fly.dev</h3>

###

<h3 align="left">Tecnologias Usadas</h3>
<div align="left">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" height="40" alt="css3 logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" height="40" alt="docker logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" height="40" alt="html5 logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" height="40" alt="linux logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" height="40" alt="postgresql logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" height="40" alt="rails logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/redis/redis-original.svg" height="40" alt="redis logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rspec/rspec-original.svg" height="40" alt="rspec logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" height="40" alt="ruby logo"  />
</div>

###

<h2 align="left">Funcionalidades Area Deslogada</h2>

###

<h4 align="left">:green_circle: 1 - Posts publicados por todos os usuários ordenados do mais novo para o mais antigo;</h4>
<h5>✨ Todos os usuários cadastrados ou anônimos, visualizam as postagens da plataforma, ordenadas a partir da data de criação da última postagem feita.</h5>
<h5>✨✨ A ordenação também está habilitada para pesquisa de post por tags.</h5>

<h4 align="left">:green_circle: 2 - Paginação de posts (3 posts por página).</h4>

<h4 align="left">:green_circle: 3 - Fazer comentários anônimos.</h4>
<h5>✨ Usuários não cadastrados na plataforma, estão habilitados para fazer somente comentários, sendo os mesmo anônimos, em todas as postagens no blog.
Não podendo assim, usufruir das funcionalidades relacionadas aos usuários cadastrados.</h5>

<h4 align="left">:green_circle: 4 - Cadastrar novos usuários.</h4>
<h5>✨ A plataforma possibilita que o usuário possa se cadastrar, para fins de usufruir das funcionalidades da plataforma.</h5>
<h5>✨✨ Além do cadastro convencional via preenchimento de formulário, será implementada a possibilidade de cadastro através de redes sociais via integração ex: Google e Facebook. </h5>

<h4 align="left">:green_circle: 5 - Fazer login com usuario cadastrado.</h4>
<h5>✨ Após a finalização do cadastro, o usuário já está habilitado, para usufruir das funcionalidades da plataforma.</h5>
<h5>✨✨ A plataforma não descartar a importância, de implementar a verificação por meio de token de confirmação, para garatir que o usuário cadastrou um e-mail realmente válido.</h5>

<h4 align="left">:green_circle: 6 - Recuperar senha.</h4>
<h5>✨ A plataforma permite que em caso de perda da senha, o usuário possa recuperar sua conta através de e-mail recuperação,
    enviado pelo sistema my blog contendo os passos para alteração de senha.</h5>
<h2 align="left">Funcionalidades Area Logada</h2>

###

<h4 align="left">:green_circle: 1 - Redigir e publicar posts.</h4>
<h5>✨ O usuário após o cadastro, poderá fazer suas postagens, com temas diversos, os formulários de postagem possuem validações que ajudam o usuário a entender que campos faltam ser preenchidos.</h5>

<h4 align="left">:green_circle: 2 - Editar e apagar posts pelo proprio usuario logado.</h4>
<h5>✨ O usuário logado, pode editar seu post assim como excluí-lo, sendo impossibilitado de alterar qualquer informação relacionada aos postes de outros usuários da plataforma .</h5>

<h4 align="left">:green_circle: 3 - Fazer comentários identificados, identificando cada usuario logado.</h4>
<h5>✨ Assim como para publicar posts, a plataforma garante que todos os usuários, sejam identificados, tornando assim a possibilidade do usuário logado, acompanhar e identificar quem comentou em suas postagens.</h5>

<h5>✨✨ Será implementado, a função de notificação de comentário, para informar o usuário quando houver novos comentários em seus posts. O usuário também poderá editar seus próprios comentário.</h5>
 
<h4 align="left">:green_circle: 4 - Editar  cadastro de usuário.</h4>
<h5>✨ Na aba MEU PERFIL o usuário poderá alterar dados referentes somente ao seu perfil, ex: nome ou sobrenome, bio, e-mail.</h5>

<h4 align="left">:green_circle: 5 - Alterar senha do usuário loggado.</h4>
<h5>✨ Na aba MEU PERFIL, o usuário encontra, dentre outras opções, a possibilidade de alterar a sua senha atual.</h5>

<h5>:warning: ✨ A plataforma só permite a alteração da senha, mediante a informação da senha atual do usuário logado.</h5>

<h2 align="left">Funcionalidades Opcionais</h2>

###

<h4 align="left">:green_circle: 1 - Testes automatizados simples.</h4>
<h5>✨ A plataforma implementou testes com auxílio do Respec, usando FactoryBot para instâncias dos models, e SimpleCov para acompanhar a cobertura do código do projeto.</h5>

<h4 align="left">:green_circle: 2 - Internacionalização.</h4>
<h5>✨ A plataforma viabiliza a tradução de todos os campos relacionados a usabilidade do usuário, fornecendo mais acessibilidade, assim como em futuras implementações.</h5>

<h4 align="left">:green_circle: 3 - Tags em posts com filtros de pesquisa de tags.</h4>
<h5>✨ Ao publicar uma postagem, o usuário tem a possibilidade de selecionar uma ou mais tags, que estão em ordem alfabética no campo Drop-down.</h5>

<h5>:warning: ✨ Será implementado a possibilidade do usuário adicionar novas Tags no processo de  uma nova publicação.</h5>

<h5>:warning: ✨ A função de tags personalizadas está habilitada somente para postagem automáticas, através de upload de arquivos txt, onde há a verificação, se a tag já existe, caso a mesma não exista, será inserida, e estará disponibilizada, para todos os usuários cadastrados. Não permitir que todos os usuários criem suas tags em posts convencionais, aparentemente não limita a interação por tags, mas cria um controle a mais para a plataforma, sobre quais tags estão disponíveis para o uso.</h5>

<h5>✨✨ A plataforma terá prioridade em habilitar a função tags personalizadas, ao decorrer do desenvolvimento de funções para garantir, que conteúdos tóxicos não sejam difundidos. A partir da criação de meios, para identificação, de palavras nocivas nas postagem e tags automáticas.</h5>


<h2 align="left">SUPER DIFERENCIAL</h2>

###

<h4 align="left">:green_circle: 1 - Upload de arquivos TXT para criação de posts ou tags (utilizando Sidekiq para processamento assíncrono).</h4>
<h5>✨ A plataforma possui a implementação de job em background, para envio de arquivos txt, para posts automatizados, que se encontra localizado na HOME do usuário, ou na aba MEU PERFIL, possibilitando fácil acesso a função. O job irá fazer o mapeamento dos campos, no caso de posts automáticos via arquivo txt.  Os campos são validados em background, e entram em fila através do siderkiq, após o usuário concluir o envio do arquivo, é redirecionado a HOME, onde verá a notificação : em alguns segundos seus post estará disponível para ser visualizado.</h5>

<h4 align="left">🎯 2 - Deploy Fly.io.</h4>
<h5>:earth_americas: https://my-blog-maino.fly.dev</h5>
<h5>Por ser uma hospedagem gratuita, a uma nessecidade de espera ate que o servidor, start a aplicação</h5>
<h2 align="left">📚 Sobre o desenvolvimento:</h2>

###

<h4 align="left">Ao desenvolver a aplicação me deparei com a dificuldade de implementação do Sikerkiq, não estava familiarizada com a ferramenta, mas valeu muito a pena aprender, não somente em quais contextos ela é utilizada, mas tambem como implementa-la na minha aplicação. No geral o projeto é satisfatório,atendendo aos requisitos solicitados, assim como a possibilidades de implementação das melhorias destacadas nos pontos acima.
<h4>:atom: TESTES: No quesito teste optei por usar o RESPEC em conjunto com SIMPLECOV para acompanhar a cobertura de código. Vale ressaltar o uso do FACTORYBOT para instânciar os modelos oque facilita bastante na hora de escrever os testes. Os impedimentos encontrados, a que vale destacar; os testes de uso das Controllers, pela falta da abrangência de métodos e formas para aplicar os mesmos. No geral a perfeição dessa aplicação é relacionada ao tempo, mas ainda assim como destacado a cima, cumpre os requisitos solicitados..</h4>

###
