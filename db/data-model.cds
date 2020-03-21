namespace demo.sap;

// using { managed } from '@sap/cds/common';
using { cuid, managed, Country } from '@sap/cds/common';

entity Addresses: cuid {
	city: String;
	country: Country;
	owner: Association to Customers;
}

entity Customers: cuid {
	addresses: Association to many Addresses on addresses.owner = $self;
	name: String;
}

entity Products: cuid {
	name: String;
	quantity: Integer;
	unit: String;
}

entity SalesOrders: cuid, managed {
	description: String;
	customer: Association to Customers;
	items : Composition of many OrderItems on items.salesOrder = $self;
	deliveries: Association to many Deliveries on deliveries.salesOrder = $self;
}

entity OrderItems {
	key ID: String;
	key salesOrder: Association to SalesOrders;
	product: Association to Products;
	quantity: Integer;
	schedules: Composition of many ScheduleLines on schedules.orderItem = $self;
}

entity ScheduleLines {
	key ID: String;
	key orderItem: Association to OrderItems;
	plannedDate: Date;
	product: Association to Products;
	quantity: Integer;
}

entity Deliveries: cuid, managed {
	salesOrder: Association to SalesOrders;
	startTime: Date;
	completeTime: Date;
}

