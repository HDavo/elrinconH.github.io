for $resultado in //service/extradata order by $resultado/../../basicData/name
let $pow :=$resultado/categorias/categoria/item[./@name='Categoria']
where $pow='Discoteca'
let $fot:=$resultado/../multimedia/media/url
let $paw:=$resultado/../basicData/web/text()
return
<div class="cuerpo_consulta">
<h3>Nombre: {$resultado/../basicData/title/text()}</h3>
<h3>Dirección: {$resultado/../geoData/address/text()}</h3>
<h3>Página web: <a href="{$paw[1]}">{$resultado/../basicData/web/text()}</a></h3>
<h3>Teléfono: {$resultado/../basicData/phone/text}</h3>
<h3>Código postal: {$resultado/../geoData/zipcode/text()}</h3>
<img src="{$fot[1]}"/>
<hr/>
</div>