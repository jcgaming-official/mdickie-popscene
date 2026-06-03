.class Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;
.super Ljava/lang/Object;
.source "SamsungIAPController.java"

# interfaces
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->consumePurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

.field final synthetic val$purchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 630
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;->val$purchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

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

    .line 636
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p2

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    .line 641
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorCode(I)I

    move-result v1

    .line 642
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 648
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;

    .line 650
    invoke-virtual {p2}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getItemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;->val$purchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    iget-object v1, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p2}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getIsConsumable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 654
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p2

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "Purchase not consumable product"

    .line 656
    invoke-static {v1, v2}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-interface {p2, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    const/4 v1, 0x0

    .line 665
    invoke-static {p2, v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->ownedProductToPurchase(Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object p2

    .line 664
    invoke-static {v0, p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$300(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    :goto_1
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
