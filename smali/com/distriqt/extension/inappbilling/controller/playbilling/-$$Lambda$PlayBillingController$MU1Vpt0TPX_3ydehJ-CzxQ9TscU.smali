.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$MU1Vpt0TPX_3ydehJ-CzxQ9TscU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$MU1Vpt0TPX_3ydehJ-CzxQ9TscU;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$MU1Vpt0TPX_3ydehJ-CzxQ9TscU;->f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$MU1Vpt0TPX_3ydehJ-CzxQ9TscU;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$MU1Vpt0TPX_3ydehJ-CzxQ9TscU;->f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;

    invoke-static {v0, v1, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$getPurchaseAsync$27(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
