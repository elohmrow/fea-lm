<div>
  [#list components as component]
 
    [#if component_index == 0]
      <div class="pure-g">
    [/#if]
 
        <div class="pure-u-1 ${component.size!}">
          [@cms.component content=component /]
        </div>
 
    [#if !component?has_next ]
      </div>
    [/#if]
 
  [/#list]
</div>
