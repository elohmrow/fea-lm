[#if (ctx.getParameter("detail")?has_content)]


  [#assign tour = cmsfn.contentById(ctx.getParameter("detail"),"tours")]
  ${ jsonfn.from(tour).addAll().expand("image","dam").print() }
  
[#else]

  [#assign tours = cmsfn.contentByPath("/travel")]
  ${ jsonfn.fromChildNodesOf(tours).addAll().print() }
  
[/#if]
