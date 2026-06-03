.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Lcom/android/billingclient/api/Purchase;

.field private final synthetic f$2:Lcom/distriqt/extension/inappbilling/controller/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;->f$1:Lcom/android/billingclient/api/Purchase;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;->f$2:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;->f$1:Lcom/android/billingclient/api/Purchase;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;->f$2:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$_consumePurchaseImpl$23(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/distriqt/extension/inappbilling/controller/Purchase;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
