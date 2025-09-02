const tagName = "x-ml-item-title";

export const XMLItemTitle = {
  tagName,
  [tagName]: class extends HTMLElement {
    constructor() {
      super();

      if (!this.shadowRoot) {
        const html = this.innerHTML;
        this.attachShadow({ mode: "open" });
        this.shadowRoot.innerHTML = html;
      }

      // example; targeted headings currently only appear in the
      // single item "post": 2025/01/exercising-xslt/
      const heading = this.shadowRoot.querySelector("h3");

      if (heading) {
        heading.addEventListener("mouseover", () => {
          heading.style.backgroundColor = "#ccc";
        });

        heading.addEventListener("mouseout", () => {
          heading.style.backgroundColor = "transparent";
        });
      }
    }
  },
};

if (!customElements.get(tagName)) {
  customElements.define(tagName, XMLItemTitle[XMLItemTitle.tagName]);
}
