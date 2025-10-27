# Company-Employee RAP Managed System
   
This repository contains an SAP RAP (ABAP RESTful Application Programming Model) managed system for managing company and employee data. 
The solution provides a Fiori UI for interacting with company and employee records, supporting CRUD operations, associations, and rich UI annotations for an enhanced user experience.

## 🚀 Key Features

-This RAP managed system demonstrates a master-detail relationship between companies and employees, leveraging the latest SAP best practices:
- **Fiori Elements UI** with tabbed navigation and object page facets
- **RAP Managed Behavior:** CRUD operations for companies and employees
- **CDS Views:** Interface and projection views for reusability and service exposure
- **UI Annotations:** Facets, field groups, and other annotations for a modern Fiori UI
- **OData V2 Exposure:** Service binding for external and UI access


## 📦 Data Model

### 1.  Two main database tables form the foundation:

- **zan_company**  
  - `company_id`, `employee_id`, `company_name`, `material_number`, `headquarter`, `pincode`

- **zan_employee**  
  - `employee_id`, `company_id`, `employee_name`, `role`, `city`, `joining_date`, `mobile_number`, `email_address`, `salary`, `currency_code`

### 2. Relationship  
- The relationship is established through `company_id` .

---

## 🏗️ RAP Artifacts

### Interface CDS Views

-**`ZI_COMPANY_AND`**: Root view entity for companies
-**`ZI_EMPLOYEE_AND`**: Child view entity for employees, associated with `ZI_COMPANY_AND`

### Projection CDS Views

-**`ZC_COMPANY`**: Projection for companies (exposed as `company`)
-**`ZC_EMPLOYEE`**: Projection for employees (exposed as `employee`)

### Metadata Extensions

- **`ZME_COMPANY`**: Metadata extension for `ZC_COMPANY`  
- **`ZME_EMP`**: Metadata extension for `ZC_EMPLOYEE`  
  - Uses `@UI.facet` and other UI annotations to generate tabs and enhance the object page

### Behavior Definitions

- **Behavior Definition**: Defined on root interface view (`ZI_COMPANY_AND`) for create, update, delete
- **Behavior Projection**: On root projection view (`ZC_COMPANY`)

## Service Exposure

- **`ZANAND_SD_11`**: Service definition exposing `ZC_COMPANY` and `ZC_EMPLOYEE` as entities `company` and `employee`
- **`ZANAND_SB_22`**: Service binding for OData V2, enabling UI and external access

## 💻 Fiori UI Highlights

- Object page with tabbed navigation (using `@UI.facet`)
- **Master-Detail Navigation**: Browse companies and view/manage associated employees
- **Rich Field Annotations**: For line items, field groups, and details



## 🖼️ Sample Screenshots

> _Below are some sample screenshots of the Fiori UI showcasing system features:_

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20183351.png?raw=true)

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20183407.png?raw=true)

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20183445.png?raw=true)

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20183543.png?raw=true)

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20183609.png?raw=true)

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20184534.png?raw=true)

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20184600.png?raw=true)

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20185152.png?raw=true)

![image alt](https://github.com/Anandamohanpatri/COMPANY_EMPLOYEE_RAP_MANAGED/blob/main/Screenshot%202025-10-10%20185554.png?raw=true)

## 📝 License

This project is licensed under the MIT License.

---

