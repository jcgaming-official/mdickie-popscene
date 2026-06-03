.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$TygfinK8IWYWqa1MELsrowfovrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$TygfinK8IWYWqa1MELsrowfovrM;->f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iput p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$TygfinK8IWYWqa1MELsrowfovrM;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(ILjava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$TygfinK8IWYWqa1MELsrowfovrM;->f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iget v1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$TygfinK8IWYWqa1MELsrowfovrM;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->lambda$getProducts$2(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;IILjava/util/List;)V

    return-void
.end method
