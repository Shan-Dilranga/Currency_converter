 """testting environment"""


 import:py urllib.request;
 import:py json;

 can convert_currency(init_currency:str, target_currency:str, amount:float){
    api_key = "mS6FGZMbg27gQvgrOJUlZaooTPKbUYi8";
    url = f"https://api.apilayer.com/fixer/convert?to={target_currency}&from={init_currency}&amount={amount}&apikey={api_key}";

    try{
        # Simulate an HTTP request (since 'urllib' is available)
        with urllib.request.urlopen(url) as response{
            data = json.loads(response.read().decode());
            if 'result' in data{
                return data['result'];}
            else{
                return f"Error response: {data}";}}
    }except Exception as e{
        return f"Error: {e}";
        }
 }

 with entry{
    init_currency = input("Enter the initial currency: ");
    target_currency = input("Enter the target currency: ");

    while True{
        try{
            amount = float(input('Enter the amount: '));}
        except ValueError{
            print('The amount needs to be numeric');
            continue;
        }
        if amount <= 0{
            print('Amount needs to be greater than 0');
            continue;}
        else{
            break;}
    }
    result = convert_currency(init_currency, target_currency, amount);
    print(f"{amount} {init_currency} is equivalent to {result} {target_currency}");

 }
