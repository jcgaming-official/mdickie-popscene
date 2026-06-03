.class Lcom/adobe/air/OrientationManager$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/OrientationManager;->onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/OrientationManager;


# direct methods
.method constructor <init>(Lcom/adobe/air/OrientationManager;Landroid/content/Context;I)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 8

    .line 230
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 250
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x87

    const/16 v2, 0x2d

    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 254
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 255
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v3, 0xe1

    if-lt p1, v1, :cond_3

    if-ge p1, v3, :cond_3

    .line 259
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 260
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x13b

    if-lt p1, v3, :cond_4

    if-ge p1, v1, :cond_4

    .line 264
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 265
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_4
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_6

    :cond_5
    if-lt p1, v1, :cond_7

    const/16 v1, 0x168

    if-ge p1, v1, :cond_7

    .line 269
    :cond_6
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 270
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 273
    :cond_7
    :goto_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    .line 274
    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)I

    move-result v2

    if-eq p1, v2, :cond_b

    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    .line 275
    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result p1

    if-eq v0, p1, :cond_b

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    if-eq p1, v0, :cond_b

    .line 277
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "accelerometer_rotation"

    invoke-static {p1, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 279
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_d

    if-eqz p1, :cond_d

    .line 281
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$500(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 284
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->inAsyncMode()Z

    move-result p1

    if-nez p1, :cond_8

    .line 285
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanging(II)Z

    move-result p1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_9

    .line 288
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    goto :goto_2

    .line 292
    :cond_9
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$600(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 296
    new-instance p1, Lcom/adobe/air/WindowEventData;

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    .line 297
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p1

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/adobe/air/WindowEventData;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;IIIZ)V

    const/4 v1, 0x0

    .line 296
    invoke-static {v7, p1, v1}, Lcom/adobe/air/Entrypoints;->registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z

    .line 298
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$402(Lcom/adobe/air/OrientationManager;I)I

    .line 301
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$702(Lcom/adobe/air/OrientationManager;I)I

    goto :goto_3

    .line 305
    :cond_b
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-ne p1, v1, :cond_d

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$800(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-ne p1, v1, :cond_d

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    .line 306
    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$900(Lcom/adobe/air/OrientationManager;)F

    move-result p1

    const v0, 0x40533333    # 3.3f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_d

    .line 308
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 309
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 310
    :cond_c
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1, v7}, Lcom/adobe/air/OrientationManager;->access$802(Lcom/adobe/air/OrientationManager;Z)Z

    .line 313
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$302(Lcom/adobe/air/OrientationManager;I)I

    return-void
.end method
