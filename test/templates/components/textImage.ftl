<div class="${def.parameters.divClass!"default-text-image"}">
    ${cmsfn.decode(content).text!}
     
    [#if  content.image?has_content]
        <img alt="Using cmsfn object." src="${cmsfn.link(content.image)}">
    [/#if]
     
</div>
