.class public Lcom/distriqt/extension/inappbilling/InAppBillingContext;
.super Lcom/adobe/fre/FREContext;
.source "InAppBillingContext.java"

# interfaces
.implements Lcom/distriqt/core/utils/IExtensionContext;
.implements Lcom/adobe/air/StateChangeCallback;
.implements Lcom/adobe/air/ActivityResultCallback;


# static fields
.field private static TAG:Ljava/lang/String; = "InAppBillingContext"


# instance fields
.field private _aaw:Lcom/adobe/air/AndroidActivityWrapper;

.field private _controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

.field private _stateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/distriqt/core/ActivityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    .line 80
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 81
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 82
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_stateListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_stateListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->dispose()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    :cond_0
    return-void
.end method

.method public controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    .line 173
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_stateListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    return-object v0
.end method

.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 266
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 94
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 95
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->dispose()V

    .line 100
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isSupported"

    .line 111
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 112
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "implementation"

    .line 113
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isServiceSupported"

    .line 115
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/IsServiceSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/IsServiceSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setup"

    .line 116
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/SetupFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/SetupFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canMakePayments"

    .line 117
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/CanMakePaymentsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/CanMakePaymentsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "checkAvailability"

    .line 118
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/CheckAvailabilityFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/CheckAvailabilityFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cleanup"

    .line 119
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/CleanupFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/CleanupFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getProducts"

    .line 121
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "activeProducts"

    .line 122
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "activeProductIds"

    .line 123
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ActiveProductIdsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ActiveProductIdsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isProductViewSupported"

    .line 125
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/IsProductViewSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/IsProductViewSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showProductView"

    .line 126
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ShowProductViewFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ShowProductViewFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isProductOverlaySupported"

    .line 127
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/IsProductOverlaySupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/IsProductOverlaySupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showProductOverlay"

    .line 128
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ShowProductOverlayFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ShowProductOverlayFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "applicationReceipt_isSupported"

    .line 130
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "applicationReceipt_getAppReceipt"

    .line 131
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/GetAppReceiptFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/GetAppReceiptFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "applicationReceipt_refresh"

    .line 132
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/RefreshFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/RefreshFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "makePurchase"

    .line 135
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/MakePurchaseFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/MakePurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "finishPurchase"

    .line 136
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/FinishPurchaseFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/FinishPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "consumePurchase"

    .line 137
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/ConsumePurchaseFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/ConsumePurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isChangePurchaseSupported"

    .line 139
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/IsChangePurchaseSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/IsChangePurchaseSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "changePurchase"

    .line 140
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/ChangePurchaseFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/ChangePurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isGetPurchasesSupported"

    .line 142
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/IsGetPurchasesSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/IsGetPurchasesSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getPurchases"

    .line 143
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/GetPurchasesFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/GetPurchasesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "restorePurchases"

    .line 144
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/RestorePurchasesFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/RestorePurchasesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getPendingPurchases"

    .line 146
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/GetPendingPurchasesFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/GetPendingPurchasesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startDownloads"

    .line 149
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/StartDownloadsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/StartDownloadsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getUserData"

    .line 152
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/GetUserDataFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/GetUserDataFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inAppUpdates_isSupported"

    .line 154
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/updates/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/updates/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inAppUpdates_checkAppUpdate"

    .line 155
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/updates/CheckAppUpdateFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/updates/CheckAppUpdateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inAppUpdates_startAppUpdate"

    .line 156
    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/updates/StartAppUpdateFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/updates/StartAppUpdateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 198
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult( %d, %d, ... )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/distriqt/core/ActivityStateListener;

    .line 201
    invoke-virtual {v1, p1, p2, p3}, Lcom/distriqt/core/ActivityStateListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 5

    .line 213
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v1, "onActivityStateChanged( %s ) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/distriqt/core/ActivityStateListener;

    .line 216
    sget-object v2, Lcom/distriqt/extension/inappbilling/InAppBillingContext$1;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-virtual {v1}, Lcom/distriqt/core/ActivityStateListener;->onResume()V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {v1}, Lcom/distriqt/core/ActivityStateListener;->onDestroy()V

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-virtual {v1}, Lcom/distriqt/core/ActivityStateListener;->onRestart()V

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-virtual {v1}, Lcom/distriqt/core/ActivityStateListener;->onPause()V

    goto :goto_0

    .line 223
    :pswitch_4
    invoke-virtual {v1}, Lcom/distriqt/core/ActivityStateListener;->onStop()V

    goto :goto_0

    .line 219
    :pswitch_5
    invoke-virtual {v1}, Lcom/distriqt/core/ActivityStateListener;->onStart()V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 249
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged( ... )"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/distriqt/core/ActivityStateListener;

    .line 252
    invoke-virtual {v1, p1}, Lcom/distriqt/core/ActivityStateListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method
