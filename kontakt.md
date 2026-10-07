---
last_modified: 2025-11-26
layout: page
title: "Kontakt – poradnia, ul. Inowrocławska 56 Wrocław"
description: "Kontakt z poradnią EVEMED: ul. Inowrocławska 56, Wrocław. Zadzwoń (+48) 724 314 798, napisz na poradnia@evemed.pl lub wyślij wiadomość przez formularz."
subtitle: Skontaktuj się z nami
permalink: /kontakt
---

<section class="contact-info-section py-5">
  <div class="container">
    <div class="row" itemscope itemtype="https://schema.org/MedicalBusiness">
      <a href="{{ site.google.maps.url }}" target="_blank" class="col-lg-4 col-md-6 mb-4">
        <div class="contact-info-card text-center" itemprop="address" itemscope itemtype="https://schema.org/PostalAddress">
          <div class="contact-icon mb-3">
            <i class="fas fa-map-marker-alt fa-3x text-primary"></i>
          </div>
          <h4>Adres</h4>
          <p class="text-muted">
            <span itemprop="streetAddress">{{ site.contact.address1 }}</span><br>
            <span itemprop="postalCode">{{ site.contact.address2 }}</span><br>
            <span itemprop="addressLocality">{{ site.contact.address3 }}</span><br>
            Polska
          </p>
        </div>
      </a>
      <a href="tel:{{ site.contact.phone.val }}" class="col-lg-4 col-md-6 mb-4">
        <div class="contact-info-card text-center">
          <div class="contact-icon mb-3">
            <i class="fas fa-phone fa-3x text-primary"></i>
          </div>
          <h4>Telefon</h4>
          <p class="text-muted" itemprop="telephone">
           {{ site.contact.phone.formatted }}<br>
          </p>
        </div>
      </a>
      <a href="mailto:{{ site.contact.email }}" class="col-lg-4 col-md-6 mb-4">
        <div class="contact-info-card text-center">
          <div class="contact-icon mb-3">
            <i class="fas fa-envelope fa-3x text-primary"></i>
          </div>
          <h4>Email</h4>
          <p class="text-muted" itemprop="email">
            {{ site.contact.email }}<br>
          </p>
        </div>
      </a>
    </div>
    <div class="row mt-4">
      <div class="col-lg-4 col-md-6 mb-4">
        <div class="contact-info-card text-center">
          <div class="contact-icon mb-3">
            <i class="fas fa-clock fa-3x text-primary"></i>
          </div>
          <h4>Godziny otwarcia</h4>
          <p class="text-muted">
            Poniedziałek - Piątek: 9:00 - 20:00<br>
            Sobota: Zamknięte<br>
            Niedziela: Zamknięte
          </p>
        </div>
      </div>
      <div class="col-lg-8 col-md-6 mb-4">
        <div class="contact-info-card">
          <div class="contact-icon text-center mb-3">
            <i class="fas fa-info-circle fa-3x text-primary"></i>
          </div>
          <h4 class="text-center">Informacje dodatkowe</h4>
          <p class="text-muted text-center">
            Wizyty odbywają się po wcześniejszym umówieniu.<br>
            Prosimy o punktualne przybycie na wizytę.<br>
            W razie konieczności odwołania wizyty, prosimy o kontakt najpóźniej 24h wcześniej.<br> <br>
            Zapisów przez telefon dokonują bezpośrednio nasi specjaliści, dlatego nie zawsze są w stanie odebrać. Jeśli chcesz skontaktować się telefonicznie, preferujemy kontakt SMS – na pewno oddzwonimy!
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Map Section -->
<section class="map-section py-5 bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center mb-4">
        <h2 class="section-heading">Jak do nas trafić</h2>
        <p class="text-muted">Znajdź nas na mapie</p>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <div class="map-container">
          <!-- Google Maps Embed - Replace with your actual coordinates -->
          <iframe 
            src="https://www.google.com/maps/embed?pb={{ site.google.maps.pin }}"
            width="100%" 
            height="450" 
            style="border:0; border-radius: 8px;" 
            allowfullscreen="" 
            loading="lazy" 
            referrerpolicy="no-referrer-when-downgrade">
          </iframe>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Contact Form Section -->
<section class="contact-form-section py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center mb-4">
        <h2 class="section-heading">Wyślij wiadomość</h2>
        <p class="text-muted">Wypełnij formularz, a skontaktujemy się z Tobą najszybciej jak to możliwe</p>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-8 mx-auto">
        <form id="contactForm"
          action="https://formspree.io/{% if site.formspree_form_path %}{{ site.formspree_form_path }}{% else %}{{ site.email }}{% endif %}"
          novalidate="novalidate" method="POST">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <input name="name" class="form-control" id="name" type="text"
                  placeholder="Imię i nazwisko*"
                  required="required" data-validation-required-message="Proszę podać imię i nazwisko.">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group d-none">
                <input name="username" class="form-control" id="username" type="text" tabindex="-1" autocomplete="off">
              </div>
              <div class="form-group">
                <input name="_replyto" class="form-control" id="email" type="email"
                  placeholder="Email*"
                  required="required" data-validation-required-message="Proszę podać adres email.">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <input name="phone" class="form-control" id="phone" type="tel"
                  placeholder="Numer telefonu">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <textarea name="message" class="form-control" id="message" rows="7"
                  placeholder="Wiadomość*"
                  required="required" data-validation-required-message="Proszę wpisać wiadomość."></textarea>
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <input type="hidden" name="_subject" id="email-subject" value="Kontakt ze strony EVEMED">
            <div class="clearfix"></div>
            <div class="col-lg-12 text-center">
              <div id="success"></div>
              <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase"
                type="submit">Wyślij wiadomość</button>
            </div>
            <input type="text" name="_gotcha" style="display:none">
            <input type="hidden" name="_next" value="/contact/?success=true" />
          </div>
        </form>
      </div>
    </div>
  </div>
</section>
<script src="/assets/js/contact_me.js"></script>
