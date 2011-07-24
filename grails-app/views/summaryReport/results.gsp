<html>
    <head>
        <title>Summary Report</title>
        <meta name="layout" content="main"></meta>
    </head>
    <body>
    	<div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link action="index">Create Again</g:link></span>
        </div>
    	<h1>Summary Report for Year <em>${year}</em></h1>
    	<div>
			<table>
				<tr>
					<td>Paid (FSA)</td>
					<td><g:formatNumber number="${sumFsa}" type="currency" currencyCode="USD"/></td>
				</tr>
				<tr>
					<td>Paid (HSA)</td>
					<td><g:formatNumber number="${sumHsa}" type="currency" currencyCode="USD"/></td>
				</tr>
				<tr>
					<td>Paid (neither FSA, HSA)</td>
					<td><g:formatNumber number="${sumOnUs}" type="currency" currencyCode="USD"/></td>
				</tr>
				<tr>
					<td>Miles</td>
					<td><g:formatNumber number="${miles}" type="number" maxFractionDigits="2"/></td>
				</tr>
			</table>
		</div>
		<p>Searched ${net.aesw.forhome.Visit.count()} records
								for not completed items matching <em>${year}</em>.
				Found <strong>${visits.size()}</strong> hits.
		</p>
		<div class="list">
			<table>
				<thead>
					<tr>
						<th></th>
						<th>Date</th>
						<th>Person</th>
						<th>Provider</th>
						<th>Copay</th>
						<th>FSA</th>
						<th>HSA</th>
						<th>Note</th>
					</tr>
				</thead>
				<tbody>
					<g:each var="visit" in="${visits}">
						<tr>
							<td><g:link controller="visit" action="show" id="${visit.id}">${visit.id}</g:link></td>
							<td>${visit.dateOfVisit}</td>
							<td>${visit.person}</td>
							<td>${visit.provider}</td>
							<td><g:formatNumber number="${visit.copay}" type="currency" currencyCode="USD"/></td>
							<td>${visit.paidWithFSA}</td>
							<td>${visit.paidWithHSA}</td>
							<td>${visit.note}</td>
						</tr>
					</g:each>
				</tbody>
			</table>
		</div>
    </body>
</html>