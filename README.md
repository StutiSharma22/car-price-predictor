          
# **Used Car Price Predictor**
<img width="1847" height="914" alt="1" src="https://github.com/user-attachments/assets/9b0b3e95-59bb-418e-b3e2-e2d9f22d72b2" />


- **Problem Description:** Buying a car is a major financial decision, and its price depends on multiple factors such as age, mileage, brand,
   engine capacity, fuel type,transmission, and more. For both buyers and sellers, estimating a fair market price for a used car can be
   challenging due to the large number of influencing variables and market fluctuations.
   
- **Objective:**

	To develop a machine learning-based web application that predicts the price of a car given its features. The system will allow users to input
  details about a vehicle and receive an estimated market price, helping buyers make informed decisions and assisting sellers in pricing their
  cars competitively.

- **Key Challenges:**

    - Handling multiple numerical and categorical features (e.g., mileage, brand, fuel type).
    - Preprocessing and encoding data to make it suitable for machine learning.
    - Ensuring the model generalizes well to new, unseen car listings.
    - Providing a user-friendly interface for real-time price prediction.

- **Solution:**

	A Flask-based web application integrated with a pre-trained machine learning model (e.g., XGBoost or Linear Regression) deployed via Docker on 
	Render, which predicts car prices accurately based on user-provided input features.
  - **Link to application**: https://car-price-predictor-1-r6ef.onrender.com 

- **Dataset:**
  - **make_year**: Year the car was manufactured (between 1995 and 2023).
  - **mileage_kmpl**: Mileage of the car in kilometers per liter (kmpl).
  - **engine_cc**: Engine capacity in cubic centimeters (e.g., 1200 cc, 2000 cc).
  - **fuel_type**: Type of fuel used: Petrol, Diesel, or Electric.
  - **owner_count**: Number of previous owners (1 to 5).
  - **price_usd**: Target variable – resale price of the car in US dollars (USD).
  - **brand**: Car brand name
  - **transmission**: Type of transmission: Manual or Automatic.
  - **color**: Exterior color of the car.
  - **service_history**: Maintenance history: Full, Partial, or None.
  - **accidents_reported**: Number of accidents reported for the vehicle (typically 0–5).
  - **insurance_valid**: Indicates whether insurance is currently valid: Yes or No.
 
- **Link**: https://www.kaggle.com/datasets/therohithanand/used-car-price-prediction

- **Project Structure**: 
   - car-price-predictor/
   - app.py (Main Flask application)
   - Model.pkl (Trained ML model)
   - requirements.txt  (Python dependencies)
   - Dockerfile (Docker configuration)
   - render.yaml (Render deployment configuration)
   - static/ (Static files (CSS, images))
   - templates/ (HTML templates)
     
- **Requirements**:
	- Python 3.10+  
  - Docker  
  - Git  
  - Python libraries:
  - flask
  - gunicorn
  - pandas
  - scikit-learn==1.6.1

- **To run app locally**
1. **Clone the repository**

```bash
git clone <your-repo-url>
cd car-price-predictor
```

2. **Create a virtual environment** 

```bash
python -m venv venv
source venv/bin/activate   # Linux/Mac
venv\Scripts\activate      # Windows 
```
3. **Install dependencies**
```bash
pip install -r requirements.txt
```
4. **Run the Flask app**
```bash
python app.py
```
5. **Access the app**
- Open your browser and go to: http://127.0.0.1:5000/

- **Running with Docker**
1. **Build the Docker image**
```bash
docker build -t car-price-predictor .
```
2. **Run the container**
```bash
docker run -p 5000:5000 -e PORT=5000 car-price-predictor
```
3. **Access the app**
- Open your browser and go to: http://localhost:5000/




	
