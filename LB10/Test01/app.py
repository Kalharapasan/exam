import azure.functions as func
import logging
import json

app = func.FunctionApp(http_auth_level=func.AuthLevel.ANONYMOUS)

@app.route(route="BMICalculation")
def BMICalculation(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Initiation of my BMI Calculator.')
    try:
        req_body = req.get_json()
        weight = float(req_body.get('weight'))
        height = float(req_body.get('height'))
        
        if not weight or not height:
            return func.HttpResponse(
                "Please provide weight and height parameters.",
                status_code=400
            )
            
        bmi = weight / (height * height)
        category = ""
        
        if bmi < 18.5:
            category = "Underweight"
        elif 18.5 <= bmi < 24.9:
            category = "Normal weight"
        elif 25 <= bmi < 29.9:
            category = "Overweight"
        else:
            category = "Obesity"
            
        result = {
            "weight": weight,
            "height": height,
            "bmi": round(bmi, 2),
            "category": category
        }
        
        return func.HttpResponse(json.dumps(result), mimetype="application/json")
        
    except Exception as e:
        return func.HttpResponse(
            f"Error: {str(e)}",
            status_code=400
        )