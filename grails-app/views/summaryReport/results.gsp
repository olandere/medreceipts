<html>
    <head>
        <title>Summary Report</title>
        <meta name="layout" content="main"></meta>
    </head>
    <body>
    	<div class="nav">
            <span class="menuButton"><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link action="index">Create Again</g:link></span>
        </div>
    	<h1>Results</h1>
		<p>Searched ${net.aesw.forhome.Visit.count()} records
								for items matching <em>${year}</em>.
				Found <strong>${visits.size()}</strong> hits.
		</p>
		<div class="list">
			<table>
				<thead>
					<tr>
						<th>Date</th>
						<th>Person</th>
						<th>Provider</th>
						<th>Copay</th>
						<th>FSA</th>
					</tr>
				</thead>
				<tbody>
					<g:each var="visit" in="${visits}">
						<tr>
							<td>${visit.dateOfVisit}</td>
							<td>${visit.person}</td>
							<td>${visit.provider}</td>
							<td><g:formatNumber number="${visit.copay}" type="currency" currencyCode="USD"/></td>
							<td>${visit.paidWithFSA}</td>
						</tr>
					</g:each>
				</tbody>
			</table>
		</div>
		
		<p>Paid (FSA): <g:formatNumber number="${sumFsa}" type="currency" currencyCode="USD"/></p>
		<p>Paid (not FSA): <g:formatNumber number="${sumNotFsa}" type="currency" currencyCode="USD"/></p>
    </body>
</html>