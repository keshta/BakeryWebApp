

activeNavbar();

function activeNavbar() {
	var className = "active-nav";
	$("#mainNavbar li").removeClass(className);

	var path = window.location.pathname;
	var abc = path.split("/");

	if (abc.length > 1) {
		if (abc[1] != "" && abc[1] != null) {
			$('#mainNavbar li').each(function (i) {
				var url = window.location.pathname;
				var myPageName = url.substring(url.lastIndexOf('/') + 1);
				var href = $(this).find("a").attr("href").split("/");
				myPageName += myPageName.includes(".aspx")?"":".aspx";
				if (href[0] != "" && href[0] != null) {
					if (href[0].toLocaleLowerCase() == myPageName.toLocaleLowerCase()) {
						$(this).addClass(className);
						return false;
					}
				}
			});
		}
	}
}

function activeNavbarByPageName(pageName) {
	var className = "active-nav";
	$("#mainNavbar li").removeClass(className);

	var path = window.location.pathname;
	var abc = path.split("/");

	if (abc.length > 1) {
		if (abc[1] != "" && abc[1] != null) {
			$('#mainNavbar li').each(function (i) {
				debugger;
				var href = $(this).find("a").attr("href").split("/");
				var myPageName = pageName+(pageName.includes(".aspx") ? "" : ".aspx");
				if (href[0] != "" && href[0] != null) {
					if (href[0].toLocaleLowerCase() == myPageName.toLocaleLowerCase()) {
						$(this).addClass(className);
						return false;
					}
				}
			});
		}
	}
}


function openSearch() {
	document.getElementById("myOverlay").style.display = "block";
}

function closeSearch() {
	document.getElementById("myOverlay").style.display = "none";
}

function openUrl(url) {
	window.open(url, "_self");
}


