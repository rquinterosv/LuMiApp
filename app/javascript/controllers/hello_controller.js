import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('Holaaaa')
    $(".navbar-burger").click(function() {
      console.log('Chao')
          // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
          $(".navbar-burger").toggleClass("is-active");
          $(".navbar-menu").toggleClass("is-active");
    
      });
  }
}
