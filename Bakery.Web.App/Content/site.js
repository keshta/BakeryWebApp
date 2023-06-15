

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


$(".onlyNumber").keydown(function (event) {

	if (event.shiftKey == true) {
		event.preventDefault();
	}

	if ((event.keyCode >= 48 && event.keyCode <= 57) ||
		(event.keyCode >= 96 && event.keyCode <= 105) ||
		event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 ||
		event.keyCode == 39 || event.keyCode == 46 || event.keyCode == 190) {

	} else {
		event.preventDefault();
	}

	if ($(this).val().indexOf('.') !== -1 && event.keyCode == 190)
		event.preventDefault();
	//if a decimal has been added, disable the "."-button
});



