.class Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;
.super Ljava/lang/Object;
.source "AppGalleryController.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->restorePurchases()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V
    .locals 4

    .line 640
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "restorePurchases():subscriptionSuccessListener()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$700(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V

    .line 643
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$600(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    const-string v0, "purchases:updated"

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    .line 646
    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$800(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->purchasesToPurchasesArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, ""

    .line 645
    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$600(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_SUCCESS:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 636
    check-cast p1, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;->onSuccess(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V

    return-void
.end method
