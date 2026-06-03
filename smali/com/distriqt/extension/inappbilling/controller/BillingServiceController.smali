.class public interface abstract Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;
.super Ljava/lang/Object;
.source "BillingServiceController.java"


# virtual methods
.method public abstract activeProductIds()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract activeProducts()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/distriqt/extension/inappbilling/controller/Product;",
            ">;"
        }
    .end annotation
.end method

.method public abstract areSubscriptionsSupported()Z
.end method

.method public abstract canMakePayments()Z
.end method

.method public abstract changePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Z
.end method

.method public abstract checkAvailability()Ljava/lang/String;
.end method

.method public abstract consumePurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
.end method

.method public abstract dispose()V
.end method

.method public abstract finishPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
.end method

.method public abstract getPendingPurchases()Lorg/json/JSONArray;
.end method

.method public abstract getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract getPurchases(Z)Z
.end method

.method public abstract getUserData()Z
.end method

.method public abstract inAppUpdates()Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;
.end method

.method public abstract isChangePurchaseSupported()Z
.end method

.method public abstract isInAppUpdatesSupported()Z
.end method

.method public abstract isProductViewSupported()Z
.end method

.method public abstract isSupported()Z
.end method

.method public abstract makePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract restorePurchases()Z
.end method

.method public abstract setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
.end method

.method public abstract showProductView(Ljava/lang/String;)Z
.end method
