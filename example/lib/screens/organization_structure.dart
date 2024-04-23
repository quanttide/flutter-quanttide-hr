import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphview/graphview.dart';


class OrganizationChart extends StatelessWidget {
  const OrganizationChart({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
        constrained: false,
        child: GraphView(
          graph: buildGraph(),
          algorithm: BuchheimWalkerAlgorithm(
              BuchheimWalkerConfiguration(),
              TreeEdgeRenderer(
                BuchheimWalkerConfiguration(),
              )
          ),
        paint: Paint()
          ..color = Colors.blue
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke,
        builder: (Node node) {
          // 返回节点的样式
          return GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("${node.key} tapped");
              }
          },
          child: CircleAvatar(
            child: Text(node.key?.value),
          ),
        );
      },
    )
    );
  }

  Graph buildGraph() {
    var graph = Graph();

    var root = Node.Id("CEO");

    var cto = Node.Id("CTO");
    var cmo = Node.Id("CMO");
    var devManager = Node.Id("Dev Manager");

    var dev1 = Node.Id("Dev 1");
    var dev2 = Node.Id("Dev 2");
    var dev3 = Node.Id("Dev 3");

    graph.addEdge(root, cto);
    graph.addEdge(root, cmo);
    graph.addEdge(cto, devManager);

    graph.addEdge(devManager, dev1);
    graph.addEdge(devManager, dev2);
    graph.addEdge(devManager, dev3);

    return graph;
  }
}
