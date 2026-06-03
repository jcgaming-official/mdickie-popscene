.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Lcom/android/billingclient/api/ProductDetails;

.field private final synthetic f$2:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/ProductDetails;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;->f$1:Lcom/android/billingclient/api/ProductDetails;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;->f$2:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;->f$1:Lcom/android/billingclient/api/ProductDetails;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;->f$2:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$getPurchaseAsync$28(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/ProductDetails;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
