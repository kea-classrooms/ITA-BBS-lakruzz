```mermaid
erDiagram
    Customer {
        id int PK
        name varchar
        email varchar
        phone varchar
        address varchar
    }
    Order {
        id int PK
        date date
        total decimal
    }
    Product {
        id int PK
        name varchar
        description varchar
        price decimal
    }
    Category {
        id int PK
        name varchar
    }
    OrderDetail {
        id int PK
        order_id int FK
        product_id int FK
        quantity int
        price decimal
    }
    Employee {
        id int PK
        name varchar
        email varchar
        phone varchar
        hire_date date
    }
    Supplier {
        id int PK
        name varchar
        email varchar
        phone varchar
        address varchar
    }
    Warehouse {
        id int PK
        name varchar
        address varchar
    }
    Inventory {
        id int PK
        product_id int FK
        warehouse_id int FK
        quantity int
    }
    Shipment {
        id int PK
        order_id int FK
        warehouse_id int FK
        employee_id int FK
        shipment_date date
    }
    
    Customer ||--o{ Order : places
    Order ||--|{ OrderDetail : contains
    OrderDetail }|--|| Product : includes
    Product }|--|| Category : "belongs to"
    Inventory }|--|| Warehouse : "located in"
    Inventory }|--|| Product : contains
    Shipment }|--|| Warehouse : "shipped from"
    Shipment }|--|| Order : shipped for
    Shipment }|--|| Employee : "handled by"
