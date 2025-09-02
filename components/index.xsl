<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output doctype-public="" doctype-system="" indent="yes" method="html"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>
          <xsl:value-of select="normalize-space(/x-ml/x-ml-title)"/>
        </title>
        <base href="https://kherrick.github.io/x-ml-data/"/>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0, viewport-fit=cover" name="viewport"/>
        <meta name="description" content="x-ml-data"/>
        <meta name="theme-color" content="#000000"/>
        <meta name="revision" content="">
          <xsl:attribute name="content">
            <xsl:value-of select="normalize-space(/x-ml/x-ml-revision)"/>
          </xsl:attribute>
        </meta>
        <link rel="preconnect" href="https://fonts.gstatic.com/"/>
        <link rel="stylesheet" href="components/index.css"/>
        <link href="manifest.json" rel="manifest"/>
        <link href="data:image/x-icon;base64,AAABAAEAAQECAAEAAQA4AAAAFgAAACgAAAABAAAAAgAAAAEAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAEAAQECAAEAAQA4AAAAFgAAACgAAAABAAAAAgAAAAEAAQAAAAAAAAAAAAAAAAAAAAAAAAAA" rel="icon" type="image/x-icon"/>
        <link href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIAAQMAAADOtka5AAAAA1BMVEUAAACnej3aAAAANklEQVR42u3BAQEAAACCIP+vbkhAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB8G4IAAAFjdVCkAAAAAElFTkSuQmCC" rel="apple-touch-icon"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&amp;icon_names=article,home,info,mail,menu"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
        <script type="importmap">
          {
            "imports": {
              "@material/web/": "https://esm.run/@material/web/"
            }
          }
        </script>
        <script src="components/index.mjs" type="module"/>
        <script src="components/x-ml-item-title/x-ml-item-title.mjs" type="module"/>
        <script src="service-worker/init.mjs" type="module"/>
      </head>
      <body>
        <x-app>
          <link href="https://kherrick.github.io/x-ml-data/components/x-app/x-app.css" rel="stylesheet"/>
          <header>
            <md-icon-button aria-label="Open menu" id="menu-button" role="button">
              <a href="#menu-anchor">
                <svg xmlns="http://www.w3.org/2000/svg" height="1.5rem" viewBox="0 -960 960 960" width="1.5rem" fill="var(--x-ml-menu-button-icon-color)">
                  <path d="M120-680v-80h720v80H120Zm0 480v-80h720v80H120Zm0-240v-80h720v80H120Z"/>
                </svg>
              </a>
            </md-icon-button>

            <div class="header-container">
              <h1 class="md-typescale-headline-small">
                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="normalize-space(/x-ml/x-ml-link)"/>
                  </xsl:attribute>
                  <xsl:value-of select="normalize-space(/x-ml/x-ml-title)"/>
                </a>
              </h1>

              <span>
                <a aria-label="Github" href="https://github.com/kherrick/x-ml-data">
                  <svg aria-hidden="true" class="svg-inline--fa fa-github fa-w-16" data-icon="github" data-prefix="fab" focusable="false" role="img" style="height: 1.5rem; width: 1.5rem" viewBox="0 0 496 512" xmlns="http://www.w3.org/2000/svg">
                    <path d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z" fill="currentColor"/>
                  </svg>
                </a>
              </span>
            </div>
          </header>

          <div id="shell">
            <main>
              <xsl:for-each select="/x-ml/x-ml-items/x-ml-item-ref">
                <xsl:variable name="cleaned-path" select="normalize-space(translate(., '&#10;&#13;', ''))"/>
                <xsl:variable name="content" select="document($cleaned-path)"/>

                <xsl:for-each select="$content/x-ml/x-ml-item">
                  <article>
                    <link href="https://kherrick.github.io/x-ml-data/components/x-ml-item/x-ml-item.css" rel="stylesheet"/>
                    <x-ml-item-title>
                      <link href="components/x-ml-item-title/x-ml-item-title.css" rel="stylesheet"/>
                      <h2>
                        <a>
                          <xsl:attribute name="href">
                            <xsl:value-of select="normalize-space(x-ml-item-link)"/>
                          </xsl:attribute>
                          <xsl:value-of select="normalize-space(x-ml-item-title)"/>
                        </a>
                      </h2>
                    </x-ml-item-title>

                    <x-ml-item-date>
                      Published:
                      <time>
                        <xsl:value-of select="normalize-space(x-ml-item-date)"/>
                      </time>
                    </x-ml-item-date>

                    <xsl:copy-of select="x-ml-item-content"/>

                    <md-divider/>
                  </article>
                </xsl:for-each>
              </xsl:for-each>
            </main>

            <aside id="menu" role="complementary" class="open">
              <a id="menu-anchor"/>
              <h3 class="aside-header">Navigation</h3>
              <md-list>
                <a href="https://kherrick.github.io/x-ml-data/">
                  <md-list-item>
                    <div slot="headline">Home</div>
                    <md-icon slot="start">home</md-icon>
                  </md-list-item>
                </a>
              </md-list>
              <h3 class="aside-header">Links</h3>
              <md-list>
                <a href="https://kherrick.github.io/apps/">
                  <md-list-item>
                    <div slot="headline">Apps</div>
                    <!-- apps -->
                    <md-icon slot="start">
                      <svg xmlns="http://www.w3.org/2000/svg" height="1.5rem" viewBox="0 -960 960 960" width="1.5rem" fill="var(--x-ml-icon-color)">
                        <path d="M240-160q-33 0-56.5-23.5T160-240q0-33 23.5-56.5T240-320q33 0 56.5 23.5T320-240q0 33-23.5 56.5T240-160Zm240 0q-33 0-56.5-23.5T400-240q0-33 23.5-56.5T480-320q33 0 56.5 23.5T560-240q0 33-23.5 56.5T480-160Zm240 0q-33 0-56.5-23.5T640-240q0-33 23.5-56.5T720-320q33 0 56.5 23.5T800-240q0 33-23.5 56.5T720-160ZM240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400ZM240-640q-33 0-56.5-23.5T160-720q0-33 23.5-56.5T240-800q33 0 56.5 23.5T320-720q0 33-23.5 56.5T240-640Zm240 0q-33 0-56.5-23.5T400-720q0-33 23.5-56.5T480-800q33 0 56.5 23.5T560-720q0 33-23.5 56.5T480-640Zm240 0q-33 0-56.5-23.5T640-720q0-33 23.5-56.5T720-800q33 0 56.5 23.5T800-720q0 33-23.5 56.5T720-640Z"/>
                      </svg>
                    </md-icon>
                  </md-list-item>
                </a>
                <md-divider/>
                <a href="https://bible-tools.github.io/app/">
                  <md-list-item>
                    <div slot="headline">Bible Tools</div>
                    <!-- book -->
                    <md-icon slot="start">
                      <svg xmlns="http://www.w3.org/2000/svg" height="1.5rem" viewBox="0 -960 960 960" width="1.5rem" fill="var(--x-ml-icon-color)">
                        <path d="M240-80q-33 0-56.5-23.5T160-160v-640q0-33 23.5-56.5T240-880h480q33 0 56.5 23.5T800-800v640q0 33-23.5 56.5T720-80H240Zm0-80h480v-640h-80v280l-100-60-100 60v-280H240v640Zm0 0v-640 640Zm200-360 100-60 100 60-100-60-100 60Z"/>
                      </svg>
                    </md-icon>
                  </md-list-item>
                </a>
                <md-divider/>
                <a href="https://plainandeasy.com/">
                  <md-list-item>
                    <div slot="headline">GIFWorks</div>
                    <!-- videocam -->
                    <md-icon slot="start">
                      <svg xmlns="http://www.w3.org/2000/svg" height="1.5rem" viewBox="0 -960 960 960" width="1.5rem" fill="var(--x-ml-icon-color)">
                        <path d="M160-160q-33 0-56.5-23.5T80-240v-480q0-33 23.5-56.5T160-800h480q33 0 56.5 23.5T720-720v180l160-160v440L720-420v180q0 33-23.5 56.5T640-160H160Zm0-80h480v-480H160v480Zm0 0v-480 480Z"/>
                      </svg>
                    </md-icon>
                  </md-list-item>
                </a>
                <md-divider/>
                <a href="https://kherrick.github.io/x-weather-app/">
                  <md-list-item>
                    <div slot="headline">XWeather App</div>
                    <!-- cloud -->
                    <md-icon slot="start">
                      <svg xmlns="http://www.w3.org/2000/svg" height="1.5rem" viewBox="0 -960 960 960" width="1.5rem" fill="var(--x-ml-icon-color)">
                        <path d="M260-160q-91 0-155.5-63T40-377q0-78 47-139t123-78q25-92 100-149t170-57q117 0 198.5 81.5T760-520q69 8 114.5 59.5T920-340q0 75-52.5 127.5T740-160H260Zm0-80h480q42 0 71-29t29-71q0-42-29-71t-71-29h-60v-80q0-83-58.5-141.5T480-720q-83 0-141.5 58.5T280-520h-20q-58 0-99 41t-41 99q0 58 41 99t99 41Zm220-240Z"/>
                      </svg>
                    </md-icon>
                  </md-list-item>
                </a>
                <md-divider/>
                <a href="https://kherrick.github.io/tfjs-component-playground/">
                  <md-list-item>
                    <div slot="headline">TFJS Component Playground</div>
                    <!-- smart_toy -->
                    <md-icon slot="start">
                      <svg xmlns="http://www.w3.org/2000/svg" height="1.5rem" viewBox="0 -960 960 960" width="1.5rem" fill="var(--x-ml-icon-color)">
                        <path d="M160-360q-50 0-85-35t-35-85q0-50 35-85t85-35v-80q0-33 23.5-56.5T240-760h120q0-50 35-85t85-35q50 0 85 35t35 85h120q33 0 56.5 23.5T800-680v80q50 0 85 35t35 85q0 50-35 85t-85 35v160q0 33-23.5 56.5T720-120H240q-33 0-56.5-23.5T160-200v-160Zm200-80q25 0 42.5-17.5T420-500q0-25-17.5-42.5T360-560q-25 0-42.5 17.5T300-500q0 25 17.5 42.5T360-440Zm240 0q25 0 42.5-17.5T660-500q0-25-17.5-42.5T600-560q-25 0-42.5 17.5T540-500q0 25 17.5 42.5T600-440ZM320-280h320v-80H320v80Zm-80 80h480v-480H240v480Zm240-240Z"/>
                      </svg>
                    </md-icon>
                  </md-list-item>
                </a>
              </md-list>
            </aside>
          </div>
          <script>
            globalThis.document.getElementById('menu').classList.remove('open');
          </script>
        </x-app>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>