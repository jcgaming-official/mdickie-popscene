.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cQBAOWPrcCEF4BpnVZxd7pSOCLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cQBAOWPrcCEF4BpnVZxd7pSOCLA;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cQBAOWPrcCEF4BpnVZxd7pSOCLA;->f$1:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public final onGetProducts(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cQBAOWPrcCEF4BpnVZxd7pSOCLA;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cQBAOWPrcCEF4BpnVZxd7pSOCLA;->f$1:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$getProducts$1(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
