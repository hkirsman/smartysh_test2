{strip}
  {php}
  global $site_dir, $smarty;

  $width = $smarty->getTemplateVars("width");
  $height = $smarty->getTemplateVars("height");

  if ( !isset($width) && !isset($height) ) { 
    $full_image_path = $site_dir . "/images/".$smarty->tpl_vars["file"]->value;
    list($width, $height) = getimagesize($full_image_path);
  }
  $smarty->assign("width",$width);
  $smarty->assign("height",$height);
  {/php}
  {if isset($href) || isset($onclick)}
    <a href="{if isset($href)}{$href}{else}javascript:void(0){/if}"{if isset($onclick)} onclick="{$onclick}"{/if}{if isset($aclass)} class="{$aclass}"{/if}>
  {/if}
    <img {if $class}class="{$class}"{/if} src="images/{$file}" {if !$nodimension}width="{$width}" height="{$height}" {/if} alt="{$alt}" title="{$alt}" {if $align} style="float: {$align}"{/if}{if isset($border)} border="{$border}"{/if} />
  {if isset($href) || isset($onclick)}
    </a>
  {/if}

  {php}
    global $smarty;
    $smarty->clearAssign("width");
    $smarty->clearAssign("height");
  {/php}
{/strip}