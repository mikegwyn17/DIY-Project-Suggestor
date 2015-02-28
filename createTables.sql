CREATE TABLE Store_T{
Store_ID, NUMBER(10,0), NOT NULL,
CONSTRAINT Store_PK PRIMARY KEY (Store_ID)};

CREATE TABLE Shelf_T{
Shelf_ID IDENTITY (1,1) PRIMARY KEY,
Shelf_type VARCHAR(1) NOT NULL,
Shelf_length NUMBER(3,0) NOT NULL,
Shelf_height NUMBER(3,0) NOT NULL,
Shelf_aisle_number NUMBER(4,0) NOT NULL,
Shelf_aisle_number2 NUMBER(4,0) NOT NULL};

CREATE TABLE Item_T{
Item_UPC VARCHAR2 (14) NOT NULL,
Item_height NUMBER(3,0) NOT NULL,
Item_length NUMBER(3,0) NOT NULL,
Item_xPos NUMBER(3,0) NOT NULL,
Item_yPos NUMBER(3,0) NOT NULL
Item_Shelf_ID NUMBER(1,1) NOT NULL,
CONSTRAINT Item_FK FOREIGN KEY Shelf_ID REFERENCES Shelf_T (Shelf_ID),
CONSTRAINT Item_PK PRIMARY KEY (Item_UPC)};

CREATE PROCEDURE AddToStore @store, @shelf
INSERT INTO tb_shelves_in_store (store_id, shelf_id) VALUES (@store, @shelf)

CREATE PROCEDURE AddToShelf @shelf, @item

