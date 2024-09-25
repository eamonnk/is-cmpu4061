# Week 2

## 

### Cardinality?

### Entry Relationship Model

- relationbship - the logical 
- Relationships are ,apped with entities in various ways
- Matting cardinalities 



### Tips on building entity relationship diagrams

- Nouns - clues to the entities
- ?


### E-R Diagram Notation

- Peter Chen Notation
    - Uses numbers
- 
- Bachman Notation (or more commonly Crows Feet)
    - Uses symbols


### E-R Diagram Notation

- Verbs

### E-R Sioagram : SASttributes

- Attribute can be shown on ER models
    - Theu appear inside ovals and are attached ot their entity
    - NOte (try reduce the information that is needed)

### E-R Diagram Notation
- Lists of attributes cna be developed as yo go

### Exercise
- A restaurant owner hires you to create a db for their business. They need to keep track of customer details (for marketign purposes). A good mgmt of 
    - orders
- can you discuss the **requirements* and come up with a list of entites and attributes that will eb required for the DB

write your final lists. One member of the group will present them to the whole class

- answers
    - entities
        - Customers
        - Orders
        - Order items
        - Menu
        - Staff
        - Payment type

INclude a list of assumptions in your diagram, cna still fix it if it doesn't refelect real world but it calls everything out and makes it clear, covers you

### E-R Diagrams : Relationships

- A relayionship acan also have descriptive attributes

### E-R Diagrams : OPtionality and cardinality

- symbols at the end ofg the relatyionship lines the OPtionality and cardinality...
- 
- Optionality is of twotypes
    - 1. Mandatory Rel: associuated
    - 2. OPtionsal Trel: There may eb instcnces of the first entity wjocj are not associated with any instacne of the second entity
        - for example, employee-spuse rel has to be optional because there coudl eb unmarrried employees. 
- Cardinality is of three types
    - 1 to 1 Rel
        - an isnance of the first entity is assoc with only one instance of the 
        - one entity from entity set A can be associaued with at most1 in entiuty B
        - 1 to many
            - one instanmce oif the first entity is related to manyinstanmed of the dsecvoind entity
            - 1 entity from A cna be assoc with more than one from B BUT B can only be assoc with 1 from A
            - i.e. staff and dept (depty cna have manyeployess but employessc an only ahve 1 dept)
    Many-to-Many Rel
        - 1 from A can be > 1 entity from B and vice versa
        - 
        - graphic  > first oen is optionality second one cardinality...in diagframs..

The ERD modelling process

- Initiallyu...
    1. id entities
    2. refine the model
    3.  decide relationships con#straints
     check for completeness
    - add list of assumptions
    - 

Summary: constructing an E-R model
1. ID entities
1. List the initial attributes of each entity
1. Mark the primary Keys
1. Define the relationships
1. Describe the cardinality & optionality of the relationships
1. Complete the list of attributes
1. create list of assumptions
1. 
tocreate diagram
ID Nouns (company/office/employees/owners)
ID verbs go into relattionhsip 