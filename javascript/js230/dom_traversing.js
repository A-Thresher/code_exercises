// // Child Nodes
// function countChildren(node) {
//   let directChildren = node.childNodes;
//   let indirectChildrenCount = 0;

//   for (let index = 0; index < directChildren.length; index += 1) {
//     indirectChildrenCount += countChildren(directChildren[index])
//                                .reduce((sum, el) => sum + el);
//   }

//   return [directChildren.length, indirectChildrenCount]
// }


// // Tracing the DOM Tree
// function domTreeTracer(nodeID) {
//   const treeArr = [];

//   (function collectSiblings(nodeID) {
//     let node = document.getElementById(nodeID);
//     let siblings = node.parentNode.children;
//     let sibNames = [].map.call(siblings, node => node.nodeName);
//     treeArr.push(sibNames);

//     if (nodeID > 1) {
//       nodeID = node.parentNode.id;
//       collectSiblings(nodeID);
//     }
//   })(nodeID);

//   return treeArr;
// }


// Tree Slicing
// function sliceTree(startID, endID) {
//   let startNode = document.getElementById(startID);
//   let endNode = document.getElementById(endID);

//   if (!startNode || !endNode) return undefined;

//   let nodeTrace = [endNode];

//   while (true) {
//     nodeTrace.unshift(nodeTrace[0].parentNode);

//     if (nodeTrace[0] === startNode) {
//       break;
//     } else if (nodeTrace[0] === document.body) {
//       return undefined;
//     }
//   }

//   return nodeTrace.map(node => node.nodeName);
// }


// // Coloring
// function colorGeneration(generation) {
//   let generations = [[].slice.call(document.body.children)];

//   while (generations.length !== generation) {
//     let newGen = generations[0].flatMap(node => {
//       return [].slice.call(node.children);
//     });

//     generations.unshift(newGen);
//   }

//   for (let index = 0; index < generations[0].length; index += 1) {
//     generations[0][index].classList.add('generation-color');
//   }
// }


// // Node Swap
// function nodeSwap(id1, id2) {
//   let element1 = document.getElementById(id1);
//   let element2 = document.getElementById(id2);

//   if (!element1 || !element2
//       || element1.contains(element2)
//       || element2.contains(element1)) {
//     return undefined;
//   }

//   let targetElement = document.createElement('HTMLElement');
//   element2.insertAdjacentElement('beforebegin', targetElement);

//   element1.insertAdjacentElement('beforebegin', element2);
//   targetElement.insertAdjacentElement('beforebegin', element1);

//   targetElement.remove();

//   return true;
// }


// // Nodes to Array
// function nodesToArr(node = document.body) {
//   let children = [...node.children].map(nodesToArr);
//   return [node.tagName, children];
// }


// // Array to Nodes
// function arrayToNodes(nodes) {
//   let parent = document.createElement(nodes[0]);

//   if (nodes[1].length > 0) {
//     nodes[1].forEach(node => {
//       parent.appendChild(arrayToNodes(node));
//     });
//   }

//   return parent;
// }

// const nodes = ["BODY",[["DIV",[["DIV",[]],["DIV",[["DIV",[]]]]]],["DIV",[]],["DIV",[["DIV",[]],["DIV",[]],["DIV",[]]]]]];
// document.body = arrayToNodes(nodes);


// Work Back
/*
<!doctype html>
<html>
  <head>
    <title>Title</title>
  </head>

  <body>
    <header>Header</header><main>
      <div>
        <section>
          <h1>H1</h1>
          <p>Hello</p>
          <p>World</p>
        </section>
      </div>
    </main><footer><span class="emphasis"></span></footer>
  </body>
</html>
*/


// HTML Imaging
/*
<!doctype html>
<html>
  <head>
    <title>HTML Imaging</title>
    <style type="text/css">
      .emphasis { font-weight: bold; }
      .light { color: gray; }
    </style>
  </head>
  <body>
    <header id="header">
      <h1 class="emphasis light">Dynamic Content</h1>
      <p>Hello World!</p>
    </header>
  </body>
</html>
*/
