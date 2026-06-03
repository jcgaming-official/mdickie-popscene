.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$lWIhh6WrPZecPTh_SmmFubNJnDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$lWIhh6WrPZecPTh_SmmFubNJnDc;->f$0:Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$lWIhh6WrPZecPTh_SmmFubNJnDc;->f$0:Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->lambda$makePurchase$1(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)V

    return-void
.end method
