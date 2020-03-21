using { demo.sap, sap.common } from '../db/data-model';

service CatalogService {


	
	// entity ServiceOrder as projection on sap.ServiceOrder;
	// entity OrderItem as projection on sap.OrderItem;
	// entity Stocks as projection on sap.Stocks;

	// entity Books as projection on sap.Books;
	// entity Authors as projection on sap.Authors;
	// entity Orders as projection on sap.Orders;  
	// entity Items as projection on sap.Items;

	// entity ServiceOrder as projection on sap.ServiceOrder;
	// entity OrderItem as projection on sap.OrderItem;
	// entity ScheduleItem as projection on sap.ScheduleItem;
	// entity Customer as projection on sap.Customer;
	// entity Supply as projection on sap.Supply;
	// entity Address as projection on sap.Address;

	// entity ShopOrder as projection on sap.ShopOrder;
	// entity OrderOperation as projection on sap.OrderOperation;



	entity Customers as projection on sap.Customers;
	entity SalesOrders as projection on sap.SalesOrders;
	entity OrderItems as projection on sap.OrderItems;
	entity ScheduleLines as projection on sap.ScheduleLines;
	entity Deliveries as projection on sap.Deliveries;
	entity Products as projection on sap.Products;
	entity Addresses as projection on sap.Addresses;


}