.class Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$4;
.super Ljava/lang/Object;
.source "SamsungIAPController.java"

# interfaces
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnPaymentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->makePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Z
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

    .line 528
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayment(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 534
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string v2, "makePurchase(): startPayment: onPayment: failed[%d] %s - %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorDetailsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2, v2, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p2

    const-string v1, "purchase:failed"

    .line 541
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorCode(I)I

    move-result v2

    .line 542
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-static {v0, v2, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-interface {p2, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 548
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    const-string v2, "purchases:updated"

    .line 551
    invoke-static {p2, v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->purchaseVoToPurchase(Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    const-string v3, ""

    .line 550
    invoke-static {p2, v1, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 548
    invoke-interface {p1, v2, p2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 560
    :goto_0
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 561
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p2

    const-string v1, "purchase:failed"

    const/4 v2, 0x6

    .line 566
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-static {v0, v2, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-interface {p2, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
