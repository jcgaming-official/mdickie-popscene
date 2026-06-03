.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

.field private final synthetic f$1:Landroid/app/Activity;

.field private final synthetic f$2:Lcom/appcoins/sdk/billing/BillingFlowParams;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Landroid/app/Activity;Lcom/appcoins/sdk/billing/BillingFlowParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;->f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;->f$2:Lcom/appcoins/sdk/billing/BillingFlowParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;->f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;->f$2:Lcom/appcoins/sdk/billing/BillingFlowParams;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->lambda$makePurchase$8(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Landroid/app/Activity;Lcom/appcoins/sdk/billing/BillingFlowParams;)V

    return-void
.end method
