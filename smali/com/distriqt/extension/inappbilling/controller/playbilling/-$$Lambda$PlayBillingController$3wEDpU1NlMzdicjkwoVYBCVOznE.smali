.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Lorg/json/JSONObject;

.field private final synthetic f$2:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lorg/json/JSONObject;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;->f$1:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;->f$2:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;->f$1:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;->f$2:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$_consumePurchaseImpl$21(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lorg/json/JSONObject;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
