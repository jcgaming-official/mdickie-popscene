.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$TOthfCcZuUvceOcGuGvb8-XyX2Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$TOthfCcZuUvceOcGuGvb8-XyX2Y;->f$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$TOthfCcZuUvceOcGuGvb8-XyX2Y;->f$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    check-cast p1, Lcom/huawei/hms/iap/entity/IsEnvReadyResult;

    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->lambda$setup$0(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/huawei/hms/iap/entity/IsEnvReadyResult;)V

    return-void
.end method
