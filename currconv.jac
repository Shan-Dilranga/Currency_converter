"""this is a code script for currency converter"""

import:py requests;


can options{
    while True{
        option = input(str("\n1.convert \n2. Quit \n Enter option : "));
        if option == "1" {
            convert_curr();
        }
        elif option == "2" {
            break;
        }
        else {
            print("\nSelect valid option");
        }
    }
}

can convert_curr -> float {
    init_currency = input(str("Enter the initial currency: "));
    target_currency = input(str("Enter the target currency: "));
    while True{
        try {
            amount = input(str("Enter amount for convert : "));
        }
        except {
            print("\n Amount must be numeric ");

            continue;
        }

        if not amount > 0{
            print("Amount needs to be greater than 0");
            continue;
        }
        else{
            break;
        }
    }
    url = f"https://api.apilayer.com/fixer/convert?to={target_currency}&from={init_currency}&amount={amount}" ;

    payload{}
    headers{
        "apikey": "mS6FGZMbg27gQvgrOJUlZaooTPKbUYi8";
    }

    response = requests.request("GET", url, headers=headers, data=payload);
    status_code = response.status_code;

    if status_code != 200{
        result = response.json();
        print('Error response: ' + str(result));
        quit();
    }
    result = response.json();
    print('\nConversion Result: ' + str(result['result']));

}

with entry{
    options();
}