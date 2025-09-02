import "@material/web/all.js";
import { styles as typescaleStyles } from "@material/web/typography/md-typescale-styles.js";

document.adoptedStyleSheets.push(typescaleStyles.styleSheet);

// sidebar toggle functionality
function handleMenuButton() {
  const sidebar = globalThis.document.querySelector("aside");

  sidebar.classList.toggle("open");
}

// responsive additions
function handleMediaQuery({ matches }) {
  const sidebar = globalThis.document.querySelector("aside");

  if (matches) {
    sidebar.classList.add("open");
  } else {
    sidebar.classList.remove("open");
  }
}

function init() {
  // shell
  const shell = document.querySelector("#shell");

  if (shell) {
    shell.style.flexGrow = "1";
    shell.style.flexDirection = "row-reverse";
  }

  // aside
  const aside = document.querySelector("aside");
  if (aside) {
    aside.classList.remove("open");

    aside.style.backgroundColor = "var(--x-ml-aside-background-color)";
    aside.style.maxWidth = "50%";
    aside.style.textAlign = "initial";
    aside.style.flex = "initial";
  }

  // :root aside md-list-item-padding
  globalThis.document.documentElement.style.setProperty(
    "--aside-md-list-item-padding",
    "0"
  );

  // aside md-list-item [slot="start"]
  globalThis.document
    .querySelectorAll('aside md-list-item [slot="start"]')
    .forEach((el) => {
      el.style.display = "initial";
    });

  // aside md-list-item [slot="headline"]
  globalThis.document
    .querySelectorAll('aside md-list-item [slot="headline"]')
    .forEach((el) => {
      el.style.marginLeft = "initial";
    });

  // menu-button
  const menuButton = globalThis.document.getElementById("menu-button");
  menuButton.style.display = "flex";
  menuButton.querySelector("a").setAttribute("tabindex", "-1");
  menuButton.addEventListener("click", handleMenuButton);

  // responsive additions
  const matchMedia = globalThis.matchMedia("(min-width: 768px)");
  matchMedia.addEventListener("change", handleMediaQuery);
}

init();
