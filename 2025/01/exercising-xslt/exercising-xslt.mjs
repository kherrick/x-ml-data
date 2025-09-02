function nodeSelectorAll(node, selector) {
  const nodes = [...node.querySelectorAll(selector)];
  const nodeIterator = document.createNodeIterator(
    node,
    NodeFilter.SHOW_ELEMENT,
    function(node) {
      if (node instanceof Element) {
        if (node.shadowRoot) {
          return NodeFilter.FILTER_ACCEPT;
        }
      }

      return NodeFilter.FILTER_REJECT;
    }
  );

  let currentNode = nodeIterator.nextNode();

  while (currentNode) {
    nodes.push(
      ...nodeSelectorAll(currentNode.shadowRoot, selector)
    );
    currentNode = nodeIterator.nextNode();
  }

  return nodes;
}

function nodeSelect(selector) {
  return nodeSelectorAll(document, selector)[0];
}

const exercisingXsltBaseHref =
  nodeSelect("[data-exercising-xslt-base-href")?.dataset?.exercisingXsltBaseHref;

// setup a new DOM and XSLT processor
const domParser = new DOMParser();
const xsltProcessor = new XSLTProcessor();

// load the XSLT file
const xslResponse = await fetch(
  exercisingXsltBaseHref + "2025/01/exercising-xslt/exercising-xslt.xsl",
);

const xslText = await xslResponse.text();
const xslStylesheet = domParser.parseFromString(
  xslText,
  "application/xml",
);

xsltProcessor.importStylesheet(xslStylesheet);

// load the XML file for the current item
const xmlResponse = await fetch(
  exercisingXsltBaseHref + "2025/01/exercising-xslt/index.xml"
);

const xmlText = await xmlResponse.text();

const xmlDoc = domParser.parseFromString(
  xmlText.replaceAll(
    exercisingXsltBaseHref,
    document.querySelector('base').href
  ),
  "application/xml"
);

// append the result to the target in the dom
const result = xsltProcessor.transformToFragment(xmlDoc, document);
nodeSelect("#exercising-xslt-target").append(result);
