import azure.functions as func
import logging
import json

app = func.FunctionApp(http_auth_level=func.AuthLevel.ANONYMOUS)

@app.route(route="BMICalculation")
def BMICalculation(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Initiation of my BMI Calculator.')
    try:
        # Get query parameters safely
        weight_param = req.params.get('weight')
        height_param = req.params.get('height')

        # Check if parameters exist
        if not weight_param or not height_param:
            return func.HttpResponse(
                "Please provide weight and height parameters.",
                status_code=400
            )

        # Parse query parameters
        weight = float(weight_param)
        height = float(height_param)

        # BMI calculation
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