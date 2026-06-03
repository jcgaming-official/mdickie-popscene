.class Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$18;
.super Ljava/lang/Object;
.source "AppGalleryController.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->consumePurchaseWithToken(Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;",
        ">;"
    }
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

    .line 1364
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$18;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$18;->val$purchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;)V
    .locals 5

    .line 1368
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consumePurchaseWithToken():onSuccess(): %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;->getConsumePurchaseData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1369
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$18;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$600(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_SUCCESS:Ljava/lang/String;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$18;->val$purchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    .line 1372
    invoke-virtual {v2}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 1373
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;->getReturnCode()I

    move-result v3

    .line 1374
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    .line 1371
    invoke-static {v2, v3, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1369
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1364
    check-cast p1, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$18;->onSuccess(Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;)V

    return-void
.end method
