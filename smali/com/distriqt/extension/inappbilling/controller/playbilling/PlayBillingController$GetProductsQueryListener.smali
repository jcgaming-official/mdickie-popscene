.class public interface abstract Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;
.super Ljava/lang/Object;
.source "PlayBillingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "GetProductsQueryListener"
.end annotation


# virtual methods
.method public abstract onGetProducts(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation
.end method
