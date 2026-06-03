.class Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$2;
.super Ljava/lang/Object;
.source "SamsungIAPController.java"

# interfaces
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->restorePurchases()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOwnedProducts(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 372
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p2

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_FAILED:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorCode(I)I

    move-result v1

    .line 378
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    const-string v0, "purchases:updated"

    const/4 v1, 0x1

    .line 387
    invoke-static {p2, v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->ownedProductsToPurchasesArray(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, ""

    .line 386
    invoke-static {p2, v1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 384
    invoke-interface {p1, v0, p2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_SUCCESS:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    :goto_0
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
