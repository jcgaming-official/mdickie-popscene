.class public Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;
.super Ljava/lang/Object;
.source "PurchaseRequest.java"


# instance fields
.field public applicationUsername:Ljava/lang/String;

.field public developerPayload:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public profileId:Ljava/lang/String;

.field public quantity:I

.field public subscriptionOfferId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->quantity:I

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->developerPayload:Ljava/lang/String;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->profileId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->subscriptionOfferId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 30
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "[%s, %d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->quantity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
