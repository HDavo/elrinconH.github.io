let $registros := (
for $resultado in //service/basicData
order by $resultado/title descending
where $resultado/../geoData/zipcode='28004' or $resultado/../geoData/zipcode='28012' or $resultado/../geoData/zipcode='28013'
where $resultado[starts-with( $resultado/phone, '(+34) 9') or starts-with($resultado/phone,'9')]
let $paw:=$resultado/web/text()
return
<div class="cuerpo_consulta">
<h3>{$resultado/title/text()}</h3>
<h3>Calle {$resultado/../geoData/address/text()}</h3>
<h3>Página web: <a href="{$paw[1]}">{$resultado/web/text()}</a></h3>
<h3>{$resultado/../geoData/zipcode/text()}</h3>
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