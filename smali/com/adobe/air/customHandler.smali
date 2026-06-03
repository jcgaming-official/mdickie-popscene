.class public Lcom/adobe/air/customHandler;
.super Landroid/os/Handler;
.source "customHandler.java"


# static fields
.field public static final ACTIVITY_WRAPPER_MSG_ID:I = 0x465

.field public static final CERTIFICATE_MSG_ID:I = 0x464

.field public static final GESTURE_MSG_ID:I = 0x466

.field public static final KEY_MSG_ID:I = 0x461

.field public static final PAN_MSG_ID:I = 0x462

.field public static final TIME_OUT_MSG_ID:I = 0x45f

.field public static final TOUCH_MSG_ID:I = 0x460

.field public static final WINDOW_MSG_ID:I = 0x463

.field public static mRunning:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public native callTimeoutFunction(II)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x45f

    if-ne v0, v1, :cond_0

    .line 36
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/air/customHandler;->callTimeoutFunction(II)V

    goto/16 :goto_0

    .line 38
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x460

    if-ne v0, v1, :cond_1

    .line 40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/TouchEventData;

    .line 41
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

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/customHandler;->nativeOnTouchCallback(IFFFIFFZ[FI)Z

    goto :goto_0

    .line 44
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x461

    if-ne v0, v1, :cond_2

    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/KeyEventData;

    .line 47
    iget v1, p1, Lcom/adobe/air/KeyEventData;->mKeyAction:I

    iget v2, p1, Lcom/adobe/air/KeyEventData;->mKeyCode:I

    iget v3, p1, Lcom/adobe/air/KeyEventData;->mUnicode:I

    iget-boolean v4, p1, Lcom/adobe/air/KeyEventData;->mAlt:Z

    iget-boolean v5, p1, Lcom/adobe/air/KeyEventData;->mShift:Z

    iget-boolean v6, p1, Lcom/adobe/air/KeyEventData;->mSym:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/customHandler;->nativeOnKeyCallback(IIIZZZ)Z

    goto :goto_0

    .line 49
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x462

    if-ne v0, v1, :cond_3

    .line 51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/PanEventData;

    .line 52
    iget-object v0, p1, Lcom/adobe/air/PanEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    iget v1, p1, Lcom/adobe/air/PanEventData;->mCurrentOrientation:I

    iget p1, p1, Lcom/adobe/air/PanEventData;->mKeyboardHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativePerformWindowPanning(II)Z

    goto :goto_0

    .line 54
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x463

    if-ne v0, v1, :cond_4

    .line 56
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/WindowEventData;

    .line 57
    invoke-virtual {p1}, Lcom/adobe/air/WindowEventData;->run()Z

    goto :goto_0

    .line 59
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x464

    if-ne v0, v1, :cond_5

    .line 61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/CertificateEventData;

    .line 62
    invoke-virtual {p1}, Lcom/adobe/air/CertificateEventData;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/adobe/air/CertificateEventData;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/air/customHandler;->nativeCheckCertificateError(JLjava/lang/String;)I

    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/adobe/air/CertificateEventData;->setResult(I)V

    goto :goto_0

    .line 65
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x466

    if-ne v0, v1, :cond_6

    .line 67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/gestures/GestureEventDataBase;

    .line 68
    invoke-interface {p1}, Lcom/adobe/air/gestures/GestureEventDataBase;->sendEvent()Z

    :cond_6
    :goto_0
    return-void
.end method

.method public native nativeCheckCertificateError(JLjava/lang/String;)I
.end method

.method public native nativeOnKeyCallback(IIIZZZ)Z
.end method

.method public native nativeOnTouchCallback(IFFFIFFZ[FI)Z
.end method
