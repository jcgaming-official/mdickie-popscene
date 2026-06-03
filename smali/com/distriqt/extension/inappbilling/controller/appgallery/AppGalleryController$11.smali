.class Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;
.super Ljava/lang/Object;
.source "AppGalleryController.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getPurchases(Z)Z
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

    .line 820
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;->val$nonconsumableSuccessListener:Lcom/huawei/hmf/tasks/OnSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V
    .locals 3

    .line 824
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPurchases():consumableSuccessListener()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$1000(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V

    .line 827
    new-instance p1, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;

    invoke-direct {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;-><init>()V

    const/4 v0, 0x1

    .line 828
    invoke-virtual {p1, v0}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;->setPriceType(I)V

    .line 830
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/hms/iap/IapClient;->obtainOwnedPurchases(Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 831
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;->val$nonconsumableSuccessListener:Lcom/huawei/hmf/tasks/OnSuccessListener;

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$1200(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 820
    check-cast p1, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;->onSuccess(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V

    return-void
.end method
