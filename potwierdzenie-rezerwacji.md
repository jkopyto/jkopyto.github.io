---
layout: page
title: Rezerwacja potwierdzona
subtitle: Dziękujemy za umówienie wizyty
permalink: /potwierdzenie-rezerwacji
noindex: true
sitemap: false
---

<!-- Success Message Section -->
<section class="confirmation-hero py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 mx-auto text-center">
        <div class="success-icon mb-4">
          <i class="fas fa-check-circle"></i>
        </div>
        <h1 class="display-4 mb-4">Twoja wizyta została zarezerwowana!</h1>
        <p class="lead text-muted mb-4">
          Potwierdzenie rezerwacji zostało wysłane na Twój adres e-mail. 
          Przypomnienie o wizycie otrzymasz na 24 godziny przed terminem.
        </p>
      </div>
    </div>
  </div>
</section>

<!-- What's Next Section -->
<section class="whats-next py-5 bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-10 mx-auto">
        <h2 class="text-center mb-5">Co dalej?</h2>
        <div class="row">
          <div class="col-md-4 mb-4">
            <div class="next-step-card">
              <div class="step-icon mb-3">
                <i class="fas fa-envelope fa-2x"></i>
              </div>
              <h4>Sprawdź email</h4>
              <p class="text-muted">
                Na Twój adres e-mail wysłaliśmy potwierdzenie z wszystkimi szczegółami wizyty, 
                w tym datą, godziną i danymi specjalisty.
              </p>
            </div>
          </div>
          <div class="col-md-4 mb-4">
            <div class="next-step-card">
              <div class="step-icon mb-3">
                <i class="fas fa-bell fa-2x"></i>
              </div>
              <h4>Otrzymasz przypomnienie</h4>
              <p class="text-muted">
                Na 24 godziny przed wizytą wyślemy Ci przypomnienie SMS-em i e-mailem, 
                abyś nie zapomniał o umówionym terminie.
              </p>
            </div>
          </div>
          <div class="col-md-4 mb-4">
            <div class="next-step-card">
              <div class="step-icon mb-3">
                <i class="fas fa-map-marker-alt fa-2x"></i>
              </div>
              <h4>Przyjdź na wizytę</h4>
              <p class="text-muted">
                Prosimy o przybycie 5-10 minut przed umówionym terminem. 
                Adres i wskazówki dojazdu znajdziesz w e-mailu potwierdzającym.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Important Information -->
<section class="preparation-info py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 mx-auto">
        <div class="info-box">
          <h3 class="mb-4"><i class="fas fa-lightbulb mr-2"></i>Jak przygotować się do wizyty?</h3>
          <div class="row">
            <div class="col-md-6 mb-3">
              <div class="preparation-item">
                <i class="fas fa-clock text-primary mr-2"></i>
                <strong>Punktualność</strong>
                <p class="text-muted mb-0">Przyjdź 5-10 minut wcześniej, aby spokojnie się zarejestrować</p>
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <div class="preparation-item">
                <i class="fas fa-id-card text-primary mr-2"></i>
                <strong>Dokument tożsamości</strong>
                <p class="text-muted mb-0">Przygotuj dowód osobisty lub inny dokument ze zdjęciem</p>
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <div class="preparation-item">
                <i class="fas fa-sticky-note text-primary mr-2"></i>
                <strong>Notatki</strong>
                <p class="text-muted mb-0">Możesz przygotować notatki z pytaniami lub tematami do omówienia</p>
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <div class="preparation-item">
                <i class="fas fa-mobile-alt text-primary mr-2"></i>
                <strong>Kontakt</strong>
                <p class="text-muted mb-0">Upewnij się, że mamy aktualny numer telefonu do Ciebie</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Contact Information -->
<section class="quick-contact py-5 bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 mx-auto">
        <div class="contact-box text-center">
          <h3 class="mb-4">Kontakt w razie pytań</h3>
          <p class="lead text-muted mb-4">
            Jeśli masz jakiekolwiek pytania lub potrzebujesz zmienić termin wizyty, skontaktuj się z nami
          </p>
          <div class="contact-methods">
            <div class="row">
              <div class="col-md-4 mb-3">
                <a href="tel:{{ site.contact.phone.val }}" class="contact-method-link">
                  <i class="fas fa-phone fa-2x mb-2"></i>
                  <p class="mb-0"><strong>Telefon</strong></p>
                  <p class="text-muted">{{ site.contact.phone.formatted }}</p>
                </a>
              </div>
              <div class="col-md-4 mb-3">
                <a href="mailto:{{ site.contact.email }}" class="contact-method-link">
                  <i class="fas fa-envelope fa-2x mb-2"></i>
                  <p class="mb-0"><strong>E-mail</strong></p>
                  <p class="text-muted">{{ site.contact.email }}</p>
                </a>
              </div>
              <div class="col-md-4 mb-3">
                <a href="/kontakt" class="contact-method-link">
                  <i class="fas fa-comments fa-2x mb-2"></i>
                  <p class="mb-0"><strong>Formularz</strong></p>
                  <p class="text-muted">Napisz do nas</p>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Cancellation Policy -->
<section class="policy-section py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 mx-auto">
        <div class="policy-box">
          <h3 class="mb-4"><i class="fas fa-info-circle mr-2"></i>Ważne informacje</h3>
          <div class="alert alert-warning">
            <h5 class="alert-heading"><i class="fas fa-exclamation-triangle mr-2"></i>Polityka odwoływania wizyt</h5>
            <p class="mb-0">
              W przypadku konieczności odwołania wizyty, prosimy o kontakt <strong>najpóźniej 24 godziny przed terminem</strong>. 
              Wizyty odwołane później mogą podlegać opłacie manipulacyjnej.
            </p>
          </div>
          <div class="additional-info mt-4">
            <h5>Pozostałe informacje:</h5>
            <ul class="info-list">
              <li><i class="fas fa-check text-success mr-2"></i>Pierwsza wizyta trwa standardowo 50 minut</li>
              <li><i class="fas fa-check text-success mr-2"></i>Zapewniamy pełną poufność i dyskrecję</li>
              <li><i class="fas fa-check text-success mr-2"></i>Możliwość konsultacji online (jeśli została wybrana)</li>
              <li><i class="fas fa-check text-success mr-2"></i>Parking dostępny przed budynkiem</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Location Section -->
<section class="location-section py-5 bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-10 mx-auto">
        <h3 class="text-center mb-4">Lokalizacja</h3>
        <div class="row align-items-center">
          <div class="col-md-6 mb-4 mb-md-0">
            <div class="location-info">
              <h5><i class="fas fa-map-marker-alt text-primary mr-2"></i>EVEMED</h5>
              <p class="text-muted mb-3">
                <strong>Adres:</strong><br>
                {{ site.contact.address1 }}<br>
                {{ site.contact.address2 }}<br>
                {{ site.contact.address3 }}<br>
              </p>
              <p class="text-muted mb-3">
                <strong>Dojazd:</strong><br>
                Tramwaj: 18, 19, 24 (przystanek Michalczyka)<br>
                Autobus: 102, 103, 122, 127 (przystanek Inowrocławska)
              </p>
              <a href="{{ site.google.maps.url }}" target="_blank" class="btn btn-outline-primary">
                <i class="fas fa-directions mr-2"></i>Wyznacz trasę
              </a>
            </div>
          </div>
          <div class="col-md-6">
            <div class="map-container">
              <iframe 
                src="https://www.google.com/maps/embed?pb={{ site.google.maps.pin }}"
                width="100%" 
                height="300" 
                style="border:0; border-radius: 8px;" 
                allowfullscreen="" 
                loading="lazy">
              </iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- CTA Section -->
<section class="cta-section py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 mx-auto text-center">
        <h3 class="mb-4">Zapoznaj się z naszymi usługami</h3>
        <p class="lead text-muted mb-4">
          Dowiedz się więcej o naszym zespole i oferowanych formach terapii
        </p>
        <div class="cta-buttons">
          <a href="/#o-nas" class="btn btn-primary btn-lg mr-3 mb-3">
            <i class="fas fa-users mr-2"></i>Nasz zespół
          </a>
          <a href="/#uslugi" class="btn btn-outline-primary btn-lg mb-3">
            <i class="fas fa-list-ul mr-2"></i>Nasze usługi
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Social Proof -->
<section class="social-proof py-5 bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 mx-auto text-center">
        <p class="text-muted mb-4">
          <i class="fas fa-quote-left fa-2x text-primary mb-3"></i>
        </p>
        <blockquote class="blockquote">
          <p class="mb-4">
            "Profesjonalna opieka i przyjazna atmosfera. Czuję się tu bezpiecznie 
            i mogę otwarcie rozmawiać o swoich problemach."
          </p>
          <footer class="blockquote-footer">
            Pacjent EVEMED
          </footer>
        </blockquote>
        <div class="trust-badges mt-4">
          <span class="badge badge-light p-3 mr-2">
            <i class="fas fa-shield-alt text-success"></i> Poufność gwarantowana
          </span>
          <span class="badge badge-light p-3 mr-2">
            <i class="fas fa-certificate text-primary"></i> Certyfikowani specjaliści
          </span>
          <span class="badge badge-light p-3">
            <i class="fas fa-star text-warning"></i> Zadowoleni specjaliści
          </span>
        </div>
      </div>
    </div>
  </div>
</section>
