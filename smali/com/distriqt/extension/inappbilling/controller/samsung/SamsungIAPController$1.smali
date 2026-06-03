.class Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$1;
.super Ljava/lang/Object;
.source "SamsungIAPController.java"

# interfaces
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnGetProductsDetailsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
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

    .line 234
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetProducts(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 240
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p2

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorCode(I)I

    move-result v1

    .line 246
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->toErrorMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$100(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Ljava/util/ArrayList;)V

    .line 253
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    .line 255
    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->activeProducts()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-interface {p1, p2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 260
    :goto_0
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
