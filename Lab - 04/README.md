# E-Commerce Database Schema Design

## Overview
This project implements a PostgreSQL schema for an e-commerce platform.

## Features
- Users, Products, Orders, Payments, Inventory
- JSONB used for dynamic product attributes
- Foreign keys ensure relational integrity

## JSONB Example
{
  "color": "black",
  "size": "9",
  "brand": "Adidas"
}

## Advantages
- Flexible schema design
- Scalable for different product types
- Efficient querying with JSONB

## Technologies Used
- PostgreSQL
- SQL