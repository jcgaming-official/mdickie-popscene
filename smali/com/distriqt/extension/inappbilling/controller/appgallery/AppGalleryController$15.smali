.class Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$15;
.super Ljava/lang/Object;
.source "AppGalleryController.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->consumePurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

.field final synthetic val$purchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1298
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$15;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$15;->val$purchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 5

    .line 1302
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consumePurchase():onFailure( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    const-string v0, "Unknown error"

    goto :goto_1

    .line 1304
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    .line 1307
    instance-of v1, p1, Lcom/huawei/hms/iap/IapApiException;

    if-eqz v1, :cond_2

    .line 1309
    check-cast p1, Lcom/huawei/hms/iap/IapApiException;

    .line 1310
    invoke-virtual {p1}, Lcom/huawei/hms/iap/IapApiException;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    .line 1311
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v4

    .line 1312
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    .line 1315
    :cond_2
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$15;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$600(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$15;->val$purchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    .line 1318
    invoke-virtual {v2}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 1319
    invoke-static {v4}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->toErrorCode(I)I

    move-result v3

    .line 1317
    invoke-static {v2, v3, v0}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    invoke-interface {p1, v1, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
