.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-YGmOIRtaXbAmfQAaulEZyoc8N4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-YGmOIRtaXbAmfQAaulEZyoc8N4;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-YGmOIRtaXbAmfQAaulEZyoc8N4;->f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    return-void
.end method


# virtual methods
.method public final onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .locals 2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-YGmOIRtaXbAmfQAaulEZyoc8N4;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-YGmOIRtaXbAmfQAaulEZyoc8N4;->f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-static {v0, v1, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$consumePurchase$18(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method
