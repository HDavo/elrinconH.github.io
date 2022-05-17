for $resultado in //service/basicData order by $resultado/../../basicData/name
where $resultado/body[contains(. ,'Madrid Río')]
let $pow:= $resultado/../extradata/categorias/categoria/item[.
/@name='Categoria']
let $paw:=$resultado/web/text()
return
<div class="cuerpo_consulta">
<h3>Nombre: {$resultado/name/text()}</h3>
<h3>Dirección: {$resultado/../geoData/address/text()}</h3>
<h3>Página web: <a href="{$paw[1]}">{$resultado/web/text()}</a></h3>
<h3>Código postal: {$resultado/../geoData/zipcode/text()}</h3>
<h3>Tipo de establecimiento: {$pow/text()}</h3>
<hr/>
<br/>
</div>
