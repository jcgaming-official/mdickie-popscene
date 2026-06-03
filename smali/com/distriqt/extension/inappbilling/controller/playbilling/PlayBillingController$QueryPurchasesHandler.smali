.class public interface abstract Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;
.super Ljava/lang/Object;
.source "PlayBillingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "QueryPurchasesHandler"
.end annotation


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation
.end method
