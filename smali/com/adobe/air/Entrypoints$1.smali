.class Lcom/adobe/air/Entrypoints$1;
.super Landroid/os/Handler;
.source "Entrypoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/Entrypoints;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/Entrypoints;


# direct methods
.method constructor <init>(Lcom/adobe/air/Entrypoints;Landroid/os/Looper;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/adobe/air/Entrypoints$1;->this$0:Lcom/adobe/air/Entrypoints;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x463

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 368
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/gestures/GestureEventDataBase;

    .line 369
    invoke-interface {p1}, Lcom/adobe/air/gestures/GestureEventDataBase;->sendEvent()Z

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    .line 361
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->apply()V

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/KeyEventData;

    .line 354
    invoke-static {}, Lcom/adobe/air/Entrypoints;->access$000()Lcom/adobe/air/customHandler;

    move-result-object v0

    iget v1, p1, Lcom/adobe/air/KeyEventData;->mKeyAction:I

    iget v2, p1, Lcom/adobe/air/KeyEventData;->mKeyCode:I

    iget v3, p1, Lcom/adobe/air/KeyEventData;->mUnicode:I

    iget-boolean v4, p1, Lcom/adobe/air/KeyEventData;->mAlt:Z

    iget-boolean v5, p1, Lcom/adobe/air/KeyEventData;->mShift:Z

    iget-boolean v6, p1, Lcom/adobe/air/KeyEventData;->mSym:Z

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/customHandler;->nativeOnKeyCallback(IIIZZZ)Z

    goto :goto_0

    .line 348
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/TouchEventData;

    .line 349
    invoke-static {}, Lcom/adobe/air/Entrypoints;->access$000()Lcom/adobe/air/customHandler;

    move-result-object v0

    iget v1, p1, Lcom/adobe/air/TouchEventData;->mTouchEventType:I

    iget v2, p1, Lcom/adobe/air/TouchEventData;->mXCoord:F

    iget v3, p1, Lcom/adobe/air/TouchEventData;->mYCoord:F

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mPressure:F

    iget v5, p1, Lcom/adobe/air/TouchEventData;->mPointerID:I

    iget v6, p1, Lcom/adobe/air/TouchEventData;->mContactX:F

    iget v7, p1, Lcom/adobe/air/TouchEventData;->mContactY:F

    iget-boolean v8, p1, Lcom/adobe/air/TouchEventData;->mIsPrimaryPoint:Z

    iget-object v9, p1, Lcom/adobe/air/TouchEventData;->mHistory:[F

    iget v10, p1, Lcom/adobe/air/TouchEventData;->mMetaState:I

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/customHandler;->nativeOnTouchCallback(IFFFIFFZ[FI)Z

    goto :goto_0

    .line 345
    :pswitch_4
    invoke-static {}, Lcom/adobe/air/Entrypoints;->access$000()Lcom/adobe/air/customHandler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/adobe/air/customHandler;->callTimeoutFunction(II)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/WindowEventData;

    .line 365
    invoke-virtual {p1}, Lcom/adobe/air/WindowEventData;->run()Z

    goto :goto_0

    .line 357
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x45f
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x465
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
