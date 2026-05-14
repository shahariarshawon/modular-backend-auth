# database table design for products, sellers table
<img width="1777" height="790" alt="DarazSellerPoint" src="https://github.com/user-attachments/assets/c16b2ee5-9c8f-4753-89bc-f82e7b9ffd6c" />

# Database Interview Questions & Answers

## 1. What is the difference between Primary Key and Foreign Key?

**Answer:**  
A **Primary Key** uniquely identifies each row in a table. It cannot be `NULL` or duplicated.

A **Foreign Key** is a column in one table that refers to the primary key of another table. It is used to create relationships between tables. A foreign key can contain duplicate values.

### Example

- `users.id` is the primary key of the `users` table.
- `posts.userId` is a foreign key in the `posts` table that references `users.id`.

---

## 2. Why is normalization important?

**Answer:**  
Normalization is important because database tables may contain repeated data, which can cause:

- storage waste
- update problems
- insertion anomalies
- deletion anomalies

To solve these issues, we normalize the database using forms like **1NF, 2NF, 3NF, 4NF, and 5NF**.

After normalization:

- data redundancy is reduced
- consistency improves
- relationships become clearer

### Example

If a `users` table stores `postId` and `postName`, but not every user publishes posts, this creates unnecessary null values and redundancy. In a normalized database, `users` and `posts` should be separate tables.

---

## 3. What is a JOIN?

**Answer:**  
A JOIN combines data from two or more tables based on a related column.

### Common types of JOIN

1. INNER JOIN  
2. LEFT JOIN  
3. RIGHT JOIN  
4. FULL OUTER JOIN  

### Example

```sql
SELECT products.name, sellers.shop_name
FROM products
JOIN sellers ON products.seller_id = sellers.id;
```

This query retrieves product names along with seller shop names.

---

## 4. Difference between SQL and MongoDB

**Answer:**

| SQL | MongoDB |
|-----|---------|
| Relational database | NoSQL document database |
| Uses tables and rows | Uses collections and documents |
| Fixed schema | Flexible schema |
| Uses SQL language | Uses JSON/BSON |

---

## 5. What is a composite key?

**Answer:**  
A composite key is made up of two or more columns that together uniquely identify a row.

### Example

In an `order_items` table:

- `orderId`
- `productId`

Together they identify a unique order item.

---

## 6. What is a weak entity?

**Answer:**  
A weak entity depends on another table (parent entity) and cannot exist independently.

### Example

A `product_reviews` table depends on:

- `products`
- `users`

Without a product or user, the review has no meaning. Therefore, `product_reviews` is a weak entity.

---

## 7. Why do we use constraints?

**Answer:**  
Constraints are used to enforce rules on database columns and maintain valid data.

### Common constraints

- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- NOT NULL
- CHECK
- DEFAULT

These constraints help prevent invalid or inconsistent data from being inserted.

---

## 8. Explain many-to-many relationship

**Answer:**  
A many-to-many relationship means:

- one record in table A can relate to many records in table B
- one record in table B can relate to many records in table A

### Example

**Products ↔ Tags**

- A product can have many tags
- A tag can belong to many products

This is usually handled using a junction table like `product_tags`.

---

## 9. Difference between Clustered and Non-Clustered Index

**Answer:**

### Clustered Index

- Determines the physical order of data in a table
- Only one clustered index per table
- Usually created on the primary key

### Non-Clustered Index

- Stores index separately from actual data
- Can have multiple per table
- Improves search performance for specific columns

---

## 10. Explain Database Sharding and Partitioning

**Answer:**

### Partitioning

Partitioning divides a large table into smaller parts within the same database server.

### Example

Orders table:

- `orders_2024`
- `orders_2025`

Used when a table becomes very large.

### Sharding

Sharding splits data across multiple database servers.

### Example

Users data distributed by region:

- Server 1 → Asia users  
- Server 2 → Europe users  
- Server 3 → USA users  

Used when one server cannot handle all traffic or data.

---


# Login API test result:
![alt text](image.png)

# Register API test result:
![alt text](image-1.png)
