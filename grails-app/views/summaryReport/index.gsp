<html>
    <head>
        <title>Summary Report</title>
        <meta name="layout" content="main"></meta>
    </head>
    <body>
    	<div class="nav">
            <span class="menuButton"><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
    	<formset>
		<legend>Create Summary Report For Year</legend>
		<g:form action="results">
			<label for="year">Year</label>
			<g:textField name="year" />
			<g:submitButton name="search" value="Create"/>
		</g:form>
		</formset>
    </body>
</html>
