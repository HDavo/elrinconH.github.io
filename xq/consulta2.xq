let $registros := (
for $resultado in //service/basicData order by $resultado/../../basicData/name
where $resultado/name[contains(., 'Museo')] or $resultado/name[contains(., 'museo')] or $resultado/body[contains(., 'Museo')]
let $pow:= $resultado/../extradata/categorias/categoria/item[.
/@name='Categoria']
let $paw:=$resultado/web/text()
return
<div class="cuerpo consulta">
<h3>Nombre: {$resultado/name/text()}</h3>
<h3>Dirección: {$resultado/../geoData/address/text()}</h3>
<h3>Tipo: {$pow/text()}</h3>
<h3>Página web: <a href="{$paw[1]}">{$resultado/web/text()}</a></h3>
<h3>Código postal: {$resultado/../geoData/zipcode/text()}</h3>
<br/>
<hr/>
</div>
)
let $suma:=count($registros)
return
let $suma:=count($registros)
return
<div class="resultado">
{$registros}
<h3 class="totales"> Número de resultados obtenidos: {$suma}</h3>
</div>