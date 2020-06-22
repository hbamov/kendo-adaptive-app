$(document).ready(function () {
    var isMobile = Boolean(kendo.support.mobileOS);

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

    var crudServiceBaseUrl = "https://demos.telerik.com/kendo-ui/service",
                dataSource = new kendo.data.DataSource({
                    transport: {
                        read: {
                            url: crudServiceBaseUrl + "/Products",
                            dataType: "jsonp"
                        },
                        update: {
                            url: crudServiceBaseUrl + "/Products/Update",
                            dataType: "jsonp"
                        },
                        destroy: {
                            url: crudServiceBaseUrl + "/Products/Destroy",
                            dataType: "jsonp"
                        },
                        create: {
                            url: crudServiceBaseUrl + "/Products/Create",
                            dataType: "jsonp"
                        },
                        parameterMap: function (options, operation) {
                            if (operation !== "read" && options.models) {
                                return { models: kendo.stringify(options.models) };
                            }
                        }
                    },
                    batch: true,
                    pageSize: 20,
                    schema: {
                        model: {
                            id: "ProductID",
                            fields: {
                                ProductID: { editable: false, nullable: true },
                                ProductName: { validation: { required: true } },
                                UnitPrice: { type: "number", validation: { required: true, min: 1 } },
                                Discontinued: { type: "boolean" },
                                UnitsInStock: { type: "number", validation: { min: 0, required: true } }
                            }
                        }
                    }
                });

            $("#grid").kendoGrid({
                dataSource: dataSource,
                toolbar: ["create"],
                height: 450,
                mobile: true,
                sortable: true,
                pageable: true,
                resizable: true,
                filterable: true,
                columnMenu: true,
                columns: [
                    { field: "ProductName", title: "Product Name", filterable: { multi: true, search: true }, width: "120px" },
                    { field: "UnitPrice", title: "Unit Price", format: "{0:c}", width: "120px" },
                    { field: "UnitsInStock", title: "Units In Stock", width: "120px" },
                    { field: "Discontinued", width: "120px" },
                    { command: ["edit", "destroy"], title: "&nbsp;", width: "250px" }],
                editable: "popup"
            });

    if (isMobile) {
        $("#menu").hide();
        $("#drawer").hide();
        // $("#qr-wrap").hide();
        // $("#grid-wrap").show();
        // $("#grid").data("kendoGrid").resize();
    }
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