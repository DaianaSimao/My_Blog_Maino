// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

document.addEventListener("turbo:submit-end", function(event) {
  if (event.target.matches("form#new_comment") && event.detail.success) {
    // Encontrar o Turbo Frame que contém os comentários
    const commentsFrame = document.getElementById("comments");
    // Recarregar o Turbo Frame
    Turbo.visit(window.location.href, { action: "replace", target: commentsFrame });
  }
});