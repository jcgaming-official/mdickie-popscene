.class Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$4;
.super Ljava/lang/Object;
.source "AppGalleryController.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 5

    .line 516
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProducts():onFailure( %s )"

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

    .line 519
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    .line 523
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    instance-of v1, p1, Lcom/huawei/hms/iap/IapApiException;

    if-eqz v1, :cond_2

    .line 527
    check-cast p1, Lcom/huawei/hms/iap/IapApiException;

    .line 528
    invoke-virtual {p1}, Lcom/huawei/hms/iap/IapApiException;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v4

    .line 531
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_2
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->access$600(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    .line 538
    invoke-static {v4}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->toErrorCode(I)I

    move-result v2

    .line 537
    invoke-static {v2, v0}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-interface {p1, v1, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
