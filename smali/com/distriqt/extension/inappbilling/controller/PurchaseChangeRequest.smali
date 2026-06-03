.class public Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;
.super Ljava/lang/Object;
.source "PurchaseChangeRequest.java"


# static fields
.field public static final DEFERRED:I = 0x4

.field public static final IMMEDIATE_AND_CHARGE_FULL_PRICE:I = 0x5

.field public static final IMMEDIATE_AND_CHARGE_PRORATED_PRICE:I = 0x2

.field public static final IMMEDIATE_WITHOUT_PRORATION:I = 0x3

.field public static final IMMEDIATE_WITH_TIME_PRORATION:I = 0x1


# instance fields
.field public applicationUsername:Ljava/lang/String;

.field public currentProductId:Ljava/lang/String;

.field public currentTransactionId:Ljava/lang/String;

.field public newProductId:Ljava/lang/String;

.field public prorationMode:I

.field public subscriptionOfferId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentProductId:Ljava/lang/String;

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentTransactionId:Ljava/lang/String;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->newProductId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->subscriptionOfferId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->prorationMode:I

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->applicationUsername:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 39
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "[%s, %s, %d]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentProductId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->newProductId:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->prorationMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
