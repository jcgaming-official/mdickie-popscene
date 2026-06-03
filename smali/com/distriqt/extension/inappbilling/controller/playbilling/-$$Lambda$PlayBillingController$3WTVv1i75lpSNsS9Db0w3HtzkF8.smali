.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;->f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;->f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$getPurchaseAsync$26(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method
