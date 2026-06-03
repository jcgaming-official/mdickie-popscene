.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$bOO6-t2UTSGBLGq-Yuzb4zq_FI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$bOO6-t2UTSGBLGq-Yuzb4zq_FI4;->f$0:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$bOO6-t2UTSGBLGq-Yuzb4zq_FI4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$bOO6-t2UTSGBLGq-Yuzb4zq_FI4;->f$0:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$bOO6-t2UTSGBLGq-Yuzb4zq_FI4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->lambda$checkAvailability$0(Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;Ljava/lang/String;)V

    return-void
.end method
