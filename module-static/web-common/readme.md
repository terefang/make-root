# libraries

* jquery – https://jquery.com/
* bootstrap 4,5 – https://getbootstrap.com/
* D3 – https://d3js.org/
* DNA-JS – https://dna-engine.org/
* BootBOX – http://bootboxjs.com/
* ChartJS – https://www.chartjs.org/ – https://github.com/chartjs/Chart.js
* PureCSS – https://purecss.io/
* material-design-iconic-font – https://github.com/zavoloklom/material-design-iconic-font
* Chosen – https://github.com/harvesthq/chosen/
* Boostrap Icons – https://github.com/twbs/icons/
* Rickshaw – https://github.com/shutterstock/rickshaw/
* CoreUI – https://github.com/coreui/coreui/
* Lodash – https://lodash.com/
* Tabulator Tables – https://tabulator.info/ – https://github.com/olifolkerd/tabulator/
* jquery-bootgrid – http://www.jquery-bootgrid.com/ 
* js-cookie – https://github.com/js-cookie/js-cookie 
* jquery-form – https://github.com/jquery-form/form
* jquery-serializeJSON – https://github.com/marioizquierdo/jquery.serializeJSON
* querybuilder – https://querybuilder.js.org/ – https://github.com/mistic100/jQuery-QueryBuilder
* glyphicon – https://www.glyphicons.com/ – https://www.jsdelivr.com/package/npm/owp.glyphicons?tab=files
* htmx – https://www.htmx.org
* datatables – https://datatables.net
* echarts – https://echarts.apache.org/
* alertifyjs https://alertifyjs.com

## nginx

```
location /common/ {
    root /var/www;
    add_header Cache-Control  "max-age=360000, immutable";
    ...
}
```

## caddy

```
handle_path /common/* {
    root /var/www/common
    header Cache-Control  "max-age=360000, immutable"
    ...
}
```
