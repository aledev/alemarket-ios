//
//  MockJsonData.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct MockJsonData {
        
    // MARK: - AddressModel Mock Data
    static let addressModelJsonData = """
    {
        "state_id": "AR-X",
        "state_name": "Córdoba",
        "city_id": "TUxBQ0NBUGNiZGQx",
        "city_name": "Córdoba"
    }
    """
    
    // MARK: - AttributeModel Mock Data
    static let attributeModelJsonData = """
    {
        "id": "BRAND",
        "name": "Marca",
        "value_id": "2503",
        "value_name": "Motorola",
        "attribute_group_id": "OTHERS",
        "attribute_group_name": "Otros",
        "value_struct": null,
        "values": [
            {
                "id": "2503",
                "name": "Motorola",
                "struct": null,
                "source": 7092
            }
        ],
        "source": 7092,
        "value_type": "string"
    }
    """
    
    static let attributeModelWithValueStructJsonData = """
    {
        "id": "WEIGHT",
        "name": "Peso",
        "value_id": "6927990",
        "value_name": "163 g",
        "attribute_group_id": "OTHERS",
        "attribute_group_name": "Otros",
        "value_struct": {
            "number": 163,
            "unit": "g"
        },
        "values": [
            {
                "id": "6927990",
                "name": "163 g",
                "struct": {
                    "number": 163,
                    "unit": "g"
                },
                "source": 1
            }
        ],
        "source": 1,
        "value_type": "number_unit"
    }
    """
    
    // MARK: - BaseAddressModel Mock Data
    static let baseAddressModelJsonData = """
    {
        "id": "AR",
        "name": "Argentina"
    }
    """
    
    // MARK: - DifferentialPricingModel Mock Data
    static let differentialPricingModelJsonData = """
    {
        "id": 33678187
    }
    """
    
    // MARK: - EshopModel Mock Data
    static let eshopModelJsonData = """
    {
        "eshop_id": 0,
        "seller": 0,
        "nick_name": "",
        "eshop_status_id": 0,
        "site_id": "",
        "eshop_experience": 0,
        "eshop_rubro": null,
        "eshop_locations": null,
        "eshop_logo_url": ""
    }
    """
    
    // MARK: - ExcludedModel Mock Data
    static let excludedModelJsonData = """
    {
        "real_value": 1,
        "real_rate": 0.125
    }
    """
    
    // MARK: - InstallmentsModel Mock Data
    static let installmentsModelJsonData = """
    {
        "quantity": 12,
        "amount": 7652.08,
        "rate": 104.06,
        "currency_id": "ARS"
    }
    """
    
    // MARK: - PeriodMetricsModel Mock Data
    static let periodMetricsModelJsonData = """
    {
        "period": "365 days",
        "rate": 0,
        "value": 0
    }
    """
    
    static let periodMetricsModelWithExcludedDataJsonData = """
    {
        "period": "365 days",
        "rate": 0,
        "value": 0,
        "excluded": {
            "real_value": 1,
            "real_rate": 0.125
        }
    }
    """
    
    // MARK: - RatingsModel Mock Data
    static let ratingsModelJsonData = """
    {
        "negative": 0,
        "neutral": 0,
        "positive": 1
    }
    """
    
    // MARK: - SalesModel Mock Data
    static let salesModelJsonData = """
    {
        "period": "365 days",
        "completed": 2
    }
    """
    
    // MARK: - SellerAddressModel Mock Data
    static let sellerAddressModelJsonData = """
    {
        "comment": "",
        "address_line": "",
        "id": null,
        "latitude": null,
        "longitude": null,
        "country": {
            "id": "AR",
            "name": "Argentina"
        },
        "state": {
            "id": "AR-X",
            "name": "Córdoba"
        },
        "city": {
            "id": "TUxBQ0NBUGNiZGQx",
            "name": "Córdoba"
        }
    }
    """
    
    // MARK: - SellerReputationModel Mock Data
    static let sellerReputationModelJsonData = """
    {
        "level_id": "4_light_green",
        "power_seller_status": null,
        "transactions": {
            "canceled": 3,
            "completed": 5,
            "period": "historic",
            "ratings": {
                "negative": 0,
                "neutral": 0,
                "positive": 1
            },
            "total": 8
        },
        "metrics": {
            "sales": {
                "period": "365 days",
                "completed": 5
            },
            "claims": {
                "period": "365 days",
                "rate": 0,
                "value": 0,
                "excluded": {
                    "real_value": 1,
                    "real_rate": 0.125
                }
            },
            "delayed_handling_time": {
                "period": "365 days",
                "rate": 0,
                "value": 0,
                "excluded": {
                    "real_value": 0,
                    "real_rate": 0
                }
            },
            "cancellations": {
                "period": "365 days",
                "rate": 0,
                "value": 0,
                "excluded": {
                    "real_value": 0,
                    "real_rate": 0
                }
            }
        }
    }
    """
    
    // MARK: - SellerModel Mock Data
    static let sellerModelWithoutEshopJsonData = """
    {
        "id": 553813201,
        "nickname": "ARTA8929411",
        "car_dealer": false,
        "real_estate_agency": false,
        "_": false,
        "registration_date": "2020-04-23T13:20:36.000-04:00",
        "tags": [
            "normal",
            "credits_profile",
            "messages_as_seller"
        ],
        "car_dealer_logo": "",
        "permalink": "http://perfil.mercadolibre.com.ar/ARTA8929411",
        "seller_reputation": {
            "level_id": null,
            "power_seller_status": null,
            "transactions": {
                "canceled": 3,
                "completed": 0,
                "period": "historic",
                "ratings": {
                    "negative": 1,
                    "neutral": 0,
                    "positive": 0
                },
                "total": 3
            },
            "metrics": {
                "sales": {
                    "period": "365 days",
                    "completed": 0
                },
                "claims": {
                    "period": "365 days",
                    "rate": 0,
                    "value": 1
                },
                "delayed_handling_time": {
                    "period": "365 days",
                    "rate": 0,
                    "value": 0
                },
                "cancellations": {
                    "period": "365 days",
                    "rate": 0,
                    "value": 2
                }
            }
        }
    }
    """
    
    static let sellerModelWithEshopJsonData = """
    {
        "id": 553813201,
        "nickname": "ARTA8929411",
        "car_dealer": false,
        "real_estate_agency": false,
        "_": false,
        "registration_date": "2020-04-23T13:20:36.000-04:00",
        "tags": [
            "normal",
            "credits_profile",
            "messages_as_seller"
        ],
        "car_dealer_logo": "",
        "permalink": "http://perfil.mercadolibre.com.ar/ARTA8929411",
        "seller_reputation": {
            "level_id": null,
            "power_seller_status": null,
            "transactions": {
                "canceled": 3,
                "completed": 0,
                "period": "historic",
                "ratings": {
                    "negative": 1,
                    "neutral": 0,
                    "positive": 0
                },
                "total": 3
            },
            "metrics": {
                "sales": {
                    "period": "365 days",
                    "completed": 0
                },
                "claims": {
                    "period": "365 days",
                    "rate": 0,
                    "value": 1
                },
                "delayed_handling_time": {
                    "period": "365 days",
                    "rate": 0,
                    "value": 0
                },
                "cancellations": {
                    "period": "365 days",
                    "rate": 0,
                    "value": 2
                }
            }
        },
        "eshop": {
            "eshop_id": 0,
            "seller": 0,
            "nick_name": "",
            "eshop_status_id": 0,
            "site_id": "",
            "eshop_experience": 0,
            "eshop_rubro": null,
            "eshop_locations": null,
            "eshop_logo_url": ""
        }
    }
    """
    
    // MARK: - ShippingModel Mock Data
    static let shippingModelJsonData = """
    {
        "store_pick_up": false,
        "free_shipping": true,
        "logistic_type": "drop_off",
        "mode": "me2",
        "tags": [],
        "benefits": null,
        "promise": null
    }
    """
    
    // MARK: - VariationDataModel Mock Data
    static let variationDataModelJsonData = """
    {
        "thumbnail": "http://http2.mlstatic.com/D_638906-MLA70282123381_072023-O.jpg",
        "ratio": "1.42",
        "name": "Índigo oscuro",
        "pictures_qty": 5
    }
    """
    
    // MARK: - TransactionsModel Mock Data
    static let transactionsModelJsonData = """
    {
        "canceled": 0,
        "completed": 2,
        "period": "historic",
        "ratings": {
            "negative": 0,
            "neutral": 0,
            "positive": 1
        },
        "total": 2
    }
    """
    
}
