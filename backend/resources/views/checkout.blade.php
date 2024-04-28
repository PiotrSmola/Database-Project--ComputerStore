@include('shared.html')

  @include('shared.head', ['pageTitle' => 'Checkout - Sklep komputerowy'])
  <head>
    <link rel="stylesheet" href="{{ asset('css/checkoutStyle.css') }}" />
  </head>
  <body>
    @include('shared.navbar')

    <main>
      <div class="barside">
        <div class="sidebar has-scrollbar" data-mobile-menu="sidebar">
          <div class="sidebar-category">
            <div class="sidebar-top">
              <h2 class="sidebar-title">Category</h2>

              <button class="sidebar-close-btn" data-mobile-menu-close-btn>
                <ion-icon name="close-outline"></ion-icon>
              </button>
            </div>

            <ul class="sidebar-menu-category-list">
              <li class="sidebar-menu-category">
                <button class="sidebar-accordion-menu" data-accordion-btn>
                  <div class="menu-title-flex">
                    <img
                      src="{{ asset('storage/img/icons/Computers.jpg') }}"
                      alt="Computers"
                      width="20"
                      height="20"
                      class="menu-title-img" />

                    <p class="menu-title">Computers</p>
                  </div>

                  <div>
                    <ion-icon name="add-outline" class="add-icon"></ion-icon>
                    <ion-icon
                      name="remove-outline"
                      class="remove-icon"></ion-icon>
                  </div>
                </button>

                <ul class="sidebar-submenu-category-list" data-accordion>
                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('computers.index') }}#gaming"
                      class="sidebar-submenu-title">
                      <p class="product-name">Gaming</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscGamingComputers }}</data
                      >
                    </a>
                  </li>

                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('computers.index') }}#learning"
                      class="sidebar-submenu-title">
                      <p class="product-name">Learning</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscLearningComputers }}</data
                      >
                    </a>
                  </li>

                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('computers.index') }}#office"
                      class="sidebar-submenu-title">
                      <p class="product-name">Office</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscOfficeComputers }}</data
                      >
                    </a>
                  </li>

                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('computers.index') }}#all"
                      class="sidebar-submenu-title">
                      <p class="product-name">All</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscKomputerow }}</data
                      >
                    </a>
                  </li>
                </ul>
              </li>

              <li class="sidebar-menu-category">
                <button class="sidebar-accordion-menu" data-accordion-btn>
                  <div class="menu-title-flex">
                    <img
                      src="{{ asset('storage/img/icons/Laptops.jpg') }}"
                      alt="Laptops"
                      class="menu-title-img"
                      width="20"
                      height="20" />

                    <p class="menu-title">Laptops</p>
                  </div>

                  <div>
                    <ion-icon name="add-outline" class="add-icon"></ion-icon>
                    <ion-icon
                      name="remove-outline"
                      class="remove-icon"></ion-icon>
                  </div>
                </button>

                <ul class="sidebar-submenu-category-list" data-accordion>
                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('laptops.index') }}#gaming"
                      class="sidebar-submenu-title">
                      <p class="product-name">Gaming</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscGamingLaptops }}</data
                      >
                    </a>
                  </li>

                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('laptops.index') }}#learning"
                      class="sidebar-submenu-title">
                      <p class="product-name">Learning</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscLearningLaptops }}</data
                      >
                    </a>
                  </li>

                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('laptops.index') }}#office"
                      class="sidebar-submenu-title">
                      <p class="product-name">Office</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscOfficeLaptops }}</data
                      >
                    </a>
                  </li>

                  <li class="sidebar-submenu-category">
                    <a href="{{ route('laptops.index') }}#all" class="sidebar-submenu-title">
                      <p class="product-name">All</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscLaptopow }}</data
                      >
                    </a>
                  </li>
                </ul>
              </li>

              <li class="sidebar-menu-category">
                <button class="sidebar-accordion-menu" data-accordion-btn>
                  <div class="menu-title-flex">
                    <img
                      src="{{ asset('storage/img/icons/Components.jpg') }}"
                      alt="Components"
                      class="menu-title-img"
                      width="20"
                      height="20" />

                    <p class="menu-title">Components</p>
                  </div>

                  <div>
                    <ion-icon name="add-outline" class="add-icon"></ion-icon>
                    <ion-icon
                      name="remove-outline"
                      class="remove-icon"></ion-icon>
                  </div>
                </button>

                <ul class="sidebar-submenu-category-list" data-accordion>
                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('components.index') }}#processors"
                      class="sidebar-submenu-title">
                      <p class="product-name">Prossecors</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscProcessors }}</data
                      >
                    </a>
                  </li>

                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('components.index') }}#graphics"
                      class="sidebar-submenu-title">
                      <p class="product-name">Graphics</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscGraphics }}</data
                      >
                    </a>
                  </li>

                  <li class="sidebar-submenu-category">
                    <a
                      href="{{ route('components.index') }}#memoryRam"
                      class="sidebar-submenu-title">
                      <p class="product-name">Memory RAM</p>
                      <data class="stock" title="Available Stock"
                        >{{ $iloscMemoryRam }}</data
                      >
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>

      {{-- ! ! !SEKCJA PODSTRONY ! ! !--}}
        
         <!--
        - TESTIMONIALS, CTA & SERVICE
      -->
  
      <div>
        <div class="container">
          <div class="testimonials-box">
            <!--
            - TESTIMONIALS
          -->

            <div class="testimonial">
              <h2 class="title">testimonial</h2>

              <div class="testimonial-card">
                <img
                  src="{{ asset('storage/img/Portret.jpg') }}"
                  alt="alan doe"
                  class="testimonial-banner"
                  width="80"
                  height="80" />

                <p class="testimonial-name">Dawid Olko</p>

                <p class="testimonial-title">CEO & Founder Invision</p>

                <img
                  src="{{ asset('storage/img/icons/quotes.svg') }}"
                  alt="quotation"
                  class="quotation-img"
                  width="26" />

                <p class="testimonial-desc">
                  <q
                    >Empowering your digital world, one byte at a time. Welcome
                    to TechByte, where innovation meets excellence.</q
                  >
                </p>
              </div>
            </div>

            <!--
            - CTA
          -->

            <div class="cta-container">
              <img
                src="{{ asset('storage/img/banners/BannerComain2.webp') }}"
                alt="summer collection"
                class="cta-banner" />

              <a href="{{ route('sales') }}" class="cta-content">
                <p class="discount">25% Discount</p>

                <h2 class="cta-title">Computer collection</h2>

                <p class="cta-text">Starting $100</p>

                <button class="cta-btn">Shop now</button>
              </a>
            </div>

            <!--
            - SERVICE
          -->

            <div class="service">
              <h2 class="title">Our Services</h2>

              <div class="service-container">
                <a href="{{ route('contact') }}" class="service-item">
                  <div class="service-icon">
                    <ion-icon name="boat-outline"></ion-icon>
                  </div>

                  <div class="service-content">
                    <h3 class="service-title">Worldwide Delivery</h3>
                    <p class="service-desc">For Order Over $100</p>
                  </div>
                </a>

                <a href="{{ route('index') }}" class="service-item">
                  <div class="service-icon">
                    <ion-icon name="rocket-outline"></ion-icon>
                  </div>

                  <div class="service-content">
                    <h3 class="service-title">Next Day delivery</h3>
                    <p class="service-desc">PL Orders Only</p>
                  </div>
                </a>

                <a href="{{ route('contact') }}" class="service-item">
                  <div class="service-icon">
                    <ion-icon name="call-outline"></ion-icon>
                  </div>

                  <div class="service-content">
                    <h3 class="service-title">Best Online Support</h3>
                    <p class="service-desc">Hours: 8AM - 16PM</p>
                  </div>
                </a>

                <a href="{{ route('privacy') }}" class="service-item">
                  <div class="service-icon">
                    <ion-icon name="arrow-undo-outline"></ion-icon>
                  </div>

                  <div class="service-content">
                    <h3 class="service-title">Return Policy</h3>
                    <p class="service-desc">Easy & Free Return</p>
                  </div>
                </a>

                <a href="{{ route('index') }}" class="service-item">
                  <div class="service-icon">
                    <ion-icon name="ticket-outline"></ion-icon>
                  </div>

                  <div class="service-content">
                    <h3 class="service-title">20% money back</h3>
                    <p class="service-desc">For Order Over $500</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!--
      - BLOG
    -->
    </main>
    @include('shared.footer')

    <!--
    - custom js link
    -->
    <script src="{{ asset('js/script.js') }}"></script>
    <script src="{{ asset('js/changeTheLanguage.js') }}"></script>
    <script src="{{ asset('js/counterCart.js') }}"></script>
    <script src="{{ asset('js/loginAccount.js') }}"></script>
</body>
</html>
