import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  connect() {
  }

  submit(){
    const form = this.element;
    const formData = new FormData(form);

    const params = new URLSearchParams(formData);
    const newUrl = `${form.action}?${params.toString()}`;

    
    Turbo.visit(newUrl, { frame: "jobs" });
    history.pushState({}, "", newUrl);
  }
}
