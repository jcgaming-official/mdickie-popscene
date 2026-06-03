.class Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;
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

.field final synthetic val$subscriptionsSuccessListener:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->val$subscriptionsSuccessListener:Lcom/huawei/hmf/tasks/OnSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/iap/entity/ProductInfoResult;)V
    .locals 5

    .line 438
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProducts():nonconsumableSuccessListener:onSuccess( %d )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getReturnCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getProductInfoList()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Ljava/util/List;)V

    .line 442
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$300(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 444
    new-instance p1, Lcom/huawei/hms/iap/entity/ProductInfoReq;

    invoke-direct {p1}, Lcom/huawei/hms/iap/entity/ProductInfoReq;-><init>()V

    .line 445
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$300(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setProductIds(Ljava/util/List;)V

    const/4 v0, 0x2

    .line 446
    invoke-virtual {p1, v0}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setPriceType(I)V

    .line 448
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/hms/iap/IapClient;->obtainProductInfo(Lcom/huawei/hms/iap/entity/ProductInfoReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 449
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->val$subscriptionsSuccessListener:Lcom/huawei/hmf/tasks/OnSuccessListener;

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    .line 450
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$400(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    goto :goto_0

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$200(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 434
    check-cast p1, Lcom/huawei/hms/iap/entity/ProductInfoResult;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;->onSuccess(Lcom/huawei/hms/iap/entity/ProductInfoResult;)V

    return-void
.end method
