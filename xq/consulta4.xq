let $registros := (
for $resultado in //service/extradata order by $resultado/../basicData/name ascending
let $pow:= $resultado/categorias/categoria/item[.
/@name='Categoria']
where $pow='Terrazas'
let $paw:=$resultado/../basicData/web/text()
return
<div class="cuerpo_consulta">
<h3>Nombre: {$resultado/../basicData/name/text()}</h3>
<h3>Dirección: {$resultado/../geoData/address/text()}</h3>
<h3>Tipo de establecimiento: {$pow/text()}</h3>
<h3>Código postal: {$resultado/../geoData/zipcode/text()}</h3>
<h3>Página web: <a href="{$paw[1]}">{$resultado/../basicData/web/text()}</a></h3>
<br/>
<hr/>
</div>
)
let $suma:=count($registros)
return
<div class="resultado">
{$registros}
<h3 class="totales"> Número de resultados obtenidos: {$suma}</h3>
</div>