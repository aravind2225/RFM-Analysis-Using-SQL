# RFM Analysis using SQL  

## 📌 Project Overview  
RFM analysis is a marketing technique used to analyze and segment customers based on their purchasing behavior.  
RFM stands for:  
- **Recency**: How recently a customer made a purchase.  
- **Frequency**: How often a customer makes a purchase.  
- **Monetary Value**: How much money a customer spends on purchases.  

This project demonstrates **RFM Analysis implementation using SQL** on a customer transactions dataset to segment customers and derive business insights.  

---

## 🚀 How RFM Analysis Works  
1. **Data Collection** – Gather customer transaction data including dates, amounts, and frequencies.  
2. **Scoring** – Assign scores for recency, frequency, and monetary values (e.g., 1–5 or Low–Medium–High).  
3. **Segmentation** – Combine the three scores to classify customers into segments such as:  
   - **High-High-High (5-5-5 / H-H-H)** → Highly valuable customers.  
   - **Low-Low-Low (1-1-1 / L-L-L)** → Low value customers.  

---

## ⚙️ Implementation Steps  
1. Import customer transaction dataset into **MySQL**.  
2. Identify key fields for analysis:  
   - **Customer ID**  
   - **Purchase Date** (formatted as `DATE`)  
   - **Transaction Amount** (numeric)  
3. Calculate RFM values:  
   - **Recency** → Difference between the last purchase date and today’s date.  
   - **Frequency** → Number of transactions per customer.  
   - **Monetary** → Total spend per customer.  
4. Generate **RFM Table** and assign **RFM Scores**.  
5. Segment customers into **High, Medium, and Low** categories.  

---

## 💻 Tech Stack  
- **Database**: MySQL  
- **Data Source**: CSV file of an E-Commerce store (imported into MySQL)  
- **Other Tools**: MS Excel, ChatGPT (For Domain Related Knowledge)   

---

## 📊 Business Benefits of RFM Analysis  
- 🎯 **Targeted Marketing** – Identify high-value customers for personalized campaigns.  
- 🔄 **Customer Retention** – Detect customers at risk of churn (low recency).  
- 📈 **Resource Allocation** – Focus marketing efforts on profitable customer segments.  
- 🛍️ **Product Development** – Understand spending behavior for better product decisions.  
- 💡 **Customer Insights** – Gain deep understanding of customer preferences and habits.  

---

## 📑 Example Use Cases  
- Send **special offers** to frequent shoppers (High Frequency).  
- Re-engage **inactive customers** (Low Recency).  
- Reward **top spenders** (High Monetary) with loyalty programs.  

---

## ✅ Conclusion  
By leveraging RFM analysis, businesses can:  
- Enhance **customer satisfaction**  
- Improve **retention rates**  
- Increase **profitability** through data-driven strategies  

This project provides a **SQL-based implementation** of RFM analysis, making it simple and scalable for real-world business applications.  

---

## 👨‍💻 Author  
**Aravind Udiyana**  
*Business Case Study – RFM Analysis using SQL*  
