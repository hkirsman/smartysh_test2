{strip}
<object width="{if isset($width)}{$width}{else}595{/if}" height="{if isset($height)}{$height}{else}390{/if}">
  <param name="movie" value="http://www.youtube.com/v/{$video_id}?fs=1&amp;hl=en_US&amp;rel=0"></param>
  <param name="allowFullScreen" value="true"></param>
  <param name="allowscriptaccess" value="always"></param>
  <param name="wmode" value="transparent"></param>
  <embed src="http://www.youtube.com/v/{$video_id}?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="{if isset($width)}{$width}{else}595{/if}" height="{if isset($height)}{$height}{else}390{/if}" wmode="transparent"></embed>
</object>
{/strip}