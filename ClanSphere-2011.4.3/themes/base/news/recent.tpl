<!-- Añadir a css template -->
<style type="text/css">
article { display: block}
article div h1, article div span {display: inline-block; vertical-align: top }
.derecha { float: right;}
</style>
<!-- end añadir -->

<form method="post" action="{url:news_recent}">
<table class="forum" cellpadding="0" cellspacing="{page:cellspacing}" style="width:{page:width}">
 <tr>
  <td class="headb" colspan="3">{lang:mod_name} - {lang:recent}</td>
 </tr>
 <tr>
  <td class="leftb">{lang:category}
    {cats:dropdown}
    <input type="submit" name="submit" value="{lang:show}" />
  </td>
  <td class="leftb"><a href="{url:news_list}">{lang:list}</a></td>
  <td class="rightb">{head:pages}</td>
 </tr>
</table>
</form>

{loop:news}
<article>

    <div>
      <h1>{news:news_headline}</h1>
      <span>{news:categories_name} / {if:catimg}
        <img src="{page:path}{news:url_catimg}" style="float:right" alt="" />{stop:catimg}</span>
    </div>

    <p>{news:news_readmore}</p>

    <div>
      <span>{news:news_time} - {news:users_link}</span>
      <span class="derecha">{news:comments_link} ({news:comments_count}) </span>
    </div>
    
</article>
{stop:news}