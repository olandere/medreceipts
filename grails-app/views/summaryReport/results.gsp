<html>
    <head>
        <title>Summary Report</title>
        <meta name="layout" content="main"></meta>
    </head>
    <body>
    	<h1>Results</h1>
		<p>Searched ${net.aesw.forhome.Visit.count()} records
								for items matching <em>${year}</em>.
				Found <strong>${visits.size()}</strong> hits.
		</p>
		<ul>
			<g:each var="visit" in="${visits}">
				<li>${visit}</li>
			</g:each>
		</ul>
		<g:link action='index'>Create Again</g:link>
    </body>
</html>