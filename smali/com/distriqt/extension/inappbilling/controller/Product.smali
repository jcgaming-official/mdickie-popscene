.class public Lcom/distriqt/extension/inappbilling/controller/Product;
.super Ljava/lang/Object;
.source "Product.java"


# static fields
.field public static final TYPE_CONSUMABLE:Ljava/lang/String; = "consumable"

.field public static final TYPE_PRODUCT:Ljava/lang/String; = "inapp"

.field public static final TYPE_SUBSCRIPTION:Ljava/lang/String; = "subs"


# instance fields
.field public countryCode:Ljava/lang/String;

.field public currencyCode:Ljava/lang/String;

.field public currencySymbol:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public internationalCurrencySymbol:Ljava/lang/String;

.field public itemType:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public price:D

.field public priceString:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public subscriptionOffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;",
            ">;"
        }
    .end annotation
.end field

.field public subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->title:Ljava/lang/String;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->description:Ljava/lang/String;

    const-string v0, "inapp"

    .line 33
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->locale:Ljava/lang/String;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->countryCode:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->internationalCurrencySymbol:Ljava/lang/String;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->itemType:Ljava/lang/String;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->source:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 63
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 64
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 65
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 66
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    .line 67
    iget-wide v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "priceString"

    .line 68
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "locale"

    .line 70
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "countryCode"

    .line 71
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currencySymbol"

    .line 72
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "internationalCurrencySymbol"

    .line 73
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->internationalCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currencyCode"

    .line 74
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "itemType"

    .line 76
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    .line 77
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 80
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    .line 82
    invoke-virtual {v3}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "subscriptionOffers"

    .line 84
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    if-eqz v1, :cond_1

    const-string v1, "subscriptionPeriod"

    .line 88
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    invoke-virtual {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
