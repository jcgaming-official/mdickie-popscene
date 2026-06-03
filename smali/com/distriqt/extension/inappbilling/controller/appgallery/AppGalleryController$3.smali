.class Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;
.super Ljava/lang/Object;
.source "AppGalleryController.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/iap/entity/ProductInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nonconsumableSuccessListener:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->val$nonconsumableSuccessListener:Lcom/huawei/hmf/tasks/OnSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/iap/entity/ProductInfoResult;)V
    .locals 6

    .line 465
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProducts():consumableSuccessListener:onSuccess( %d )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getReturnCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getProductInfoList()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Ljava/util/List;)V

    .line 469
    new-instance p1, Lcom/huawei/hms/iap/entity/ProductInfoReq;

    invoke-direct {p1}, Lcom/huawei/hms/iap/entity/ProductInfoReq;-><init>()V

    .line 470
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$500(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setProductIds(Ljava/util/List;)V

    .line 471
    invoke-virtual {p1, v2}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setPriceType(I)V

    .line 473
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/hms/iap/IapClient;->obtainProductInfo(Lcom/huawei/hms/iap/entity/ProductInfoReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 474
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->val$nonconsumableSuccessListener:Lcom/huawei/hmf/tasks/OnSuccessListener;

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    .line 475
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$400(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 461
    check-cast p1, Lcom/huawei/hms/iap/entity/ProductInfoResult;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;->onSuccess(Lcom/huawei/hms/iap/entity/ProductInfoResult;)V

    return-void
.end method
