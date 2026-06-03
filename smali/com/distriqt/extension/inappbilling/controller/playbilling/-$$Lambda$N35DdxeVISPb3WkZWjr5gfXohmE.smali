.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$N35DdxeVISPb3WkZWjr5gfXohmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$N35DdxeVISPb3WkZWjr5gfXohmE;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$N35DdxeVISPb3WkZWjr5gfXohmE;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;

    invoke-interface {v0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;->onGetProducts(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
