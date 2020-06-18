$(document).ready(function () {
    $("#menu").kendoMenu();

    $("#drawer").kendoDrawer({
        template: "<ul> \
                    <li data-role='drawer-item' class='k-state-selected'><span class='k-icon k-i-inbox'></span><span class='k-item-text'>Inbox</span></li> \
                    <li data-role='drawer-separator'></li> \
                    <li data-role='drawer-item'><span class='k-icon k-i-notification k-i-bell'></span><span class='k-item-text'>Notifications</span></li> \
                    <li data-role='drawer-item'><span class='k-icon k-i-calendar'></span><span class='k-item-text'>Calendar</span></li> \
                    <li data-role='drawer-separator'></li> \
                    <li data-role='drawer-item'><span class='k-icon k-i-hyperlink-email'></span><span class='k-item-text'>Attachments</span></li> \
                    <li data-role='drawer-item'><span class='k-icon k-i-star-outline k-i-bookmark-outline'></span><span class='k-item-text'>Favourites</span></li> \
                  </ul>",
        mode: "push",
        mini: true,
        itemClick: function (e) {
            if(!e.item.hasClass("k-drawer-separator")){
                e.sender.drawerContainer.find("#drawer-content > div").addClass("hidden");
                e.sender.drawerContainer.find("#drawer-content").find("#" + e.item.find(".k-item-text").text()).removeClass("hidden");
            }
        },
        position: 'right',
        minHeight: 330,
        swipeToOpen: true
    });

    $("#grid").kendoGrid({
        dataSource: {
            type: "odata",
            transport: {
                read: "https://demos.telerik.com/kendo-ui/service/Northwind.svc/Customers"
            },
            pageSize: 20
        },
        height: 550,
        groupable: true,
        sortable: true,
        pageable: {
            refresh: true,
            pageSizes: true,
            buttonCount: 5
        },
        columns: [{
            template: "<div class='customer-photo'" +
            "style='background-image: url(../content/web/Customers/#:data.CustomerID#.jpg);'></div>" +
            "<div class='customer-name'>#: ContactName #</div>",
            field: "ContactName",
            title: "Contact Name",
            width: 240
        }, {
            field: "ContactTitle",
            title: "Contact Title"
        }, {
            field: "CompanyName",
            title: "Company Name"
        }, {
            field: "Country",
            width: 150
        }]
    });
});

function toggleDrawer() {
    var drawerInstance = $("#drawer").data().kendoDrawer;
    var drawerContainer = drawerInstance.drawerContainer;

    if(drawerContainer.hasClass("k-drawer-expanded")) {
        drawerInstance.hide();
    } else {
        drawerInstance.show();
    }
}