<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Miamo.SITE.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="icone/favicon.ico" type="image/x-icon" />
    <title>MIAMO</title>
    <link rel="stylesheet" href="estilos/reset.css" />
    <link rel="stylesheet" href="estilos/media.css" />
    <link rel="stylesheet" href="estilos/style.css" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"
    />
    <!-- font italica -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </head>
 <body>
    <%--<header>
      <nav  class="navbar navbar-expand-lg fixed-top">
        <div id="nav.menu" class="container-fluid">
          <a href="index.html"><img id="logo" src="img/index/LogoMiamo.gif" alt="logo MIAMO" /></a>
          <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>

          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
                Veja Mais
              </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li class="dropdown-item"><a href="#lancamentos">Novidades</a></li>
              <li class="dropdown-item"><a href="#polaroids">Nossos Produtos</a></li>
              <li class="dropdown-item"><a href="#mapa-conteudo">Nossa Localização</a></li>
              <li class="dropdown-item"><a href="#sbr-empresa">Sobre á Empresa</a></li>
          
            </ul>
            </li>
            </ul>

          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
              Catálogo
            </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li class="dropdown-item"><a href="catalogo.html#nav-lancamentos">Lançamentos</a></li>
            <li class="dropdown-item"><a href="catalogo.html#nav-modeladores">Modeladores</a></li>
            <li class="dropdown-item"><a href="catalogo.html#nav-camisolas">Camisolas</a></li>
            <li class="dropdown-item"><a href="catalogo.html#nav-calcinhas">Calcinhas & Fios</a></li>
            <li class="dropdown-item"><a href="catalogo.html#nav-lingieries">Lingieries</a></li>
            <li class="dropdown-item"><a href="catalogo.html#nav-sutias">Sutiãs</a></li>
          </ul>
          </li>
            <li class="nav-item"><a href="cadastro.html">Cadastro</a></li>
          </ul>

          
          <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="O Que Procura?" aria-label="Search">
            <button class="btn btn-outline-dark" type="submit">Procurar</button>
          </form>

          </div>

      </nav>
    </header>--%>

    <main>
      <section class="slider">
        <div class="container-fluid header">
          <div class="row">
            <div
              id="carouselExampleIndicators"
              class="carousel slide"
              data-ride="carousel"
            >
              <ol class="carousel-indicators">
                <li
                  data-target="#carouselExampleIndicators"
                  data-slide-to="0"
                  class="active"
                ></li>
                <li
                  data-target="#carouselExampleIndicators"
                  data-slide-to="1"
                ></li>
                <li
                  data-target="#carouselExampleIndicators"
                  data-slide-to="2"
                ></li>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img
                    class="d-block w-100"
                    src="img/index/bannerteste.jpg"
                    alt="Primeiro Slide"
                  />
                  <!-- <div class="carousel-caption d-none d-md-block"> -->
                  <div class="carousel-caption text-left">
                    <h2 class="mb-sm-1 mb-lg-2 mb-xl-5 texto font-italic"></h2>
                    <p class="font-italic texto"></p>
                    <p class="font-italic texto"></p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img
                    class="d-block w-100"
                    src="img/index/bannerteste.jpg"
                    alt="Segundo Slide"
                  />
                  <div class="carousel-caption text-left">
                    <h2 class="mb-sm-1 mb-lg-2 mb-xl-5 texto font-italic"></h2>
                    <p class="font-italic texto"></p>
                    <p class="font-italic texto"></p>
                    <p class="font-italic texto"></p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img
                    class="d-block w-100"
                    src="img/index/bannerteste.jpg"
                    alt="Terceiro Slide"
                  />
                  <div class="carousel-caption text-left">
                    <h2 class="mb-sm-1 mb-lg-2 mb-xl-5 texto font-italic"></h2>
                    <p class="font-italic texto"></p >
                    <p class="font-italic texto"></p>
                    <p class="font-italic texto"></p>
                  </div>
                </div>
              </div>
              <a
                class="carousel-control-prev"
                href="#carouselExampleIndicators"
                role="button"
                data-slide="prev"
              >
                <span
                  class="carousel-control-prev-icon"
                  aria-hidden="true"
                ></span>
                <span class="sr-only">Anterior</span>
              </a>
              <a
                class="carousel-control-next"
                href="#carouselExampleIndicators"
                role="button"
                data-slide="next"
              >
                <span
                  class="carousel-control-next-icon"
                  aria-hidden="true"
                ></span>
                <span class="sr-only">Próximo</span>
              </a>
            </div>
          </div>
        </div>
      </section>

      <section>
        <div id="lancamentos">
          <div class="titulo">
          <h1>LANÇAMENTOS</h1>
          <p>
            Fique de olho em nossos lançamentos! Dá só uma olhada em nossas novidades!
          </p>
        </div>
          <!-- PrimeiroGrid -->
          
        <div class="conteudoAoMeio grid">
          <div class="anuncio">
            <a href="#" id="grayscale"><img src="img/imgCatalogo/fotosnovas/11.jpg" alt=""></a>
            <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium, quibusdam?</span>
          </div>
          <div class="anuncio2"> 
            <a href="#" id="grayscale"><img src="img/imgCatalogo/fotosnovas/01.jpg" alt=""></a>
            <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium, quibusdam?</span>
          </div>
          <div class="itemgrid1">
            <a href="#" id="grayscale"><img src="img/imgCatalogo/fotosnovas/03.jpg" alt=""></a>
            <p>Lorem ipsum dolor sit amet, consecteturis omnis ente animi provident. Eni </p>
          </div>
          <div class="itemgrid1">
            <a href="#" id="grayscale"><img src="img/imgCatalogo/fotosnovas/05.jpg" alt=""></a>
            <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium, quibusdam?</span>
          </div>
          <div class="itemgrid">
            <a href="#" id="grayscale"><img src="img/imgCatalogo/fotosnovas/04.jpg" alt=""></a>
            <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium, quibusdam?</span>
          </div>
          <div class="itemgrid">
            <a href="#" id="grayscale"><img src="img/imgCatalogo/fotosnovas/02.jpg" alt=""></a>
            <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium, quibusdam?</span>
          </div class="itemgrid">
  
          <div class="itemgrid">
            <a href="#" id="grayscale"><img src="img/imgCatalogo/fotosnovas/12.jpg" alt=""></a>
            <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium, quibusdam?</span>
          </div>
  
          <div class="itemgrid">
            <a href="#" id="grayscale"><img src="img/imgCatalogo/fotosnovas/13.jpg" alt=""></a>
            <p>Lorem ipsum dolor sit amet.</p>
          </div>
          
          
      </section>

      <section id="visao-container">
        <div id="visao-conteudo">
          <div id="sbr-empresa">
          <h1>Sobre A Empresa</h1>
          <p>
            A Miamo moda íntima foi fundada em Maio de 2012.
            Trabalhamos com linha completa em moda íntima feminina, sutiãs,
            calcinhas, fio, camisolas, baby doll, shorts segunda pele etc. Toda
            a linha de produção é desenvolvida por profissionais qualificados em
            designer de moda para elevar ao maxímo o nível de qualidade e
            conforto para a mulher, tudo passando por um rigoroso controle de qualidade.
            Atendemos no atacado e varejo e entregamos para todo o Brasil.
          </p>
        </div>

        <div id="centralizar-texto">
         
            
            <img  src="img/imgCatalogo/fotosnovas/Visão.jpg" alt="">
          
       
          
          <div id="visao-paragrafo">
          <h1>Visões e Valores</h1>
        
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat
            aperiam soluta eveniet est, vero dolores voluptates, placeat
            aspernatur, nobis nesciunt molestias sapiente adipisci quibusdam
            debitis obcaecati ullam illo consequatur saepe? Animi dicta ut in.
            
          </p>
        </div>

      </div>

        </div>
      </section>

      <section id="sessao-fixa">
        <!-- ConteudoaoladoDoParalax -->
        <div id="fixar">
          <aside id="conteudo-fixo">
    
            <h1>Nos Acompanhe em Nossas Redes Sociais</h1>
            <p>
              Aqui Esta um gostinho Do que Temos em nossas Redes
            </p>
            <div id="video">
              <blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/CRAOeM9l0OM/?utm_source=ig_embed&amp;utm_campaign=loading" data-instgrm-version="14" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/CRAOeM9l0OM/?utm_source=ig_embed&amp;utm_campaign=loading" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;">Ver essa foto no Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center; margin-bottom: 24px;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 224px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 144px;"></div></div></a><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/CRAOeM9l0OM/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">Uma publicação compartilhada por MIAMO_lingerie&amp;longewear (@miamo_longewear)</a></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>
              </div>
          </aside>
  
        
        </div>
      </section>

      <section>
        <div id="mapa-conteudo">
          <div id="localizacao-paragrafo">
            <h1>Nossa Localização</h1>
            <p>
              Nossa Loja de Fábrica fica localizado na Rua 6 companheiros, 205 - Barra do Ceará CEP 60331-790.
              Você pode ver como como chegar na loja através do mapa ao lado.
            </p>
          </div>

          <div id="google-maps">
            <aside>
              <address>
                <iframe
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.493249508461!2d-38.57781144906898!3d-3.70195029729329!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c74a06e8219bc9%3A0xe49aba726cc8a083!2sR.%206%20Companheiros%2C%20205%20-%20Barra%20do%20Cear%C3%A1%2C%20Fortaleza%20-%20CE%2C%2060331-790!5e0!3m2!1spt-BR!2sbr!4v1655755554687!5m2!1spt-BR!2sbr"
                  width="600"
                  height="450"
                  style="border: 0"
                  allowfullscreen=""
                  loading="lazy"
                  referrerpolicy="no-referrer-when-downgrade"
                ></iframe>
            </address>
          </aside>
          </div>
        </div>
      </section>

      <div id="polaroids">
        <div id="catalogo-h1">
        <h1>Conheça Nossos Catálogos</h1>
      </div>

      <div class="d-flex" id="linha1">
      <section>

          <div id="roupanoturna-conteudo" class="image">
            <img src="img/index/PijamaAmericano.jpeg" class="image_img" alt="">
            <h1>Lançamentos</h1>
        <div class="image_overlay image_overlay--blur">
            <div class="image_title">Roupas Noturnas</div>
            <p class="image_description"> </p>
            <button class="custom-btn btn-15">
              <a href="catalogo.html#nav-lancamentos">Ir para Catalogo</a>
            </button>
            
        </div>
       
        </div>
      </section>

      <section>
        <div id="calcinhas" class="image">
          <img src="img/index/08.jpg" class="image_img" alt="">
          <h1>Calcinhas</h1>
      <div class="image_overlay image_overlay--blur">
          <div class="image_title">Calcinhas</div>
          <p class="image_description"> </p>
          <button class="custom-btn btn-14">
            <a href="catalogo.html#nav-calcinhas">Ir para Catalogo</a>
          </button>
      </div>
          
        </div>
      </section>
      

      <section>
        <div id="modeladores" class="image">
          <img src="img/index/27.jpg" class="image_img" alt="">
          <h1>Modeladores</h1>
      <div class="image_overlay image_overlay--blur">
          <div class="image_title">Modeladores</div>
          <p class="image_description"> </p>
          <button class="custom-btn btn-15">
            <a href="catalogo.html#nav-modeladores">Ir para Catalogo</a>
          </button>
      </div>

  
        </div>
      </section>
   </div>

   <div class="d-flex" id="linha2">
      <section>
        <div id="lingieries" class="image">
          <img src="img/index/10.jpg" class="image_img" alt="">
          <h1>Lingeries</h1>
      <div class="image_overlay image_overlay--blur">
          <div class="image_title">LINGIERI</div>
          <p class="image_description"> </p>
          <button class="custom-btn btn-14">
            <a href="catalogo.html#nav-lingieries">Ir para Catalogo</a>
          </button>
      </div>
      </section>


      <section>
        <div id="camisolas" class="image">
          <img src="img/index/03.jpg" class="image_img" alt="">
          <h1>Camisolas</h1>
      <div class="image_overlay image_overlay--blur">
          <div class="image_title">Camisolas</div>
          <p class="image_description"> </p>
          <button class="custom-btn btn-15">
            <a href="catalogo.html#nav-camisolas">Ir para Catalogo</a>
          </button>
      </div>
      </section>

      <section>
        <div id="sutias" class="image">
          <img src="img/index/05.jpg" class="image_img" alt="">
          <h1>Sutiãs</h1>
      <div class="image_overlay image_overlay--blur">
          <div class="image_title">Sutiãs</div>
          <p class="image_description"> </p>
          <button class="custom-btn btn-14">
            <a href="catalogo.html#nav-sutias">Ir para Catalogo</a>
          </button>
      </div>
    
      </section>
      </div>
    </div>

    </main>
    
    <aside class="fixed-top aside" id="vertical">
     
    <div>
      <a href="https://api.whatsapp.com/send?phone=5585996823836&text=MIAMO" target="blank"><img src="icone/whatsapp.png" alt="Whatsapp" width="45px"></a>
    </div>
    <div>
      <a href="https://pt-br.facebook.com/miamomodaintima/" target="blank"><img src="icone/facebook-new.png" alt="Facebook" width="45px" ></a>
    </div>
    <div>
      <a href="https://www.instagram.com/miamo_longewear/" target="blank"><img src="icone/instagram-icone-noir.png" alt="Instagram" width="45px" ></a>
    </div>
    </aside>

    <footer>
      <section class="footer-container">
      <h5>Direitos Reservados</h5>

      </section>
    </footer>

    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
      integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
      integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"
    ></script>

</body>
  
</asp:Content>
