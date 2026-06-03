.class Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$3;
.super Ljava/lang/Object;
.source "SamsungIAPController.java"

# interfaces
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->getPurchases(Z)Z
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

    .line 433
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

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

    .line 439
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p2

    const-string v0, "get:purchases:failed"

    .line 444
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorCode(I)I

    move-result v1

    .line 445
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    const-string v0, "get:purchases:complete"

    const/4 v1, 0x0

    .line 454
    invoke-static {p2, v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->ownedProductsToPurchasesArray(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    move-result-object p2

    const-string v2, ""

    .line 453
    invoke-static {p2, v1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 451
    invoke-interface {p1, v0, p2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    :goto_0
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
